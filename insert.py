#!/usr/bin/python
# -*- coding: utf-8 -*-

import json
import os
import random

from CTFd import create_app
from CTFd.models import Challenges, Keys, MentorStudent, Teams

app = create_app()

challenges_json_file = os.path.join('data', 'chals.json')
fh = open(challenges_json_file)
c = json.load(fh)
fh.close()

challenge = {}
for i in c:
    challenge[int(i)] = c[i]

boys_names = json.load(open('data/boys.json'))
girls_names = json.load(open('data/girls.json'))
univ_names = json.load(open('data/univs.json'))
data_file = os.path.join('data', 'data.json')
fh = open(data_file)
data = json.load(fh)
fh.close()


def get_hint(idx):
    c = challenge[idx]
    return c['hint']


def get_flag(idx):
    c = challenge[idx]
    return c['flag']


def get_category(idx):
    c = challenge[idx]
    return c['category']


def get_desc(idx):
    c = challenge[idx]
    return c['desc']


def get_name(idx):
    c = challenge[idx]
    return c['name']


def get_value(idx):
    c = challenge[idx]
    return c['value']


if __name__ == '__main__':
    with app.app_context():
        db = app.db

        # Generating Challenges
        print("Inserting challenges")
        for x in sorted(challenge.keys()):
            db.session.add(Challenges(get_name(x), get_desc(x), get_value(x),
                                      get_category(x), get_hint(x)))
            db.session.commit()
            db.session.add(Keys(x, get_flag(x), 0))
            db.session.commit()
        db.session.close()
        # Generating Users
        print("Inserting users")
        for _ in xrange(50):
            user = random.choice(girls_names)
            girls_names.pop(girls_names.index(user))
            univ = random.choice(univ_names)
            year = random.choice([1, 4])
            db.session.add(Teams(user, univ[0], year, univ[1], "M", user,
                           user + '@gmail.com', user, "S"))

        for _ in xrange(50):
            user = random.choice(boys_names)
            boys_names.pop(boys_names.index(user))
            univ = random.choice(univ_names)
            year = random.choice([1, 4])
            db.session.add(Teams(user, univ[0], year, univ[1], "F", user,
                           user + '@gmail.com', user, "S"))

        for _ in xrange(5):
            user = random.choice(boys_names)
            boys_names.pop(boys_names.index(user))
            univ = random.choice(univ_names)
            db.session.add(Teams(user, univ[0], 2017, univ[1], "M", user,
                           user + '@gmail.com', user, "M"))

        for _ in xrange(5):
            user = random.choice(girls_names)
            girls_names.pop(girls_names.index(user))
            univ = random.choice(univ_names)
            db.session.add(Teams(user, univ[0], 2017, univ[1], "F", user,
                           user + '@gmail.com', user, "M"))

        for user in sorted(data["admins"]):
            gender = random.choice(["M", "F"])
            db.session.add(Teams(user, "MeitY", 2017, "Delhi", gender, user,
                           user + '@gmail.com', user, "A"))

        db.session.commit()

        print("Inserting mentor-student relation")
        player_count = len(data["players"])
        for ind in xrange(len(data['players'])):
            db.session.add(MentorStudent(ind + 1, (ind/10) + player_count))

        db.session.commit()
