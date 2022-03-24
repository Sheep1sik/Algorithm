#include <iostream>
#include<iomanip>

using namespace std;

int main()
{
    int N;
    cin >> N;
    int Sugar_5,Sugar_3;
    Sugar_5 = N/5; // 5KG봉지에 담을 수 있는 수

    while (1)
    {
        if (Sugar_5 < 0) // 설탕량 / 5가 0보다 작으면 or Sugar_5가 0 보다 작으면                         
                         // Sugar_5가 0일때 3으로 나누어 떨어지지 않으면 5와 3으로 나눌 수 없음으로 결과값 -1 출력
        {
            cout << -1; // -1 출력
            return 0;
        }
        if ((N-(5*Sugar_5))%3==0) // (설탕량 - (5 * 5KG 봉지 수)) % 3의 나머지가 0이면
        { 
            Sugar_3 = (N-(5*Sugar_5))/3; // (설탕량 - (5 * 5KG 봉지 수)) % 3의 몫이 3KG 봉지의 수
            break;
        }
        Sugar_5--; // 2번째 if문이 해당이 안될 시 Sugar_5--
    }
    cout << Sugar_5+Sugar_3; // 5KG 봉지 + 3KG 봉지 
    
    return 0;
}