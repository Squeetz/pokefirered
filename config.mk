# Default variables

GAME_VERSION  ?= FIRERED
GAME_REVISION ?= 0
GAME_LANGUAGE ?= ENGLISH
MODERN        ?= 0
COMPARE       ?= 0

# For gbafix
MAKER_CODE  := 01

# Version
TITLE       := POKEMON CLOVER
GAME_CODE   := BPC
BUILD_NAME  := clover

# Language
ifeq ($(GAME_LANGUAGE),ENGLISH)
BUILD_NAME  := $(BUILD_NAME)
GAME_CODE   := $(GAME_CODE)E
else
$(error unknown language $(GAME_LANGUAGE))
endif

# Modern GCC
ifeq ($(MODERN), 0)
  BUILD_NAME := $(BUILD_NAME)
else
  BUILD_NAME := $(BUILD_NAME)_modern
endif
