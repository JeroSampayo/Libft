# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/19 21:01:28 by jmiras-s          #+#    #+#              #
#    Updated: 2022/09/19 21:12:38 by jmiras-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Comentario 
NAME = libft.a

CFLAGS = -Wall -Werror -Wextra
RM = rm -f
OBJ_DIR = obj/

#i miuscula carpeta minuscula texto
INCLUDE = -I ./

SRC = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
	  ft_strlen.c
OBJ = $(addprefix $(OBJ_DIR), $(SRC:.c=.o))

DEP = $(addsuffix .d, $(basename $(OBJ)))

# $@ es nombre de la regla, lo que hay delante de :
# $< indica la primera dependencia de la regla, solo lo primero :
# $^ indica todas dependencias de la recla :
# -o cambio de nombre
# -MMD Creacion de dependencias

$(OBJ_DIR)%.o: %.c
	mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -MMD $(INCLUDE) -c $< -o $@

# SRCBONUS

all: $(NAME)

# ar (CREACION Y COMPILACION LIBRERIA) -rcs (r/recoge compilacion c/de forma silenciada s/monta objetos)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

clean:
	$(RM) -r $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

# PHONY , Si ya existe el archivo no confunde la recla del archivo

.PHONY: all fclean clean re
