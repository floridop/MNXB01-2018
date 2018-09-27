
#include <iostream>

using namespace std;

double Larger(double, double);

int main() {

	double A, B;
	cout << "Type the first number: ";
	cin  >> A;
	cout << "Type your second number: ";
	cin >> B;

if(A == B){
	cout << A << " and " << B << " are equally large.\n";
}
else{
	cout << Larger(A, B) << " is the larger number\n"; 
};
}

double Larger(double num1, double num2){

	if(num1 < num2){
		return num2;
	}
	else{
		return num1;
	}

}
