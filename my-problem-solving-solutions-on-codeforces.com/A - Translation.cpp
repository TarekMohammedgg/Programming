#include<iostream>
#include<cstring>
#include<string>
#include<string.h>
#include<algorithm>
#include<ctype.h>
#include<iomanip>
#include <bits/stdc++.h>
using namespace std ;
int main(){
string str1 , str2 ;
cin>> str1 >> str2 ;
reverse(str2.begin() , str2.end() ) ;
for(int i=0 ;i<str1.size() ; i++ ) {
    if(str1[i] != str2[i] ) {
            cout << "NO" << endl;
            return 0 ;
    }
}
cout << "YES" << endl;
return 0 ;}
