#include <stdio.h>

void greet(const char *name) {
	printf("Hello, %s!\n", name);
}

int main() {
	greet("Alexei");
	return 0;
}