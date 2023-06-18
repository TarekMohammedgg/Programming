#include<iostream>
#include<bits/stdc++.h>

using namespace std ;
int main (){
    int count=0;
    string x;
    cin>>x;
    sort(x.begin(), x.end());
    for(int i=1;i<x.length();i++)
        if((int)x[i-1]!=(int)x[i])
            count++;
    if(count%2!=0)
        cout<<"CHAT WITH HER!";
    else
        cout<<"IGNORE HIM!";
    return 0;
}
