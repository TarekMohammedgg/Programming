#include<iostream>
#include<cmath>
#include<math.h>
using namespace std;
int main (){
int input , x = 2 , y = 2  , i , j ;
for(int w = 0 ; w<5; w++){
    for(int z = 0 ; z<5 ; z++){
        cin>> input ;
        if(input==1){
            i = w ;
            j = z ;
            break ;

        }
    }
}
//cout<< i << j ;
cout<< abs(x-i)+abs(y-j) << endl;

return 0 ; }
