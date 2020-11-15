#include "myMath.h"

#define e 2.71828182846
#define one 1


double Exponent(int x){
return Power(e,x);
}

double Power(double x,int y){
    double ans=one;
    if(y==0)
    {
   return 1;
    }
    else if(y>0){
        for (int i = 1; i <=y; i++)
        {
           ans=ans*x; 
        }
        
    }
    for(int i=y;i<=0;i++)
    {
        ans=(float)ans*(1/x);
    }
    return ans;

}
