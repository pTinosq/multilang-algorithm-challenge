#include <iostream>

int main()
{
	int ENTRY_DATA[11] = { 9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2 };
	int N = 11;

	for (int i = 0; i < N; i++) {
		for (int j = 0; j < N - 1; j++) {
			if (ENTRY_DATA[j] > ENTRY_DATA[j + 1]) {
				int temp = ENTRY_DATA[j];
				ENTRY_DATA[j] = ENTRY_DATA[j + 1];
				ENTRY_DATA[j + 1] = temp;
			}
		}
	}

	std::cout << "SORTED: ";
	for (int i = 0; i < N; i++) {
		std::cout << ENTRY_DATA[i];
		if (i < N - 1) {
			std::cout << ", ";
		}
	}
	std::cout << std::endl;
}