#include<iostream>
#include<list>
using namespace std ;
int main() {
int n ;
cin>> n ;

int a , b;
while (n--) {
    cin>> a >> b;
    if (a%b==0 )
        cout << 0 << endl ;
    else
        {
        int res = a%b;
        cout << b-res << endl; }
}





return 0 ; }
