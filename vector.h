#define NILL 0x00000000
#define NULL 0

class vector
{
private:
	int m_size;
	int* m_vector;
	int m_lastError;
public:
	enum{no_error, memory_limit, exit_array};
	vector(void);
	vector(int size, ...);
	~vector(void);
	int getLastError(void);
	int getSize(void);
	int operator[](int);
	void print(void);
	int sum(void);
	int product(void);
	void print0(void);
	int printM(void);
};
