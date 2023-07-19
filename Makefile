# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/19 21:01:28 by jmiras-s          #+#    #+#              #
#    Updated: 2023/07/19 16:44:37 by jmiras-s         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# ----- NAME -
NAME 	= libft.a
MKFL	= Makefile
BNAME   = .bonus

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

SRCBONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c  ft_lstclear.c ft_lstiter.c ft_lstmap.c \

OBJS = $(SRC:.c=.o)
OBJSBONUS = $(SRCBONUS:.c=.o)	
DEPS = $(SRC:.c=.d) 
DEPSBONUS = $(SRCBONUS:.c=.d)

# $@ es nombre de la regla, lo que hay delante de :
# $< indica la primera dependencia de la regla, solo lo primero :
# $^ indica todas dependencias de la recla :
# -o cambio de nombre
# -MMD Creacion de dependencias

# ----- RULE -

%.o: %.c $(MKFL) libft.h
	$(CC) $(CFLAGS) -MMD -c $< -o $@
	@echo "$(BGreen)Copilando:	$(NC)$<"

all: $(NAME)

# ar (CREACION LIBRERIA) -rcs (rewrite create sort)

$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@echo "$(BGreen)  COMPILADO* \033[0m"

bonus: $(BNAME)

$(BNAME)::	$(OBJS) $(OBJSBONUS)
	@$(AR) $(NAME) $(OBJS) $(OBJSBONUS)
	@echo "	$(BGreen)\nBonus compilation successful\n$(NC)"
	@touch $@

$(BNAME)::
	@echo -n

clean:
	@$(RM) $(OBJS) $(DEPS) $(OBJSBONUS) $(DEPSBONUS)
	@echo "$(BRed) Libft .o and .d deleted \033[0m"

fclean: clean
	@$(RM) $(NAME) $(BNAME)
	@echo "$(BRed) Libft exec deleted $(NC)"

re: fclean all

.PHONY: all fclean clean re bonus

