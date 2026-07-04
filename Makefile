CC := gcc
CFLAGS ?= -std=c11 -Wall -Wextra -pedantic -g -Iinclude
LDFLAGS ?=

BUILD_DIR := build
SRC_DIR := src
TARGET := $(BUILD_DIR)/zipper

ifeq ($(OS),Windows_NT)
TARGET := $(BUILD_DIR)/zipper.exe
endif

SOURCES := $(wildcard $(SRC_DIR)/*.c)
OBJECTS := $(SOURCES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%.o)

.PHONY: all clean run

all: $(TARGET)

$(TARGET): $(OBJECTS) | $(BUILD_DIR)
	$(CC) $(OBJECTS) -o $@ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c include/zipper.h | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

run: $(TARGET)
	$(TARGET)

clean:
	rm -rf $(BUILD_DIR)
