#include<iostream>
#include<bits/stdc++.h>
#include<vector>
using namespace std ;
int main (){
    string x;
    char y='a';
    cin>>x;
    int sum=0;
    for(int i=0;i<x.length();i++){
        int a= abs((int)x[i]-(int)y);
        if(a<13)
            sum+=a;
        else
            sum+=(26-a);
        y=x[i];
    }
    cout<<sum;
    return 0;
}
