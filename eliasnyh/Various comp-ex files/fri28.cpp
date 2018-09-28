#include <iostream>
#include <vector>

using namespace std;

main(){

int a;
 cout << "Enter number:";
 cin >> a;

 int *b = &a;

 cout << " The value of the pointer is: " << *b << " the memory address is: " << b << endl;

cout << a << endl << &a << endl << b << endl <<  *b << endl <<  &b <<  endl;

 return 0;


}
