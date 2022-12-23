// Time Complexity: O(N * log N)

#include <bits/stdc++.h>
using namespace std;

int binarySearchFirstOccur(int *arr, int n, int key)
{
    int low = 0;
    int high = n - 1;
    int resIdx = 0;
    while (low <= high)
    {
        int mid = low + (high - low) / 2;
        if (arr[mid] == key)
        {
            resIdx = mid;
            high = mid - 1;
        }
        else if (arr[mid] > key)
            high = mid - 1;
        else
            low = mid + 1;
    }
    return resIdx;
}

int binarySearchLastOccur(int *arr, int n, int key)
{
    int low = 0;
    int high = n - 1;
    int resIdx = 0;
    while (low <= high)
    {
        int mid = low + (high - low) / 2;
        if (arr[mid] == key)
        {
            resIdx = mid;
            low = mid + 1;
        }
        else if (arr[mid] > key)
            high = mid - 1;
        else
            low = mid + 1;
    }
    return resIdx;
}

int main()
{

    int n;
    cin >> n;
    int arr[n];
    for (int i = 0; i < n; i++)
        cin >> arr[i];
    for (int i = 0; i < n; i++)
    {
        int firstOccur = binarySearchFirstOccur(arr, n, arr[i]);
        int lastOccur = binarySearchLastOccur(arr, n, arr[i]);
        cout << lastOccur - firstOccur + 1 << " ";
    }
}

/*

8
11 11 12 13 13 13 14 16

*/