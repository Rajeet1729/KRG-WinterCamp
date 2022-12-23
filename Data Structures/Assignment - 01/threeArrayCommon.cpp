#include <iostream>
using namespace std;

void commonElement(int A[], int B[], int C[], int n1, int n2, int n3)
{
    int i = 0;
    int j = 0;
    int k = 0;

    while (i < n1 && j < n2 && k < n3)
    {

        if (A[i] == B[j] && C[k] == B[j])
            cout << A[i] << " ", i++, j++, k++;

        if (A[i] < B[j] && A[i] < C[k])
            i++;

        if (B[j] < A[i] && B[j] < C[k])
            j++;

        if (C[k] < A[i] && C[k] < B[j])
            k++;
    }
}

int main()
{

    int n1, n2, n3;
    cin >> n1 >> n2 >> n3;

    int A[n1], B[n2], C[n3];

    for (int i = 0; i < n1; i++)
        cin >> A[i];
    for (int i = 0; i < n2; i++)
        cin >> B[i];
    for (int i = 0; i < n3; i++)
        cin >> C[i];

    commonElement(A, B, C, n1, n2, n3);
}