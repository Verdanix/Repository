#!/bin/sh
# Setup
clear
echo "What is the project's name?"
read NAME
echo "Ok! $NAME will be used!\n"

echo "What email should security concerns go to?"
read SECURITY_EMAIL
echo "Ok! $SECURITY_EMAIL will be used!\n"

echo "What email should contributor conduct issues go to?"
read CODE_OF_CONDUCT_EMAIL
echo "Ok! $CODE_OF_CONDUCT_EMAIL will be used!\n"

echo "Now replacing the placeholders in the repository\n..."

sed -i "s/\[NAME\]/$NAME/g" *.md


sed -i "s/\[SECURITY_EMAIL\]/$SECURITY_EMAIL/g" SECURITY.md
sed -i "s/\[CODE_OF_CONDUCT_EMAIL\]/$CODE_OF_CONDUCT_EMAIL/g" CODE_OF_CONDUCT.md

clear
echo "Successfully replaced the placeholders!"
echo "You still need to tailor the markdown files in the root repository though."
echo "Good luck developer! Press enter to exit the script"
read tmp
