#include<iostream>
using namespace std ;
int main () {
int input ;
cin>> input ;
for (int i = 2 ; i<=(input/2) ;i++){
    if(input%i == 0 ){
        cout <<"NO"<<endl;
        return 0;
    }
}
cout << "YES"<<endl;
return 0 ; }


