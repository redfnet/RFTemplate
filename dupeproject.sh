#!/bin/bash
# Rename a fucking Xcode project since Xcode is a steaming pile.

# run this command before running this script:
#   brew install rename ack

mkdir "$1"

cp -R RFTemplate/RFTemplate "$1"
cp -R RFTemplate/RFTemplateTests "$1"
cp -R RFTemplate/RFTemplate.xcodeproj "$1"
cp RFTemplate/.gitignore "$1"
cp RFTemplate/README.md "$1"

cd "$1"

mv "RFTemplate" "$1"
mv "RFTemplateTests" "$1Tests"
mv "RFTemplate.xcodeproj" "$1.xcodeproj"

# may need to run this a few times.
find . -name "RFTemplate*" -print0 | xargs -0 rename -S "RFTemplate" "$1"
ack --literal --files-with-matches "RFTemplate" | xargs sed -i "" "s/RFTemplate/$1/g"

find . -name "RFTemplate*" -print0 | xargs -0 rename -S "RFTemplate" "$1"
ack --literal --files-with-matches "RFTemplate" | xargs sed -i "" "s/RFTemplate/$1/g"

find . -name "RFTemplate*" -print0 | xargs -0 rename -S "RFTemplate" "$1"
ack --literal --files-with-matches "RFTemplate" | xargs sed -i "" "s/RFTemplate/$1/g"

# double-confirm.  no output means success.
ack --literal "RFTemplate"

git init
git config user.email "brandon@redf.net"
git config user.name "Brandon Sneed"
git add .gitignore
git add README.md
git add "$1"
git add "$1.xcodeproj"
git add "$1Tests"
git commit --all -m "Template applied."

exit 0