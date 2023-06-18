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
typedef struct {
    int here , cap ;
}room  ;
int main(){
int n , counter =0 ;
cin>> n ;
room *r  = new room [n] ;
for (int i=0 ;i<n ; i++ ) {
    cin>>r[i].here>> r[i].cap ;
    if((r[i].cap- r[i].here )>=2) counter ++ ;
}

cout << counter << endl;



return 0 ;}
