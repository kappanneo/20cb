#!/bin/bash
for chap in 20th_Century_Boys_v$1/*/; do convert $chap* ${chap%%\[*}.pdf ; done

