# Projeto Quartus - FIFO

## O que é a FIFO
FIFO significa First In, First Out. Ela funciona como uma fila, então o primeiro dado que entra é o primeiro que sai. Neste projeto, a FIFO guarda 1024 palavras de 8 bits. Ela serve para armazenar os dados entre a escrita e a leitura, mantendo a ordem de saída.

## Como o código funciona
1. O arquivo fifo.vhd guarda os dados em um vetor interno de memória.
2. Existem dois ponteiros: um para escrita e outro para leitura.
3. Quando wr_en está ativo, o dado de entrada é gravado na posição do ponteiro de escrita.
4. Quando rd_en está ativo, o dado da posiçãoComo o código funciona: do ponteiro de leitura é apresentado na saída.
5. O ponteiro de escrita anda quando ocorre escrita, e o ponteiro de leitura anda quando ocorre leitura.
6. O sinal usedw mostra quantas posições estão ocupadas.
7. O sinal full indica quando a FIFO chegou ao limite.
8. O sinal empty indica quando não há dados armazenados.

## Uso
1. Abrir o projeto fifo.qpf no Quartus.
2. Compilar o projeto.
3. Simular no ModelSim com o script sim_fifo.do.