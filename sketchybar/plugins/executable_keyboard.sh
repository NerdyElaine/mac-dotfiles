#!/usr/bin/env sh

#
# Show current keyboard input source
#

# this is jank and ugly, I know
SOURCE="$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleSelectedInputSources | grep "KeyboardLayout Name" | cut -c 33- | rev | cut -c 2- | rev)"

# specify short layouts individually.
case ${SOURCE} in
"Dvorak") LABEL="DV" ;;
"\"U.S.\"") LABEL="US" ;;
"Workman") LABEL="WM" ;;
"Khmer") LABEL="KH" ;;
"Canadian - CSA") LABEL="FR" ;;
*) LABEL="한" ;;
esac

sketchybar --set $NAME label="$LABEL" icon='􀇳'
