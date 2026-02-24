CC = nasm

CFLAGS = -f elf64

NAME = libasm.a

SRC = src/ft_strlen.s

DBUILD = build/

OBJ = $(addprefix $(DBUILD), $(SRC:%.s=%.o))

all : $(NAME)

$(DBUILD)%.o : %.s
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -o $@ $?

$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

test : all
	gcc -Iinc main.c $(NAME)

clean :
	rm -rf $(DBUILD)

fclean : clean
	rm -f $(NAME) a.out

re : fclean all

.PHONY : all clean fclean re
