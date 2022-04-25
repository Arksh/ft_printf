/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cagonzal <cagonzal@student.42madrid.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/30 15:11:17 by cagonzal          #+#    #+#             */
/*   Updated: 2022/03/30 15:26:08 by cagonzal         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	main(void)
{
	int		i;
	int		hex;
	char	c;
	void	*ptr;

	i = 10;
	hex = 69587;
	c = 'a';
	ptr = malloc(sizeof(char) * 2);
	ft_printf("Character: %c, Integer: %i\n", c, i);
	ft_printf("hex: %x, HEX: %X\n", hex, hex);
	ft_printf("Void pointer: %p\n", ptr);
	free(ptr);
	return (0);
}
