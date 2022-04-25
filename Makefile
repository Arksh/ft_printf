# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cagonzal <cagonzal@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/30 15:08:15 by cagonzal          #+#    #+#              #
#    Updated: 2022/04/12 14:42:20 by cagonzal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#	file's name
NAME	=	libftprintf.a

#	files
SRCS	=	ft_printf.c
OBJS	=	${SRCS:.c=.o}
OBJB	=	${BONUS:.c=.o}

#	flags
CFLAGS	=	-Wall -Werror -Wextra

#	options to create the library
AR		=	ar -rc

#	options to force the remove
RM		=	rm -f

#	compilation
CC		=	gcc

#	flags
CFLAGS	=	-Wall -Wextra -Werror

.c.o:
		${CC} ${CFLAGS} -g -c $< -o ${<:.c=.o}

#	execute make
$(NAME): ${OBJS}
		${AR} ${NAME} ${OBJS}

all:	${NAME}

clean:
		${RM} ${OBJS} ${OBJB}

fclean:	clean
		${RM} ${NAME}

re:		fclean all

.PHONY:		all clean fclean re