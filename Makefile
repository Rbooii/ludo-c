CC      := gcc
CFLAGS  := -Wall -Wextra -O2
SRC     := ludo.c
BUILD   := build
TARGET  := $(BUILD)/ludo

.PHONY: all run clean

all: $(TARGET)

$(TARGET): $(SRC) | $(BUILD)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC)

$(BUILD):
	mkdir -p $(BUILD)

run: all
	./$(TARGET)

clean:
	rm -rf $(BUILD)