#include <iostream>
using namespace std;

void greet(const string &name) {
	cout << "Hello, " << name << "!" << endl;
}

int main() {
	greet("Alexei");
	return 0;
}