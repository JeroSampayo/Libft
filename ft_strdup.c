/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/22 19:33:20 by jmiras-s          #+#    #+#             */
/*   Updated: 2022/11/12 16:02:09 by jmiras-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*ptr;

	ptr = (char *)malloc(ft_strlen(s1)+1 * sizeof(char));
	if (!ptr)
		return (NULL);
	ft_strlcpy (ptr, s1, ft_strlen(s1)+1);
	return (ptr);
}
