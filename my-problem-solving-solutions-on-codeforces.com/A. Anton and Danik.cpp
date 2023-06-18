#include<iostream>
using namespace std ;
int main (){
int n , counterA = 0  , counterD =0 ;
char str;
cin>> n ;
for(int i = 0 ; i<n ; i++){
        cin>> str ;
        if(str == 'A')
            counterA++ ;
        else
            counterD++; }
if(counterA>counterD){
    cout<<"Anton"<<endl;
}
else if (counterA==counterD){
    cout<<"Friendship"<<endl;
}
else cout<< "Danik"<<endl;

return 0 ; }
