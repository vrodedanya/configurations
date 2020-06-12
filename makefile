## Compiler name
CC = 
## File extension
LANG = 
## Program name
NAME = 
## Compiler flags
CFLAGS = 
## Release flags
RFLAGS = 
## Linker flags
LDFLAGS = 
## Source directory
DIR = source/

## Creating object files
OBJECTS := $(addsuffix .o, $(basename $(wildcard $(DIR)*$(LANG))))

all: $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $(NAME)_d
release: $(DIR)*$(LANG)
	$(CC) $(LDFLAGS) $(RFLAGS) $(DIR)*$(LANG) -o $(NAME)
	
$(OBJETCS): $(DIR)%$(LANG)
	$(CC) $(CFLAGS) $(DIR)*$(LANG) -o $@
clean:
	rm $(OBJECTS)
	rm $(NAME)_d
