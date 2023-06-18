#include <iostream>
#include<cmath>
#include <bits/stdc++.h>
#include<set>
#include<ctype.h>
#include<string>
using namespace std;
#include <bits/stdc++.h>
using namespace std;

int main() {
int number  , year , mon , day ;
cin>> number ;
year = number / 365 ;
mon = number%365 / 30 ;
day = number %365 % 30 ;
cout << year << " year" << endl << mon << " months" << endl << day << " days" << endl ;



return 0 ;
}
