#include<iostream>
#include<bits/stdc++.h>
using namespace std ;
int main (){
string s1 , s2 ;
cin>> s1>> s2 ;
int p1 =0 ;
for(int i =0 ; i<s2.size() ; i++){
    if(s1[p1] == s2[i]){
        p1++  ;
    }
}
cout<< p1+1<<endl;
return 0 ; }
