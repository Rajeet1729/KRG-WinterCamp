#include <iostream>
using namespace std;

int main()
{

    char ch[] = {'M', 'T', 'Y', 'S', 'A', 'P'};
    int n = sizeof(ch) / sizeof(ch[0]);

    int arr[26] = {0};

    for (int i = 0; i < n; i++)
        arr[ch[i] - 'A'] += 1;

    int idx = 0;
    for (int i = 0; i < 26; i++)
    {

        while (arr[i])
        {
            ch[idx] = char('A' + i);
            arr[i] -= 1;
            idx += 1;
        }
    }

    for (int i = 0; i < n; i++)
        cout << ch[i] << " ";
}