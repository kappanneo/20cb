clean:
	rm -f *.pdf
	rm -f */*.pdf

20th_Century_Boys_v%.pdf: 
	./convert.sh $*
	pdftk 20th_Century_Boys_v$*/*.pdf cat output $@