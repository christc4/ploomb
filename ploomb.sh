#!/bin/sh

search_text="$( { xclip -o || xclip -o -selection clipboard; } | tr '[:upper:]' '[:lower:]')"

readonly search_text

search() {
    "$BROWSER" "https://google.com/search?q=$*"
}

wiki() {
	"$BROWSER" "https://en.wikipedia.org/wiki/$*"
}

mal() {
	"$BROWSER" "https://myanimelist.net/search/all?q=$*"
}

yab() {
	"$BROWSER" "https://chinese.yabla.com/chinese-english-pinyin-dictionary.php?define=$*"
}

yb() {
	"$BROWSER" "https://yellowbridge.com/chinese/sentsearch.php?word=$*"
}

web() {
    "$BROWSER" "$@"
}

ety() {
    "$BROWSER" "https://en.wiktionary.org/wiki/$*"
}

yt() {
	"$BROWSER" "https://www.youtube.com/results?search_query=$*"
}

__ask_action() {
    declare -F | awk '!/ __.+$/ {gsub("_", " ", $3); print $3}' |
        dmenu -p "Send ${search_text:0:30} to?" -i -l 50
}

__main() {
    if [ -n "${func:=$(__ask_action)}" ]; then
        "${func// /_}" "$search_text"
    fi
}

__main
