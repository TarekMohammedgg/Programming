
#include<iostream>
#include<algorithm>
#include<string.h>
#include <cmath>
#define ll long long
using namespace std;
int main()
{
    int x;
    cin>>x;
    ll y[x];
    for(int i=0;i<x;i++){
        cin>>y[i];
    }
    for(int i=0;i<x;i++){
        if(y[i]!=0){
            for(ll j=y[i];j!=0;j/=10){
                cout<<j%10<<" ";
            }
            cout<<endl;
        }
        else
            cout<<y[i]<<endl;
    }
    return 0;
}

