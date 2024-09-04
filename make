CC = gcc
CFLAGS = -Wall -Werror -Wextra -pedantic
SRC = src/main.c
OBJ = $(SRC:.c=.o)
NAME = raycast_game

all: $(NAME)

$(NAME): $(OBJ)
    $(CC) $(CFLAGS) -o $@ $^ -lSDL2

clean:
    rm -f $(OBJ)

fclean: clean
    rm -f $(NAME)

re: fclean all
