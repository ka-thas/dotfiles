#!/usr/bin/env fish

function fish_greeting
    set greetings \
        "Welcome back, Ka" \
        "Ready when you are" \
        "Lock in" \
        "Ligma" \
        "Howdy" \
        "Full Cowboy" \
        "Inner peace... dinner please..." \
        "Quit, don't quit, noodles" \
        "안녕하세요" \
        "화이팅!" \
        "( ´ ∀ `)ノ～ ♡" \
        "Necessity is the mother of invention"
    echo -n (random choice $greetings)
end

# https://www.emoticonstext.com/
# https://emojidb.org/cute-japanese-emojis