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
int n  ;
cin>> n;
int *arr = new int [n] ;
for (int i=0; i<n ; i++ )  {
    cin>> arr[i] ;
}
sort(arr , arr+n ) ;
for (int i=0 ; i< n  ; i++ ) {
    cout << arr[i] << " "  ;
}
return 0 ;}
