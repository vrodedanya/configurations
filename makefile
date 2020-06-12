 Compiler name
 CC = gcc
 # File extension
 LANG = .c
 # Program name
 NAME = test
 # Compiler flags
 CFLAGS = -Wall 
 # Linker flags
 LDFLAGS = 
 # Libs
 LIBS = 
 # Source directory
 DIR = source/


 SRC_FILES = $(wildcard $(DIR)*$(LANG))

 # Creating object files
 OBJECTS := $(notdir $(patsubst %$(LANG), %.o, $(SRC_FILES)))

 # Linking debug version
 all: $(OBJECTS)
 	$(CC) -g $(LDFLAGS) $(LIBS) $(OBJECTS) -o $(NAME)_d

 	# Compiling and linking release version
 	release: 
 		$(CC) $(CFLAGS) $(LDFLAGS) $(LIBS) $(SRC_FILES) -o $(NAME)

 		# Compiling debug
 		%.o: $(DIR)%$(LANG)
 			$(CC) -g -c $(CFLAGS) $< -o $@

 			# Clean rep
 			clean:
 				rm $(OBJECTS)
 					rm $(NAME)_d
