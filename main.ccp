#include "stdafx.h"
#include "vector.h"
#include <iostream>
using namespace std;
int _tmain(int argc, _TCHAR* argv[])
{
	setlocale(LC_ALL, ".1251");
	vector v[6]= { vector (5,0,5,1,2,7), vector (4,5,1,9,7), vector (3,0,2,8)}; 
	cout << "Вектора, содержащие нули: "<<endl;
	for (int i=0; i<3; i++)
	{
		v[i].print0(); 
	}
	int minmod=1000, p;
	for (int i=0; i<3; i++)
	{
		if(v[i].printM()<minmod) p=i; 
	}
	cout << "Вектор с наименьшим модулем: " << endl;
		v[p].print();
	return 0;
}
