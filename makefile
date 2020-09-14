# This makefile was written by Kolotushkin Danil
# github: https://github.com/vrodedanya
#
# The makefile located one directory below root directory of your project. 
# If that is not you need comment string with 'addprefix'
#
# Edit variables below for you project

#---------------------------------------#

# Program name (ex: test, program)
NAME := 
# Compiler name (ex: gcc, g++, clang)
CC := 
# File extension (ex: .cpp, .c)
LANG := 
# Compiler flags (ex: -Wall, -O2, -g)
CFLAGS := 
# Linker flags (ex: -g )
LDFLAGS := 
# Libs (ex: -lm, -lncurses, -lSDL2)
LIBS :=
# Defines (ex: -D DEBUG, -Dcount=5)
DEF :=
# Directories with source code (ex: source)
DIR :=

#---------------------------------------#

# Comment this string if you don't use special directory for building project
SRC:=$(addprefix ../, $(DIR))
# And uncomment this
# SRC:=$(DIR)

# Storage template and path to the source files
SEARCH_FILE:=$(addsuffix /*$(LANG), $(SRC))

# Storages all source files with path
FILES:=$(wildcard $(SEARCH_FILE))

# Storages all object files
OBJ_FILES:=$(notdir $(patsubst %$(LANG), %.o, $(FILES)))

# Added directories from $(SRC) to directories which contain source code
VPATH:=$(SRC)

all: $(OBJ_FILES) 
	$(CC) $^ $(LIBS) $(LDFLAGS) -o $(NAME)

static_library: $(filter-out main.o, $(OBJ_FILES))
	ar cr lib$(NAME).a $^

# Creating object files
%.o: %$(LANG)
	$(CC) -c $(CFLAGS) $(DEF) -MD $<

clean:
	rm -rf *.o *d $(NAME)

include $(wildcard *.d)
