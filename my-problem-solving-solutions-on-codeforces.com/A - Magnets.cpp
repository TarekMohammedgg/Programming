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
int n , counter =0  ;
cin>>n ;
int   numbers[n] ;
for (int i=0 ; i<n ; i++ ) {
     cin>> numbers[i] ;
}
for (int i=0 ; i<n ;i++ ) {

    if ((numbers[i] ==10 && numbers [i+1] ==01 )|| (numbers[i]==01 &&numbers[i+1] == 10 ))
        counter ++ ;
}
cout<< counter+1 << endl ;
return 0 ;}
