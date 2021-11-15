.SECONDARY:

# OBS! folders will be deleted on "make clear", do not set pre-existing folders
BUILD_DIR   = build
EXTRACT_DIR = /tmp/20cb
OUTPUT_DIR  = ~/Downloads/20cb
COVER_SIZE  = 890x1200

all: extract_all build_all publish_all

build_all: $(BUILD_DIR)/01_A \
           $(BUILD_DIR)/02_A \
           $(BUILD_DIR)/03_A \
           $(BUILD_DIR)/04_B \
           $(BUILD_DIR)/05_B \
           $(BUILD_DIR)/06_B \
           $(BUILD_DIR)/07_B \
           $(BUILD_DIR)/08_B \
           $(BUILD_DIR)/09_B \
           $(BUILD_DIR)/10_B \
           $(BUILD_DIR)/11_B \
           $(BUILD_DIR)/12_B \
           $(BUILD_DIR)/13_A \
           $(BUILD_DIR)/14_A \
           $(BUILD_DIR)/15_B \
           $(BUILD_DIR)/16_C \
           $(BUILD_DIR)/17_D \
           $(BUILD_DIR)/18_A \
           $(BUILD_DIR)/19_E \
           $(BUILD_DIR)/20_E \
           $(BUILD_DIR)/21_F \
           $(BUILD_DIR)/22_F ;

$(BUILD_DIR)/%_A:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -crop 850x1200 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_A

$(BUILD_DIR)/%_B:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_B

$(BUILD_DIR)/%_C:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -crop 795x1200 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_C

$(BUILD_DIR)/%_D:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -crop 885x1200+515 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000a.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000b.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000c.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000d.jpg
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_D

$(BUILD_DIR)/%_E:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -crop 1025x1400 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p002.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.png
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_E

$(BUILD_DIR)/%_F:
	rm -f $(BUILD_DIR)/$*_* 
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/
	gm mogrify -crop 1035x1400+600 -resize "$(COVER_SIZE)!" \
		$(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000a.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01credits.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000b.jpg
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p000c.png
	rm -f $(BUILD_DIR)/20cb_v$*/20cb_v$*_c01*/20th\ Century\ Boys\ v$*c01p001-002.png
	rm -f $(BUILD_DIR)/20cb_v$*.pdf
	make $(BUILD_DIR)/20cb_v$*.pdf && touch $(BUILD_DIR)/$*_F

extract_%: $(EXTRACT_DIR)/20cb_v%/ ;

$(EXTRACT_DIR)/20cb_v%/:
	unzip -n \
		src/20th\ Century\ Boys/20th\ Century\ Boys\ vol.\ $*.zip \
		-d $(EXTRACT_DIR)/
	cp -r $(EXTRACT_DIR)/20th_Century_Boys_v$** $(EXTRACT_DIR)/20cb_v$*

extract_all: extract_01 \
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

$(BUILD_DIR)/20cb_v%/: $(EXTRACT_DIR)/20cb_v%/
	cp -r $(EXTRACT_DIR)/20cb_v$* $(BUILD_DIR)/

publish_%: $(OUTPUT_DIR)/ $(BUILD_DIR)/20cb_v%.pdf
	@ echo  "> publishing vol. $*:"
	@ cp $(BUILD_DIR)/20cb_v$*.pdf $(OUTPUT_DIR)/20th\ Century\ Boys\ vol.\ $*.pdf \
		&& echo " ... vol. $* published to $(OUTPUT_DIR)/" \
		|| echo " ... skipping unbilt volume."

publish_all: publish_01 \
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

.PHONY: clean
clean:
	rm -f -r $(BUILD_DIR)/
	rm -f -r $(EXTRACT_DIR)/
	rm -f -r $(OUTPUT_DIR)/
