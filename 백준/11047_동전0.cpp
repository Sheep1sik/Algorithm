#include <iostream>
#include <iomanip>
#include <algorithm>
#include <vector>


using namespace std;

int main()
{
    int N,K,ans = 0;
    cin >> N >> K;
    vector<int> v(N);
    for (size_t i = 0; i < N; i++)
    {
        cin >> v[i];
    }
    sort(v.begin(),v.end(),greater<int>());
    for (int i = 0; i < N; i++)
    {
        while (K-v[i]>=0)
        {
            ans++;
            K-=v[i];
        }
    }
    cout << ans << endl;
    return 0;
}