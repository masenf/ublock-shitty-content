#!/bin/sh

# DuckDuckGo
awk '{
    se="duckduckgo.com##.result[data-domain$=\""$1"\"]";
    print se
}' searchfilter.txt > ddg.txt

# Ecosia
awk '{
    se="ecosia.*##.g:has(a[href*=\""$1"\"])\necosia.*##a[href*=\""$1"\"]:nth-ancestor(1)";
    print se
}' searchfilter.txt > ecosia.txt

# Google
awk '{
    se="google.*##.g:has(a[href*=\""$1"\"])\ngoogle.*##a[href*=\""$1"\"]:nth-ancestor(1)";
    print se
}' searchfilter.txt > google.txt
