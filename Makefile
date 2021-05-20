##
## EPITECH PROJECT, 2020
## Makefile
## File description:
## projet solo 1
##

SRC     =       $(wildcard *.c)

OBJ     =       $(SRC:.c=.o)

NAME	=	matchstick

CFLAGS	=	-I./

CLIBFLAGS	=	lib/my/libmy.a

all:	$(OBJ)
	$(MAKE) -C lib/my/
	$(CC) -g -o $(NAME) $(SRC) $(CFLAGS) $(CLIBFLAGS)

clean:
	$(RM) $(OBJ)
	$(RM) *~
	$(MAKE) -C ./lib/my/ clean

fclean:	clean
	$(RM) $(NAME)
	$(RM) lib/libmy.a
	$(MAKE) -C ./lib/my/ fclean

re:	fclean all

.Phony: all clean fclean re
