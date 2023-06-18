#include<iostream>
using namespace std;
int main (){
int N ;
cin>> N;
for(int i = 0 ; i<N; i++){
    for(int j = 4*i+1 ; j<i*4+4 ; j++){
        cout<<j<<" " ;
    }cout<<"PUM"<<endl;
}

return 0 ;}
