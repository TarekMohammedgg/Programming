#include<iostream>
using namespace std ;
int main (){

int res =0 , n ;
cin>> n;
int home[n] , guest[n]  ;
for(int i=0; i<n ; i++){
    cin>>home[i] >> guest[i] ;
}
for(int i =0 ; i<n ;i++){
    for(int j =0 ; j<n ;j++){
        if(home[i] == guest[j])
            res++ ;
    }
}
cout<< res <<endl;



}
