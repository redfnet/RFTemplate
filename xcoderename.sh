#!/bin/bash
# Rename a fucking Xcode project since Xcode is a steaming pile.

# run this command before running this script:
#   brew install rename ack

git mv "$1" "$2"
git mv "$1Tests" "$2Tests"
git mv "$1.xcodeproj" "$2.xcodeproj"

# may need to run this a few times.
find . -name "$1*" -print0 | xargs -0 rename -S "$1" "$2"
ack --literal --files-with-matches "$1" | xargs sed -i "" "s/$1/$2/g"

find . -name "$1*" -print0 | xargs -0 rename -S "$1" "$2"
ack --literal --files-with-matches "$1" | xargs sed -i "" "s/$1/$2/g"

find . -name "$1*" -print0 | xargs -0 rename -S "$1" "$2"
ack --literal --files-with-matches "$1" | xargs sed -i "" "s/$1/$2/g"

# double-confirm.  no output means success.
ack --literal "$1"
