#include <iostream>
#include <iomanip>
#include <vector>
using namespace std;

int main(){

    string st_Hex;
    cin >> st_Hex;
    vector<char> Hex(st_Hex.begin(),st_Hex.end());  
    unsigned int nResult = 0;
    
    for ( int i = 0; i<= Hex.size(); i++ )
    {
        if ( Hex[i] >= 'A' && Hex[i] <= 'F' )                // chHex값이 'A'(65)~'F'(70) 일때
            nResult = nResult * 16 + Hex[i] - 'A' + 10;
        else if ( Hex[i] >= 'a' && Hex[i] <= 'f' )                // chHex값이 'a'(97)~'f'(102) 일때
            nResult = nResult * 16 + Hex[i] - 'a' + 10;
        else if ( Hex[i] >= '0' && Hex[i] <= '9' )            // chHex값이 '0'(48)~'9'(57) 일때
            nResult = nResult * 16 + Hex[i] - '0';
    }
    cout << nResult;
    return 0;
    
   /*
   int num;
   scanf("%x",&num);
   printf("%d",num);
   */
}