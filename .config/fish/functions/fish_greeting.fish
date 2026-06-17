#!/usr/bin/env fish

function fish_greeting
    set greetings \
        "Welcome back, Ka" \
        "Ready when you are" \
        "Lock in" \
        "Ligma" \
        "Necessity is the mother of invention"
    echo -n (random choice $greetings)
end