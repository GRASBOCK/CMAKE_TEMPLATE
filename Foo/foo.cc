#include <memory>
#include <iostream>
#include "A.hh"

int main(){
	{
		std::unique_ptr<A> a(new A);
		a->a = 5;
		std::cout << "foo: " << a->a << std::endl;
	}
	std::cout << "test"<< std::endl;
	
	
	return 0;
}