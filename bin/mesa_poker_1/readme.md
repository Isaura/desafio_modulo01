# Mesa de Poker
Numa mesa de poker existe um valor mínimo de dinheiro que você precisa ter para poder jogar naquela mesa. Contudo, há também um limite máximo, pois jogadores com muito mais dinheiro na mesa levam vantagem.

Objetivo
Desenvolver uma aplicação para verificar se o valor informado pelos jogadores está dentro do limite de mínimo e máximo permitido.

Instruções
Escreva um algoritmo em Dart que selecione dentre uma lista de jogadores, apenas os valores permitidos para se jogar numa determinada mesa de poker.
O algoritmo deve receber o valor mínimo e máximo permitidos, e a lista de jogadores.
Mostre os jogadores com os valores entre o mínimo e o máximo permitidos.
Input Format

Entrada:
	valor minimo: 200
	valor maximo: 1000

	nome: Joao
	valor: 300
	
	nome: Denise
	valor: 500
	
	nome: Roberto
	valor: 100
	
	nome: Pedro
	valor: 800
	
	nome: Alice
	valor: 180
Output Format

Saída:
	Valor minimo da mesa: R$ 200.00
	Valor maximo da mesa: R$ 1000.00
	
	Jogadores da mesa:
	Joao
	Denise
	Pedro
Sample Input 0

200 1000 Joao 300 Denise 500 Roberto 100 Pedro 800 Alice 180
Sample Output 0

Valor minimo da mesa: R$ 200.0
Valor maximo da mesa: R$ 1000.0

Jogadores da mesa:
Joao
Denise
Pedro