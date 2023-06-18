#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
#include<vector>
#include<queue>
#include<stack>
#include<list>
using namespace std ;

int main(){
long long n , r ;
cin>> n ;
if (n%2==0)
    r = n / 2 ;
else
    r = ((n+1)/2) *(-1) ;
cout << r <<endl ;
return 0 ;}
