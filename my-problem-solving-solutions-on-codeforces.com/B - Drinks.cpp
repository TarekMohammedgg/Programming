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
int n  , x;
cin >> n ;
double res ;
for (int i =1 ; i<= n ; i++ ) {
        cin >> x ;
        res +=(double)x/100 ;

}cout<<setprecision(12) <<((double) res /(double)n )*100  << endl ;
return 0 ;}
