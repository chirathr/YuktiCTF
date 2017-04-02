var crypto = require('crypto');
module.exports = function (grunt) {
    'use strict';

    grunt.initConfig({
        game: grunt.file.readJSON('package.json'),
        aws_s3: {
            production: {
                options: {
                    gzipRename: 'ext'
                },
                files: [
                    {expand: true, cwd: '_build/dist', src: ['**'], dest: '<%= game.name %>/'}
                ]
            }
        },
        awsebtdeploy: {
            server: {
                options: {}
            }
        },
        clean: {
            compressed: ['_build/dist/assets/**/*.{ogg,m4a,mp3,atlas,json}']
        },
        copy: {
            icon: {
                files: [
                    {expand: true, cwd: 'assets', dest: '_build/dist/assets', src: ['icon.png']}
                ]
            }
        },
        // use custom extension for the output file
        compress: {
            amazon: {
                options: {
                    mode: 'gzip'
                },
                files: [
                    // Each of the files in the src/ folder will be output to
                    // the dist/ folder each with the extension .gz.js
                    {expand: true, extDot: 'last', src: ['_build/dist/assets/**/*.ogg'], ext: '.ogg.gz'},
                    {expand: true, extDot: 'last', src: ['_build/dist/assets/**/*.mp3'], ext: '.mp3.gz'},
                    {expand: true, extDot: 'last', src: ['_build/dist/assets/**/*.m4a'], ext: '.m4a.gz'},
                    {expand: true, extDot: 'last', src: ['_build/dist/assets/**/*.atlas'], ext: '.atlas.gz'},
                    {expand: true, extDot: 'last', src: ['_build/dist/assets/**/*.json'], ext: '.json.gz'}
                ]
            }
        }
    });

    /**
     * This can decrypt a databag with a given password.
     * We do this for deploy/cname registration to get the user/pass for aws/cloudflare in the simplest possible secure way
     *
     * @param databag
     * @param password
     * @returns {*}
     */
    function decryptDataBag(databag, password) {
        var decipher = crypto.createDecipher('aes-256-cbc', password);

        var decrypted = decipher.update(databag, 'hex');
        decrypted += decipher.final('utf8');

        return decrypted;
    }

    /**
     * Used for pushing the code to AWS
     */
    grunt.registerTask('deploy', "Upload the game to Amazon s3 bucket", function () {
        //Setup the required variables, get them from the commandline parameters
        var databag = grunt.option('databag'),
            password = grunt.option('password'),
            bucket = grunt.option('bucket'),
            region = grunt.option('region'),
            publisher = grunt.option('publisher'),
            folderIn = grunt.option('in'),
            folderOut = grunt.option('out');


        if (undefined === databag) {
            grunt.fail.warn('Can not deploy without an databag containing a user and password');
        }

        if (undefined === password) {
            grunt.fail.warn('Can not deploy without an password to decrypt the databag');
        }

        if (undefined === bucket || undefined === region) {
            grunt.fail.warn('You didnt specify a bucket/region, so I have no idea where to upload to..');
        }

        if (publisher !== undefined && publisher === 'yes') {
            grunt.config.set('aws_s3.production.files', [
                {expand: true, cwd: '_build/dist', src: ['**'], dest: ''}
            ]);
        }

        //Decrypt the databag
        var decryptedData = null;
        try {
            decryptedData = JSON.parse(decryptDataBag(databag, password));
        } catch (e) {
            grunt.fail.warn('Unable to decrypt databag!');
        }

        if (!decryptedData.hasOwnProperty('aws')) {
            grunt.fail.warn('Databag was decrypted but has incorrect data!');
        }

        //Set the config
        grunt.config.set('aws_s3.options.accessKeyId', decryptedData.aws.user);
        grunt.config.set('aws_s3.options.secretAccessKey', decryptedData.aws.pass);
        grunt.config.set('aws_s3.options.region', region);
        grunt.config.set('aws_s3.production.options.bucket', bucket);

        if (undefined !== folderIn) {
            if (undefined === folderOut) {
                grunt.fail.warn('No use in specifiying "in" without "out"');
            }

            grunt.config.set('aws_s3.production.files', [
                {expand: true, cwd: folderIn, src: ['**'], dest: folderOut}
            ]);
        } else if (undefined !== folderOut) {
            grunt.fail.warn('No use in specifiying "out" without "in"');
        }

        //Upload to S3
        grunt.task.run('copy:icon');
        grunt.task.run('compress:amazon');
        grunt.task.run('clean:compressed');
        grunt.task.run('aws_s3:production');
    });

    grunt.registerTask('deployServer', "Upload a generic server package to an Elastic Beanstalk environment", function () {
        //Setup the required variables, get them from the commandline parameters
        var databag = grunt.option('databag'),
            password = grunt.option('password'),
            bucket = grunt.option('bucket'),
            region = grunt.option('region'),
            applicationName = grunt.option('application'),
            environmentCNAME = grunt.option('environment'),
            version = grunt.option('versionNumber'),
            fileName = grunt.option('fileName');

        if (undefined === databag) {
            grunt.fail.warn('Can not deploy without an databag containing a user and password');
        }

        if (undefined === password) {
            grunt.fail.warn('Can not deploy without an password to decrypt the databag');
        }

        if (undefined === bucket || undefined === region) {
            grunt.fail.warn('You didnt specify a bucket/region, so I have no idea where to upload to..');
        }

        if (undefined === applicationName || undefined === environmentCNAME) {
            grunt.fail.warn('You didnt specify a apllication/environment, so I have no idea which EB to tag...');
        }

        if (undefined === fileName) {
            grunt.fail.warn('You didnt specify a file!, what to do now?');
        }

        //Decrypt the databag
        var decryptedData = null;
        try {
            decryptedData = JSON.parse(decryptDataBag(databag, password));
        } catch (e) {
            grunt.fail.warn('Unable to decrypt databag!');
        }

        if (!decryptedData.hasOwnProperty('aws')) {
            grunt.fail.warn('Databag was decrypted but has incorrect data!');
        }

        //Set the config
        grunt.config.set('awsebtdeploy.server.options.accessKeyId', decryptedData.aws.user);
        grunt.config.set('awsebtdeploy.server.options.secretAccessKey', decryptedData.aws.pass);
        grunt.config.set('awsebtdeploy.server.options.region', region);
        grunt.config.set('awsebtdeploy.server.options.applicationName', applicationName);
        grunt.config.set('awsebtdeploy.server.options.environmentCNAME', environmentCNAME);
        grunt.config.set('awsebtdeploy.server.options.s3.bucket', bucket);
        grunt.config.set('awsebtdeploy.server.options.versionLabel', fileName + '-' + version);
        grunt.config.set('awsebtdeploy.server.options.s3.key', '<%= game.name %>/' + version + '/' + fileName + '.zip');
        grunt.config.set('awsebtdeploy.server.options.sourceBundle', fileName + '.zip');

        grunt.task.run('awsebtdeploy:server')
    });

    grunt.registerTask('create:config', 'Create a json file for the game that can be used to generate the website', function () {
        var gameName = grunt.config.get('game.name');
        var gameTitle = grunt.config.get('game.title');
        var gameDescription = grunt.config.get('game.description');
        var soon = grunt.option('comingSoon');

        var gameObject = {};
        var letter = gameName[0];
        var className = 'hashtag';

        if (isNaN(letter)) {
            className = letter;
        }

        gameObject[gameName] = {
            data: {
                title: gameTitle,
                description: gameDescription,
                layout: 'game.hbs',
                soon: soon,
                class: className,
                gamecoll: 'true',
                thumb: 'images/icons/' + gameName + '.png',
                url: 'http://' + gameName + '.fbrq.io/' + gameName + '/index.html'
            }
        };

        try {
            grunt.file.copy('assets/icon.png', gameName + '.png');
        } catch (e) {
            //fail silently
        }
        grunt.file.write(gameName + '.json', JSON.stringify(gameObject));
    });

    /**
     * This Checks if a subdomain is registered at cloudflare or not, and adds it if it isn't registered
     */
    grunt.registerTask('setCname', "Set a CNAME at CloudFlare", function () {
        //Setup the required variables, get them from the commandline parameters
        var databag = grunt.option('databag'),
            password = grunt.option('password'),
            zone = grunt.option('zone'),
            location = grunt.option('location');

        if (undefined === databag) {
            grunt.fail.warn('Can not deploy without an databag containing a user and password');
        }

        if (undefined === password) {
            grunt.fail.warn('Can not deploy without an password to decrypt the databag');
        }

        if (undefined === zone) {
            grunt.fail.warn('You didnt specify a CloudFlare zone, so I have no idea where to set the CNAME record..');
        }

        if (undefined === location) {
            grunt.fail.warn('You didnt specify a location to point the CNAME record to.');
        }

        //Decrypt the databag
        var decryptedData = null;
        try {
            decryptedData = JSON.parse(decryptDataBag(databag, password));
        } catch (e) {
            grunt.fail.warn('Unable to decrypt databag!');
        }

        if (!decryptedData.hasOwnProperty('aws')) {
            grunt.fail.warn('Databag was decrypted but has incorrect data!');
        }

        //Set the config
        grunt.initConfig({
            game: grunt.file.readJSON('package.json'),
            http: {
                getCname: {
                    options: {
                        url: 'https://api.cloudflare.com/client/v4/zones/' + zone + '/dns_records?name=<%= game.name %>.fbrq.io',
                        method: 'GET',
                        headers: {
                            'X-Auth-Email': decryptedData.cloudflare.user,
                            'X-Auth-Key': decryptedData.cloudflare.pass,
                            'Content-Type': 'application/json'
                        }
                    }
                },
                setCname: {
                    options: {
                        url: 'https://api.cloudflare.com/client/v4/zones/' + zone + '/dns_records',
                        method: 'POST',
                        headers: {
                            'X-Auth-Email': decryptedData.cloudflare.user,
                            'X-Auth-Key': decryptedData.cloudflare.pass,
                            'Content-Type': 'application/json'
                        },
                        body: '{"type":"CNAME","name":"<%= game.name %>.fbrq.io","content":"' + location + '","ttl":120,"proxied":true}'
                    }
                }
            }
        });

        grunt.config.set('http.getCname.options.callback', function (error, resp, body) {
            var data = JSON.parse(body);

            if (data.result.length === 0) {
                grunt.log.ok('No CNAME record for this game yet, adding..');
                grunt.task.run('http:setCname');
            } else {
                grunt.log.ok('CNAME record for game found, continueing without doing anything...');
            }
        });

        grunt.config.set('http.setCname.options.callback', function (error, resp, body) {
            grunt.log.ok('CNAME record for game added!');
        });


        //First we get check if the CNAME already exists
        grunt.task.run('http:getCname');

    });
    grunt.loadNpmTasks('grunt-aws-s3');
    grunt.loadNpmTasks('grunt-awsebtdeploy');
    grunt.loadNpmTasks('grunt-http');
    grunt.loadNpmTasks('grunt-contrib-compress');
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-contrib-copy');
};
