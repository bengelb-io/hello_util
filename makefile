# Compiler and flags
CC := gcc
AR := ar
CFLAGS := -Wall -Wextra -Iinclude -fPIC
LDFLAGS := -shared
SRC_DIR := src
BUILD_DIR := build
INCLUDE_DIR := include
PROJECT_NAME := hello_util
# Output names
STATIC_LIB := $(BUILD_DIR)/lib$(PROJECT_NAME).a
SHARED_LIB := $(BUILD_DIR)/lib${PROJECT_NAME}.so

# Source and object files
SRCS := $(wildcard $(SRC_DIR)/*.c)
OBJS := $(patsubst $(SRC_DIR)/%.c, $(BUILD_DIR)/%.o, $(SRCS))

# Default target
all: static shared

# Static library target
static: $(STATIC_LIB)

$(STATIC_LIB): $(OBJS)
	@mkdir -p $(BUILD_DIR)
	$(AR) rcs $@ $^

# Shared library target
shared: $(SHARED_LIB)

$(SHARED_LIB): $(OBJS)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(LDFLAGS) -o $@ $^

# Compile source files to object files
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up
clean:
	rm -rf $(BUILD_DIR)

.PHONY: all static shared clean
