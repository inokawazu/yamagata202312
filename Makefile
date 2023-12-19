# Directories
BUILD_DIR := build


# Source file
SOURCE_FILE := presentation.md

# Output file
OUTPUT_FILE := $(BUILD_DIR)/presentation.pdf

ANIMATION_FLAG := $(BUILD_DIR)/animation_flag

# Pandoc options
PANDOC_OPTIONS := --pdf-engine=xelatex --slide-level=2 -s -t beamer+raw_tex

all: $(OUTPUT_FILE)

.PHONY: all clean

$(ANIMATION_FLAG): figures/Tensor_Dance_V2.gif
	@mkdir -p $(BUILD_DIR)
	convert figures/Tensor_Dance_V2.gif $(BUILD_DIR)/tensor_dance_v2-%0d.png
	@touch $(ANIMATION_FLAG)

$(OUTPUT_FILE): $(SOURCE_FILE) $(ANIMATION_FLAG)
	@mkdir -p $(BUILD_DIR)
	pandoc --output=$(OUTPUT_FILE) $(PANDOC_OPTIONS) $(SOURCE_FILE)

clean:
	@rm -rf $(BUILD_DIR)
