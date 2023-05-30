# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/19 21:01:28 by jmiras-s          #+#    #+#              #
#    Updated: 2023/05/30 18:06:41 by jmiras-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ----- NAME -

# Comentario 
NAME 	= libft.a

MKFL	= Makefile

# ----- PATH -

SRC_DIR	= src/
UTL_DIR	= util/
OBJ_DIR = obj/

# ----- COLORS -

BRed= \033[1;31m
NC = \033[0m
BGreen= \033[1;32m

# ----- CMDS -

CFLAGS	= -Wall -Werror -Wextra
AR		= ar -rcs
RM		= rm -f
MK		= mkdir -p

# RM -f (Ignora cuando no hay que borrar)
# mkdir -p (si no existe creamelo sino ignora el comando)

# ----- SRCS -

#i mayuscula carpeta minuscula texto
INCLUDE = -I./

SRC = ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
	  ft_strlen.c ft_memset.c ft_bzero.c ft_strlcat.c ft_memcpy.c ft_itoa.c \
	  ft_memmove.c ft_memcmp.c ft_atoi.c ft_tolower.c ft_toupper.c ft_strchr.c \
	  ft_strrchr.c ft_strncmp.c ft_strnstr.c ft_calloc.c ft_strdup.c ft_strlcpy.c ft_memchr.c \
	  ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_substr.c ft_strjoin.c \
	  ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c ft_split.c \

BONUS = ft_lstnew.c \

OBJ = $(SRC:.c=.o)
OBJB = $(BONUS:.c=.o)	

# $@ es nombre de la regla, lo que hay delante de :
# $< indica la primera dependencia de la regla, solo lo primero :
# $^ indica todas dependencias de la recla :
# -o cambio de nombre
# -MMD Creacion de dependencias

# ----- RULE -

%.o: %.c $(MKFL) libft.h
	$(CC) $(CFLAGS) -c $< -o $@

all: $(NAME)

# ar (CREACION Y COMPILACION LIBRERIA) -rcs (r/recoge compilacion c/de forma silenciada s/monta objetos)

$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)
	@echo "$(BGreen)  *COMPILADO* \033[0m"

bonus:	$(OBJB)
	$(AR) $(NAME) $(OBJB)
	@echo "$(BGreen)  *COMPILADO* \033[0m"

clean:
	$(RM) *.o
	@echo "$(BRed)  *BORRADO* \033[0m"

fclean: clean
	$(RM) $(NAME)

re: fclean $(NAME)

# PHONY , Si ya existe el mismo nombre de archivo no lo confunde.

.PHONY: all fclean clean re

