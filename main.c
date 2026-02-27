#include "libasm.h"

#include <string.h>
#include "stdio.h"

int main(void)
{
	char	*str = NULL;
	char	test[20] = "Salut !";
	// printf("%ld\n", ft_strlen(str));
	printf("%d\n", ft_strcmp(test, str));
	printf("%d\n", strcmp(test, str));
}