#!/bin/bash
for chap in $1/*/; do convert $chap* ${chap%%\[*}.pdf ; done

