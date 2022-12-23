#include <iostream>
using namespace std;

long long int countSubarrWithEqualZeroAndOne(int arr[], int n)
{
    map<int, int> freq;
    freq[0] = 1;
    long long int count = 0;
    int val = 0;
    for (int i = 0; i < n; i++)
    {
        val += ((arr[i] == 1) ? 1 : -1);
        count += freq[val];
        freq[val] += 1;
    }
    return count;
}

int main()
{

    int n;
    cin >> n;

    int arr[n];
    for (int i = 0; i < n; i++)
        cin >> arr[i];

    cout << countSubarrWithEqualZeroAndOne(arr, n);
}