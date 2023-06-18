#include <iostream>
using namespace std;

int main () {

int n ;
cin >> n ;
int arr[n] ;
int s  =0 ;
for (int i =0 ; i<n ; i ++ ){


    cin >> arr[i]  ;
    if (arr[i] - n >0)
        s+=arr[i]-n ;

}
cout << s << endl;

return 0 ; }
