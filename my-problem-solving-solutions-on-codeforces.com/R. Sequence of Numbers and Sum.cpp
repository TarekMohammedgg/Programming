#include<iostream>
#include<algorithm>
#include<string.h>
#include <cmath>
#define ll long long
using namespace std;
int main()
{
    int y,z;
    cin>>y>>z;
    while(y>0&&z>0){
        int res=0;
        if(y>z){
            int x=y;
            y=z;
            z=x;
        }
        for(int i=y;i<=z;i++){
            res+=i;
            cout<<i<<" ";
        }
        cout<<"sum ="<<res<<endl;
        cin>>y>>z;
    }
    return 0;
}
