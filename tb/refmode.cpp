#include <stdio.h>
#include <math.h>

extern "C" long myULA(int A, int reg_sel, int instru, long registradores []){
	//Seleção do registrador
	long B;
	long resultado;
	switch(reg_sel){
		case 0:
			B = registradores[0];
			break;
		case 1:
			B = registradores[1];
			break;
		case 2:
			B = registradores[2];
			break;
		case 3:
			B = registradores[3];
			break;
		default:
			printf("Registrador não encontrado\n");
	}

	//Seleção da operação
	switch(instru){
		case 0:
			resultado = A + B;
			break;
		case 1:
			resultado = abs(A - B);
			break;
		case 2:
			resultado = A + 1;
			break;
		case 3:
			resultado = B + 1;
			break;
		default:
			printf("Operação inexistente\n");
	}

	return resultado;

}