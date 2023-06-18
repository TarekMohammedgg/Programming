#include <cctype>
#include <iostream>
#include <cstring>
#include<bits/stdc++.h>

using namespace std ;
int main (){
int counterP =0 , counterL=0 ;
string str1 ;
cin>> str1 ;
for(int i =0 ; i<str1.size() ; i++){
    if(isupper(str1[i])){
        counterP++ ;
    }else counterL++ ;
}
if(counterP>counterL){
transform(str1.begin(), str1.end(), str1.begin(), ::toupper);
cout<< str1<< endl;}
else {
    transform(str1.begin(), str1.end(), str1.begin(), ::tolower);
    cout<< str1<< endl;
    }

return 0; }
