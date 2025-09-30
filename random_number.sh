#!/bin/bash

echo "length of the password id $1"

Password=$(tr -dc 'A-Za-z0-9!@#$%^&*()_+' </dev/urandom | head -c $1)

echo "password is $Password"

