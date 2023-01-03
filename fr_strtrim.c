/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   fr_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jmiras-s <jmiras-s@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/12 17:04:46 by jmiras-s          #+#    #+#             */
/*   Updated: 2022/11/12 17:05:51 by jmiras-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_cmpchr(char c, char const *set)
{
	int	i;

	i = 0;
	while (set[i])
	{
		if (c == set[i])
			return (1);
		i++;
	}
	return (0);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	int		i;
	int		l;
	char	*res;

	i = 0;
	l = ft_strlen(s1);
	if (!s1)
		return (NULL);
	while (i < l)
	{
		if (ft_cmpchr(s1[i], set))
			i++;
		else if (ft_cmpchr(s1[l - 1], set))
			l--;
		else
			break ;
	}
	res = (char *)malloc(sizeof(char) * (l - i + 1));
	if (!res)
		return (NULL);
	if (l - i > 0)
		ft_memcpy(res, &s1[i], l - i);
	res[l - i] = '\0';
	return (res);
}
