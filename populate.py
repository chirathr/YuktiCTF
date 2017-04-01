#!/usr/bin/python
# -*- coding: utf-8 -*-

import datetime
import json
import os
import random

from CTFd import create_app
from CTFd.models import Teams, Solves, Challenges, WrongKeys, Keys, Awards

app = create_app()

USER_AMOUNT = 50
CHAL_AMOUNT = 23
AWARDS_AMOUNT = 5

challenges_json_file = os.path.join('data', 'chals.json')
fh = open(challenges_json_file)
c = json.load(fh)
fh.close()

challenge = {}
for i in c:
    challenge[int(i)] = c[i]

names_file = os.path.join('data', 'names.json')
fh = open(names_file)
names = json.load(fh)
fh.close()

hipsters = [
    'Ethnic', 'narwhal', 'pickled', 'Odd', 'Future', 'cliche', 'VHS', 'whatever',
    'Etsy', 'American', 'Apparel', 'kitsch', 'wolf', 'mlkshk', 'fashion', 'axe',
    'ethnic', 'banh', 'mi', 'cornhole', 'scenester', 'Echo', 'Park', 'Dreamcatcher',
    'tofu', 'fap', 'selvage', 'authentic', 'cliche', 'High', 'Life', 'brunch',
    'pork', 'belly', 'viral', 'XOXO', 'drinking', 'vinegar', 'bitters', 'Wayfarers',
    'gastropub', 'dreamcatcher', 'chillwave', 'Shoreditch', 'kale', 'chips', 'swag', 'street',
    'art', 'put', 'a', 'bird', 'on', 'it', 'Vice', 'synth',
    'cliche', 'retro', 'Master', 'cleanse', 'ugh', 'Austin', 'slow-carb', 'small',
    'batch', 'Hashtag', 'food', 'truck', 'deep', 'v', 'semiotics', 'chia',
    'normcore', 'bicycle', 'rights', 'Austin', 'drinking', 'vinegar', 'hella', 'readymade',
    'farm-to-table', 'Wes', 'Anderson', 'put', 'a', 'bird', 'on', 'it',
    'freegan', 'Synth', 'lo-fi', 'food', 'truck', 'chambray', 'Shoreditch', 'cliche',
    'kogiSynth', 'lo-fi', 'fap', 'single-origin', 'coffee', 'brunch', 'butcher', 'Pickled',
    'Etsy', 'locavore', 'forage', 'pug', 'stumptown', 'occupy', 'PBR&B', 'actually',
    'shabby', 'chic', 'church-key', 'disrupt', 'lomo', 'hoodie', 'Tumblr', 'biodiesel',
    'Pinterest', 'butcher', 'Hella', 'Carles', 'pour-over', 'YOLO', 'VHS', 'literally',
    'Selvage', 'narwhal', 'flexitarian', 'wayfarers', 'kitsch', 'bespoke', 'sriracha', 'Banh',
    'mi', '8-bit', 'cornhole', 'viral', 'Tonx', 'keytar', 'gastropub', 'YOLO',
    'hashtag', 'food', 'truck', '3', 'wolf', 'moonFingerstache', 'flexitarian', 'craft',
    'beer', 'shabby', 'chic', '8-bit', 'try-hard', 'semiotics', 'Helvetica', 'keytar',
    'PBR', 'four', 'loko', 'scenester', 'keytar', '3', 'wolf', 'moon',
    'sriracha', 'gluten-free', 'literally', 'try-hard', 'put', 'a', 'bird', 'on',
    'it', 'cornhole', 'blog', 'fanny', 'pack', 'Mumblecore', 'pickled', 'distillery',
    'butcher', 'Ennui', 'tote', 'bag', 'letterpress', 'disrupt', 'keffiyeh', 'art',
    'party', 'aesthetic', 'Helvetica', 'stumptown', 'Wes', 'Anderson', 'next', 'level',
    "McSweeney's", 'cornhole', 'Schlitz', 'skateboard', 'pop-up', 'Chillwave', 'biodiesel', 'semiotics',
    'seitan', 'authentic', 'bicycle', 'rights', 'wolf', 'pork', 'belly', 'letterpress',
    'locavore', 'whatever', 'fixie', 'viral', 'mustache', 'beard', 'Hashtag', 'sustainable',
    'lomo', 'cardigan', 'lo-fiWilliamsburg', 'craft', 'beer', 'bitters', 'iPhone', 'gastropub',
    'messenger', 'bag', 'Organic', 'post-ironic', 'fingerstache', 'ennui', 'banh', 'mi',
    'Art', 'party', 'bitters', 'twee', 'bespoke', 'church-key', 'Intelligentsia', 'sriracha',
    'Echo', 'Park', 'Tofu', 'locavore', 'street', 'art', 'freegan', 'farm-to-table',
    'distillery', 'hoodie', 'swag', 'ugh', 'YOLO', 'VHS', 'Cred', 'hella',
    'readymade', 'distillery', 'Banh', 'mi', 'Echo', 'Park', "McSweeney's,", 'mlkshk',
    'photo', 'booth', 'swag', 'Odd', 'Future', 'squid', 'Tonx', 'craft',
    'beer', 'High', 'Life', 'tousled', 'PBR', 'you', 'probably', "haven't",
    'heard', 'of', 'them', 'locavore', 'PBR&B', 'street', 'art', 'pop-up',
]
emails = [
    '@gmail.com',
    '@yahoo.com',
    '@outlook.com',
    '@hotmail.com',
    '@mailinator.com',
]


def gen_name():
    return random.choice(names)


def get_desc(idx):
    c = challenge[idx]
    return c['desc']


def get_hint(idx):
    c = challenge[idx]
    return c['hint']


def get_flag(idx):
    c = challenge[idx]
    return c['flag']


def gen_email():
    return random.choice(emails)


def get_category(idx):
    c = challenge[idx]
    return c['category']


def get_value(idx):
    c = challenge[idx]
    return c['value']


def get_name(idx):
    c = challenge[idx]
    return c['name']


def gen_word():
    return random.choice(hipsters)


def random_date(start, end):
    return start + datetime.timedelta(
        seconds=random.randint(0, int((end - start).total_seconds())))


if __name__ == '__main__':
    with app.app_context():
        db = app.db

        # Generating Challenges
        print("GENERATING CHALLENGES")
        for x in range(1, len(challenge)+1):
            db.session.add(Challenges(get_name(x), get_desc(x), get_value(x), get_category(x), get_hint(x)))
            db.session.commit()
            db.session.add(Keys(x, get_flag(x), 0))
            db.session.commit()
        db.session.close()
        # Generating Users
        print("GENERATING USERS")
        used = []
        count = 0
        while count < USER_AMOUNT:
            name = gen_name()
            if name not in used:
                used.append(name)
                team = Teams(None, None, None, None, None, name, name.lower() + gen_email(), 'password', 's')
                team.verified = True
                db.session.add(team)
                count += 1

        db.session.commit()

        # Generating Solves
        print("GENERATING SOLVES")
        for x in range(USER_AMOUNT):
            used = []
            base_time = datetime.datetime.utcnow() + datetime.timedelta(minutes=-10000)
            for y in range(random.randint(1, CHAL_AMOUNT)):
                chalid = random.randint(1, CHAL_AMOUNT)
                if chalid not in used:
                    used.append(chalid)
                    solve = Solves(chalid, x + 1, '127.0.0.1', gen_word())

                    new_base = random_date(base_time, base_time + datetime.timedelta(minutes=random.randint(30, 60)))
                    solve.date = new_base
                    base_time = new_base

                    db.session.add(solve)

        db.session.commit()

        # Generating Awards
        print("GENERATING AWARDS")
        for x in range(USER_AMOUNT):
            base_time = datetime.datetime.utcnow() + datetime.timedelta(minutes=-10000)
            for _ in range(random.randint(0, AWARDS_AMOUNT)):
                award = Awards(x + 1, gen_word(), random.randint(-10, 10))
                new_base = random_date(base_time, base_time + datetime.timedelta(minutes=random.randint(30, 60)))
                award.date = new_base
                base_time = new_base

                db.session.add(award)

        db.session.commit()

        # Generating Wrong Keys
        print("GENERATING WRONG KEYS")
        for x in range(USER_AMOUNT):
            used = []
            base_time = datetime.datetime.utcnow() + datetime.timedelta(minutes=-10000)
            for y in range(random.randint(1, CHAL_AMOUNT * 20)):
                chalid = random.randint(1, CHAL_AMOUNT)
                if chalid not in used:
                    used.append(chalid)
                    wrong = WrongKeys(x + 1, chalid, gen_word())

                    new_base = random_date(base_time, base_time + datetime.timedelta(minutes=random.randint(30, 60)))
                    wrong.date = new_base
                    base_time = new_base

                    db.session.add(wrong)

        db.session.commit()
