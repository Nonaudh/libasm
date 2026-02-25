CC = nasm

CFLAGS = -f elf64

NAME = libasm.a

SRC = src/ft_strlen.s src/ft_strcpy.s

DBUILD = build/

OBJ = $(addprefix $(DBUILD), $(SRC:%.s=%.o))

all : $(NAME) test

$(DBUILD)%.o : %.s
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ $?

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

test :
	gcc -Iinc main.c $(NAME)

clean :
	rm -rf $(DBUILD)

fclean : clean
	rm -f $(NAME) a.out

re : fclean all

.PHONY : all clean fclean re
