SRC_DIR := ./src
OUT_DIR := ./out
SRCS := $(wildcard $(SRC_DIR)/*.md)
OUTS := $(patsubst $(SRC_DIR)/%.md,$(OUT_DIR)/%.pdf,$(SRCS))

all: $(OUTS)
clean:
	rm -r $(OUT_DIR)
.PHONY: all clean

$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.md $(OUT_DIR)
	pandoc -d pandoc.yml $< -o $@
$(OUT_DIR):
	mkdir -p $@
