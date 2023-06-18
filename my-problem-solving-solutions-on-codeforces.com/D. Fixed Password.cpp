#include<iostream>
using namespace std ;
int main ()
{
    int p = 1999, in ;
    while(true)
    {
        cin >> in ;
        if(in == p)
        {
            cout<< "Correct"<<endl;
            break ;

        }
        else
            cout<<"Wrong"<<endl;
    }
    return 0 ;
}
