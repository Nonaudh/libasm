#include "stdio.h"

size_t ft_strlen(const char *s);

int main(void)
{
	char	*str = "lalal";
	ft_strlen(str);
	printf("%ld\n", ft_strlen(str));
}