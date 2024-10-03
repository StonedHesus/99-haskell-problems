.PHONY: build run clean

SRC := "./src"
BUILD := "./build"

CC := "ghc"

build:
	@mkdir -p $(BUILD)
	@$(CC) $(SRC)/main.hs
	@find $(SRC) -type f ! -name "*.hs" -exec mv {} $(BUILD) \;
run:
	@test -d $(BUILD_DIR) && ./build/main
clean:
	@test -d $(BUILD_DIR) &&  rm -rf $(BUILD) 

