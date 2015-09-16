#include "stdafx.h"
#include "vector.h"
#include <iostream>

vector::vector(void)
{
	m_vector=NILL;
	m_size=0;
	m_lastError= no_error;
}
vector::vector(int size, ...)
{
m_vector= new int[size];
m_size= size;
int* marker= &size;
marker++;
while (size!= 0)
{
	m_vector[m_size-size]= *marker;
	marker++;
	size--;
}
m_lastError= no_error;
}

vector::~vector(void)
{
	delete [] m_vector;
}

int vector::getLastError(void)
{
	int vp= m_lastError;
	m_lastError=no_error;
	return vp;
}

int vector::getSize(void)
{
	return m_size;
}
int vector::operator[](int index)
{
	if(index<0 || index>m_size-1)
	{
		m_lastError= exit_array;
		return NULL;
}
	return m_vector[index];
}

void vector::print(void)
{
for (int i=0; i<m_size; i++) std::cout<<m_vector[i]<<std::ends;
   std::cout<<std::endl;
}
int vector::sum(void)
{
int s=0;
for (int i=0; i< m_size; i++) s+=m_vector[i];
return s;
}
int vector::product(void)
{
	int p=1;
	for(int i=0; i<m_size; i++) p+= m_vector[i]; 
	return p;
}

void vector::print0(void)
{
	int k=1;
	for (int i=0; i<m_size; i++) {if(m_vector[i]==0) k=0; break;}

if(k==0)for (int i=0; i<m_size; i++) std::cout<<m_vector[i]<<std::ends;
if(k==0)std::cout<<std::endl;
}

int vector::printM(void)
{
	int k=0;
	for (int i=0; i<m_size; i++) {k+=pow(m_vector[i],2);}
	return sqrt(k);
}
