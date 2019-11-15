#include <iostream>
#include <conio.h>
#include <iomanip>

using namespace std;

int main()
{
	int i, j, temp, jumdata;
	int data[] = {5, 100, 20, 31, 77, 88, 99, 20, 55, 1};
	jumdata = sizeof(data) / sizeof(int);

	//tampilkan data
	cout<<"Data semula: "<<endl;
	for(i = 0; i < jumdata; i++)
	{
		cout<<setw(4)<<data[i];
		//cout<<endl;
	}
	//urutkan data
	for (i = 0; i < jumdata-1; i++)
	{
		for(j = i + 1; j < jumdata; j++)
		{
			if (data[i] > data[j])
			{
				temp = data[i];
				data[i] = data[j];
				data[j] = temp;
			}
		}
	}
	//tampilkan data lagi
	cout<<"\nData setelah diurutkan: "<<endl;
	for (i = 0; i < jumdata; i++)
	{
		cout<<setw(4) << data[i];
		//cout<<endl;
	}
	return 0;
}
