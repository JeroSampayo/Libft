# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/19 21:01:28 by jmiras-s          #+#    #+#              #
#    Updated: 2022/12/21 16:58:22 by jmiras-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ----- NAME -

# Comentario 
NAME = libft.a

MKFL	= Makefile

# ----- PATH -

SRC_DIR	= src/
UTL_DIR	= util/
OBJ_DIR = obj/

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

OBJ = $(addprefix $(OBJ_DIR), $(SRC:.c=.o))	
DEP = $(addsuffix .d, $(basename $(OBJ)))

# $@ es nombre de la regla, lo que hay delante de :
# $< indica la primera dependencia de la regla, solo lo primero :
# $^ indica todas dependencias de la recla :
# -o cambio de nombre
# -MMD Creacion de dependencias

# ----- RULE -

$(OBJ_DIR)%.o: %.c $(MKFL)
	$(MK) $(dir $@)
	$(CC) $(CFLAGS) -MT $@ -MMD -MP $(INCLUDE) -c $< -o $@

# SRCBONUS

all:
	$(MAKE) $(NAME)

# ar (CREACION Y COMPILACION LIBRERIA) -rcs (r/recoge compilacion c/de forma silenciada s/monta objetos)

$(NAME):: $(OBJ)
	$(AR) $(NAME) $(OBJ)

-include $(DEP)

clean:
	$(RM) -r $(OBJ_DIR) 

fclean:
	$(MAKE) clean
	$(RM) $(NAME)

re:
	$(MAKE) fclean
	$(MAKE)

# PHONY , Si ya existe el mismo nombre de archivo no lo confunde.

.PHONY: all fclean clean re
