#!/usr/bin/env python
# -*- coding: utf-8 -*-


import hashlib


user_password = raw_input("Enter secret code: ")
hashed_password = hashlib.md5(user_password).hexdigest()
correct_password = "3227765ec3fcaf4499830af0f5d82a7f"

# Storing MD5 hash of the password instead of actual password
# MD5 hashes are secure! They cannot be cracked at all!
if hashed_password == correct_password:
    print("Correct! Password is flag{%s}" % (user_password))
else:
    print("Boo! Wrong secret code!")
