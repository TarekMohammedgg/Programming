#include<iostream>
#include <bits/stdc++.h>
#include<string>
#include<string.h>
#include<vector>
#include<list>
#include<stack>
using namespace std ;
int main()
{ string str ;
set <int> exp ;
getline(cin, str) ;
for(int i=0 ; i<str.size() ; i++ ) {
    if(str[i] >='a' && str[i]<='z')
        exp.insert(str[i]) ;
}
cout << exp.size() << endl ;

    return 0 ;
}
