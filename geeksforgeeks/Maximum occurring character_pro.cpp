//find maximum occurring character, If more than one character occurs maximum number of time then print the lexicographically smaller character.
#include <bits/stdc++.h>
using namespace std;

vector<int> print_max_repeating_char(string s)
{
	int arr[256];
	vector<int> v;
	for(int i = 0; i < 256; i++)
	{
		arr[i] = 0;
	}
	int len = s.length();
	for(int i = 0; i < 256; i++)
	{
		arr[s[i]]++;
	}
	int max = INT_MIN;
	for(int i = 0; i < len; i++)
	{
		if (arr[i] > max)
		{
			max = arr[i];
			v.clear();
			v.push_back(i);
		}
		else if (arr[i] == max && max != INT_MIN)
		{
			v.push_back(i);
		}
	}

	return v;
}

int main()
{
	string s = "test sample";
	vector<int> result = print_max_repeating_char(s);
	for (int i = 0; i < result.size(); i++)
	{
		printf("%c ", result[i]);
	}
	printf("\n");
	return 0;
}