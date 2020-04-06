#!/usr/bin/env bash

if [ x"$@" = x"quit" ]
then
    exit 0
fi

# Override the previously set prompt.
echo -en "\x00delim\x1f\\x1\n"
echo -en "\x00prompt\x1fChange prompt\x1"
for a in {1..10}
do
    echo -en "$a\x1"
done
echo -en "newline\ntest\x1"
echo -en "quit"