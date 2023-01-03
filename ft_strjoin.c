/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/12 17:00:43 by jmiras-s          #+#    #+#             */
/*   Updated: 2022/12/08 14:15:22 by jmiras-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*s3;
	size_t	i;
	size_t	l;

	l = ft_strlen(s1);
	s3 = (char *)malloc(sizeof(char) * (l + ft_strlen(s2) + 1));
	if (!s3)
		return (NULL);
	if (l != 0)
		ft_memcpy(s3, s1, l);
	i = 0;
	while (s2[i] != '\0')
	{
		s3[l + i] = s2[i];
		i++;
	}
	s3[l + i] = '\0';
	return (s3);
}
