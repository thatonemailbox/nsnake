CC := gcc
CFLAGS := -ggdb3 -std=c11 -Wall -Wpedantic -lncursesw
SRC := main.c direction.c objects.c snake.c
EXEC := snake

$(EXEC): $(SRC)
	@$(CC) $(SRC) $(CFLAGS) -o $(EXEC) 

check: 
	@valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=log.txt ./$(EXEC)

.PHONY: clean
clean:
	@rm -f *.o $(EXEC) 
