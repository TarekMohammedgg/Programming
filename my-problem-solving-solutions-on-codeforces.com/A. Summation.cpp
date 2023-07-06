#include<iostream>
#include<cmath>
using namespace std ;
int main () {
int n ;
cin >> n ;
long long   sum = 0 ;
long long  arr [n] ;
for (long long x : arr ){
    cin >> x ;
    sum += x ;
}

cout << abs(sum) << endl ;
return 0; }
