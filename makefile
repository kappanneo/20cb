clean:
	rm -f *.pdf
	rm -f */*.pdf

20th_Century_Boys_v%/:
	unzip -n 20th\ Century\ Boys\ vol.\ $*.zip 
	mv 20th_Century_Boys_v$** 20th_Century_Boys_v$*

20th_Century_Boys_v%.pdf: 20th_Century_Boys_v%/
	./convert.sh $*
	pdftk 20th_Century_Boys_v$*/*.pdf cat output $@

