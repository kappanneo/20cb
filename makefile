.SECONDARY:

all: edit0_01 \
     edit0_02 \
     edit0_03 \
     edit1_04 \
     edit1_05 \
     edit1_06 \
     edit1_07 \
     edit1_08 \
     edit1_09 \
     edit1_10 \
     edit1_11 \
     edit1_12 \
     edit0_13 \
     edit0_14 \
     edit1_15 \
     compile_16 \
     compile_17 \
     edit0_18 \
     compile_19 \
     compile_20 \
     compile_21 \
     compile_22 ;

edit0_%: 20th_Century_Boys_v%/
	gm mogrify -crop 850x1200 -resize "890x1200!" 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg || true
	rm --force 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm --force 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p004-005.jpg
	make compile_$*

edit1_%: 20th_Century_Boys_v%/
	gm mogrify -resize "890x1200!" 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg || true
	rm --force 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm --force 20th_Century_Boys_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p004-005.jpg
	make compile_$*

compile_% : 20th_Century_Boys_v%.pdf ;

20th_Century_Boys_v%.pdf: 20th_Century_Boys_v%/
	./convert.sh $*
	pdftk 20th_Century_Boys_v$*/*.pdf cat output $@

20th_Century_Boys_v%/:
	unzip -n 20th\ Century\ Boys\ vol.\ $*.zip 
	mv 20th_Century_Boys_v$** 20th_Century_Boys_v$*

clean_all: clean_01 \
           clean_02 \
           clean_03 \
           clean_04 \
           clean_05 \
           clean_06 \
           clean_07 \
           clean_08 \
           clean_09 \
           clean_10 \
           clean_11 \
           clean_12 \
           clean_13 \
           clean_14 \
           clean_15 \
           clean_16 \
           clean_17 \
           clean_18 \
           clean_19 \
           clean_20 \
           clean_21 \
           clean_22 ;

clean_%:
	rm --force 20th_Century_Boys_v$*.pdf
	rm --force -r 20th_Century_Boys_v$*/

recompile_all: recompile_01 \
               recompile_02 \
               recompile_03 \
               recompile_04 \
               recompile_05 \
               recompile_06 \
               recompile_07 \
               recompile_08 \
               recompile_09 \
               recompile_10 \
               recompile_11 \
               recompile_12 \
               recompile_13 \
               recompile_14 \
               recompile_15 \
               recompile_16 \
               recompile_17 \
               recompile_18 \
               recompile_19 \
               recompile_20 \
               recompile_21 \
               recompile_22 ;

recompile_%: 
	make delete_$* compile_$*

delete_%:
	rm --force 20th_Century_Boys_v$*.pdf

