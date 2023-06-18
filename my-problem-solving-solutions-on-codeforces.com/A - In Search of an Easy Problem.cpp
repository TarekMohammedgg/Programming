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
int n ;
cin>>n ;
int *arr = new int [n] ;
for (int i=0 ;i< n ; i++ ) {
    cin>> arr[i] ;
    if (arr[i] == 1) {
        cout << "HARD" << endl;
        return 0 ;
    }}

cout << "EASY" << endl;



return 0 ;}
