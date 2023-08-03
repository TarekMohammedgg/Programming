#include<iostream>
#include<vector>
#include<string>
#include<cstring>
using namespace std ;
int main () {

string s;
cin>> s ;
int sum =0 ;
  for (int i =0 ; i < s.size() ; i ++ ) {
            if (s[i] == 'I')
            sum += 1 ;
            else if (s[i]=='V')
            sum+= 5;
            else if (s[i] == 'X')
            sum += 10 ;
            else if (s[i] == 'L')
            sum+=50 ;
            else if (s[i] == 'C')
            sum+=100 ;
            else if (s[i]== 'D')
            sum+=500 ;
            else if (s[i]=='M')
            sum+=1000 ;
        }
        cout<< sum << endl ;

return 0 ; }
