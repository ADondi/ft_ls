# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adondera <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/03/25 12:35:21 by adondera          #+#    #+#              #
#    Updated: 2018/03/25 13:27:27 by adondera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= ft_ls

SRC		=	main.c display.c elem.c error.c ls_core.c print.c recursion.c \
			size.c sort.c sort_ft.c time.c util.c

OBJ		= $(SRC:.c=.o)

CFLAGS	= -Wall -Wextra -Werror

$(NAME): $(OBJ)
	@make -C libft/
	@gcc $(OBJ) -o $(NAME) -L libft/ -lft

all: $(NAME)

clean:
	@make -C libft/ clean
	@rm -rf $(OBJ)

fclean: clean
	@rm -rf $(NAME) $(OBJ)
	@make -C libft/ fclean

re: fclean $(NAME)

.PHONY: all clean fclean re
