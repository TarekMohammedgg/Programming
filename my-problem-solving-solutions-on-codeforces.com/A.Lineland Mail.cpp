#include<iostream>
#include<algorithm>
#include<cmath>
using namespace std ;
int main () {
int n ;
cin >> n ;
int arr[n] ;
int mini , maxi  ;
for (int i =0  ; i!= n ; i++){
    cin >>arr[i] ;

}
mini = arr[0] ;
maxi = arr[n-1] ;
for (int i =0 ; i< n ; i++){
    if (i!=0 && i!=n-1){
            cout << min (abs(arr[i]- arr[i+1]) , abs(arr[i] - arr[i-1])) << " " ;
            cout << max (abs(arr[i]-mini), abs(arr[i] - maxi)) << endl;
    }else if (i==0 ) {
        cout <<abs(mini - arr[i+1] )<< " " << abs(mini - maxi) << endl ;
    }else {
        cout << abs(arr[i] - arr[i-1]) << " " << abs (arr[i] - mini) << endl;
    }

}



return 0 ; }
