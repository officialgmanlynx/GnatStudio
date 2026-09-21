#include <stdlib.h>
#include <string.h>
#include "fibonacci.h"
#include "reverse.h"

int main(int argc, char *argv[]) {
	int i = 1;
#ifdef FIBONACCI
//fib is defined by passing gcc ** -DFIBONACCI ** therefore
//this portion of the code is executed
	if (i < argc) {
		print_fib(atoi(argv[i]));
		i++;
	}
#endif
#ifdef REVERSE
//used becuase C99 does not possess a elifdef so the macro must be defined
	if (i < argc) {
		reverse(argv[i], strlen(argv[i]));
		i++;
	}
#endif
	return 0;
}
