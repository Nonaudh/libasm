#include "libasm.h"

#include <string.h>
#include "stdio.h"
#include <unistd.h>
#include <errno.h>

int main(void)
{
	int ret;
	char	*str = NULL;
	char	test[20];
	// printf("%ld\n", ft_strlen(str));
	// printf("%d\n", ft_strcmp(test, str));
	// printf("%d\n", strcmp(test, str));
	ret = read(-1, test, 10);
	printf("  ret; %d  err; %d\n", ret, errno);
	ret = ft_read(-1, test, 10);
	printf("  ret; %d  err; %d\n", ret, errno);
}