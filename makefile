.SECONDARY:

# OBS! folders will be deleted on "make clear", do not set pre-existing folders
BUILD_DIR   = build
OUTPUT_DIR  = ~/Downloads/20cb
EXTRACT_DIR = /tmp/20cb
COVER_SIZE  = 890x1200

.PHONY: all
all: extract build
	make publish

.PHONY: build
build: build_v01_A \
       build_v02_A \
       build_v03_A \
       build_v04_B \
       build_v05_B \
       build_v06_B \
       build_v07_B \
       build_v08_B \
       build_v09_B \
       build_v10_B \
       build_v11_B \
       build_v12_B \
       build_v13_A \
       build_v14_A \
       build_v15_B \
       build_v16_C \
       build_v17_D \
       build_v18_A \
       build_v19_E \
       build_v20_E \
       build_v21_F \
       build_v22_F ;

.PHONY: build_v%
build_v%: $(BUILD_DIR)/vol% ;

$(BUILD_DIR)/vol%_A:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -crop 850x1200 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_A

$(BUILD_DIR)/vol%_B:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_B

$(BUILD_DIR)/vol%_C:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -crop 795x1200 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_C

$(BUILD_DIR)/vol%_D:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -crop 885x1200+515 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000a.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000b.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000c.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000d.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_D

$(BUILD_DIR)/vol%_E:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -crop 1025x1400 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.png
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_E

$(BUILD_DIR)/vol%_F:
	rm -f $(BUILD_DIR)/vol$*_* 
	mkdir -p $(BUILD_DIR)/20cb_v$*/
	cp -r -t $(BUILD_DIR)/20cb_v$*/ $(EXTRACT_DIR)/20cb_v$*/*
	gm mogrify -crop 1035x1400+600 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000a.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000b.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000c.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001-002.png
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/vol$*_F

$(EXTRACT_DIR)/20cb_v%/:
	unzip -n \
		src/20th\ Century\ Boys/20th\ Century\ Boys\ vol.\ $*.zip \
		-d $(EXTRACT_DIR)/
	cp -r $(EXTRACT_DIR)/20th_Century_Boys_v$** $(EXTRACT_DIR)/20cb_v$*

.PHONY: extract_%
extract_%: $(EXTRACT_DIR)/20cb_v%/ ;

.PHONY: extract
extract: extract_01 \
         extract_02 \
         extract_03 \
         extract_04 \
         extract_05 \
         extract_06 \
         extract_07 \
         extract_08 \
         extract_09 \
         extract_10 \
         extract_11 \
         extract_12 \
         extract_13 \
         extract_14 \
         extract_15 \
         extract_16 \
         extract_17 \
         extract_18 \
         extract_19 \
         extract_20 \
         extract_21 \
         extract_22 ;

$(BUILD_DIR)/20cb_v%.pdf: $(BUILD_DIR)/20cb_v%/
	@ echo "> compiling vol. $*:"
	./convert_all.sh $(BUILD_DIR)/20cb_v$*
	pdftk $(BUILD_DIR)/20cb_v$*/*.pdf cat output $@
	@ echo " ... vol. $* compiled!"

.PHONY: publish_%
publish_%: $(OUTPUT_DIR)/ $(BUILD_DIR)/20cb_v%.pdf
	@ echo  "> publishing vol. $*:"
	@ cp $(BUILD_DIR)/20cb_v$*.pdf $(OUTPUT_DIR)/20th\ Century\ Boys\ vol.\ $*.pdf \
		&& echo " ... vol. $* published to $(OUTPUT_DIR)/" \
		|| echo " ... skipping unbuilt volume."

.PHONY: publish
publish: publish_01 \
         publish_02 \
         publish_03 \
         publish_04 \
         publish_05 \
         publish_06 \
         publish_07 \
         publish_08 \
         publish_09 \
         publish_10 \
         publish_11 \
         publish_12 \
         publish_13 \
         publish_14 \
         publish_15 \
         publish_16 \
         publish_17 \
         publish_18 \
         publish_19 \
         publish_20 \
         publish_21 \
         publish_22 ;

$(BUILD_DIR)/:
	mkdir $(BUILD_DIR)

$(EXTRACT_DIR)/:
	mkdir $(EXTRACT_DIR)

$(OUTPUT_DIR)/:
	mkdir $(OUTPUT_DIR)

.PHONY: clean_build_dir
clean_build_dir:
	rm -f -r $(BUILD_DIR)/

.PHONY: clean_extract_dir
clean_extract_dir:
	rm -f -r $(EXTRACT_DIR)/

.PHONY: clean_output_dir
clean_output_dir:
	rm -f -r $(OUTPUT_DIR)/

.PHONY: clean
clean: clean_build_dir \
       clean_extract_dir \
       clean_output_dir ;

