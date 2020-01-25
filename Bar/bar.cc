#include <iostream>
#include "shared/A.hh"
#include "other/B.hh"

int main(){
	A a;
	a.a = 4;
	std::cout << "bar: " << a.a << std::endl;
	a.aVector=Eigen::Vector2d(2,0);
	std::cout << "bar's vector: " << a.aVector.dot(a.aVector) << std::endl;
	std::cout << "test"<< std::endl;
	B b;
	b.b = 5;
	std::cout << "test"<< std::endl;
	return 0;
}