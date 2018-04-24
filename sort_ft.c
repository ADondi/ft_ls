/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   sort_ft.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adondera <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/25 12:34:21 by adondera          #+#    #+#             */
/*   Updated: 2018/03/25 12:34:22 by adondera         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_ls.h"

int		cmp_alpha(t_elem *elem1, t_elem *elem2)
{
	return (ft_strcmp(elem1->name, elem2->name));
}

int		cmp_time(t_elem *elem1, t_elem *elem2)
{
	return (elem1->date < elem2->date);
}
