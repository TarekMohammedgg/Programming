#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
#include<vector>
using namespace std ;
int main(){
int n ,h ,counter =0 ,  *arr = new int [n] ;
cin>> n >> h  ;
for (int i=0 ; i<n ; i++ ) {
    cin>> arr[i] ;
    if (arr[i] <= h ) {
        counter ++ ;
    } else
        counter+=2;
}
cout << counter << endl;



return 0 ;}
