#include <iostream>
#include <fstream>

int main (int argc, const char *argv[])
{
	
	std::cout << "The program " << argv[0] << " has started." << std::endl;
	
	std::string arg1 =      argv[1];
	std::string arg2 = atoi(argv[2]);
	std::string arg3 = atoi(argv[3]);

	return 0;
}
