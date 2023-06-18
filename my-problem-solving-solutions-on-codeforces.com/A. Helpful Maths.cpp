#include<iostream>
#include<bits/stdc++.h>
#include<vector>
#define ll long long
using namespace std ;
int main() {
    string s;
    cin>>s;
    int count=0;
    char x[s.length()];
    for(int i=0;i<s.length();i+=2){
        x[count]=s[i];
        count++;
    }
    sort(x,x+count);
    for(int i=0;i<count+1;i++){
        cout<<x[i];
        if(i==count-1)
            break;
        else
            cout<<"+";
    }
    return 0;
}
