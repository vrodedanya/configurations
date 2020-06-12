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
DIR =

## Creating object files
OBJECTS := $(addsuffix .o, $(basename $(wildcard $(DIR)*$(LANG))))

## Linking debug version
all: $(OBJECTS)
	$(CC) -g $(LDFLAGS) $(OBJECTS) -o $(NAME)_d

## Compiling and linking release version
release: $(DIR)*$(LANG)
	$(CC) $(LDFLAGS) $(RFLAGS) $(DIR)*$(LANG) -o $(NAME)

## Compiling debug
$(OBJETCS): $(DIR)%$(LANG)
	$(CC) -g -c $(CFLAGS) $(DIR)*$(LANG) -o $@
clean:
	rm $(OBJECTS)
	rm $(NAME)_d
