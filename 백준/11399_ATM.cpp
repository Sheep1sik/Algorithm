#include <iostream>
#include <iomanip>
#include <vector>
#include <algorithm>

using namespace std;

int main()
{
    int N;
    cin >> N;
    vector<int> v(N);
    for (int i = 0; i < N; i++)
    {
        cin >> v[i];
    }
    sort(v.begin(),v.end());
    int total =0;
    for (int i = 0; i < N; i++)
    {
        total+=v[i] * (N-i);
    }
    cout <<total;

    return 0;
}
