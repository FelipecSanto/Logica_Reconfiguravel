# Tarefa 4 - Sinais e Variáveis

Projeto em VHDL para a disciplina de Lógica Reconfigurável, implementado para o Quartus II 13.0 SP1 e simulação no ModelSim-Altera.

## Objetivo

O exercício pede totalizadores de bits `1` em palavras de 5 bits, avaliando uma palavra por ciclo de clock.

A entrega foi organizada em dois blocos:

- Item A: um contador sequencial, que conta 1 bit por ciclo de clock usando sinais.
- Item B: um bloco com os totalizadores de 5 bits em um único ciclo de clock, descritos com estilos diferentes de VHDL para comparar variáveis e sinais.

## Estrutura do projeto

- [sinal_variavel.vhd](sinal_variavel.vhd) - entidade principal do projeto, com o contador do item A e as saídas do item B.
- [sinal_variavel_mult.vhd](sinal_variavel_mult.vhd) - implementação do item B.
- [sinal_variavel.qsf](sinal_variavel.qsf) - arquivo de configuração do Quartus.
- [sinal_variavel_tb.vhd](sinal_variavel_tb.vhd) - testbench do item A.
- [sinal_variavel_mult_tb.vhd](sinal_variavel_mult_tb.vhd) - testbench do item B.
- [sinal_variavel_a_gate_tb.vhd](sinal_variavel_a_gate_tb.vhd) - testbench gate-level do item A.
- [sinal_variavel_b_gate_tb.vhd](sinal_variavel_b_gate_tb.vhd) - testbench gate-level do item B.
- [sim_item_a_funcional.do](sim_item_a_funcional.do) - simulação funcional RTL do item A.
- [sim_item_b_funcional.do](sim_item_b_funcional.do) - simulação funcional RTL do item B.
- [sim_item_a_gate_level.do](sim_item_a_gate_level.do) - simulação gate-level do item A.
- [sim_item_b_gate_level.do](sim_item_b_gate_level.do) - simulação gate-level do item B.

Os arquivos de testbench ficam registrados como fontes de simulação no projeto. Eles não entram no top-level de síntese, mas ficam organizados no Quartus para facilitar a abertura direta no ModelSim e a coleta das evidências.

O fluxo ficou separado por objetivo:

- simulação funcional usa os testbenches de RTL, com saídas em `integer`;
- simulação gate-level usa os testbenches específicos com saídas em `std_logic_vector`, compatíveis com o netlist pós-síntese gerado pelo Quartus.

No arquivo [sinal_variavel.qsf](sinal_variavel.qsf), a síntese continua usando apenas [sinal_variavel.vhd](sinal_variavel.vhd) e [sinal_variavel_mult.vhd](sinal_variavel_mult.vhd).

## Como o projeto funciona

### Item A

O item A conta a ocorrência de bits `1` de forma sequencial. A cada borda de subida do clock, o circuito avalia um bit da palavra de 5 bits. Isso significa que a contagem completa da palavra leva 5 ciclos de clock.

Esse comportamento é intencional para representar um contador baseado em sinais, com avaliação incremental.

### Item B

O item B implementa a totalização completa em um único ciclo de clock, recebendo uma palavra de 5 bits a cada borda de subida do clock. A implementação foi organizada para ficar mais fiel ao enunciado:

- `total_for` usa variável e estrutura `for`.
- `total_while` usa variável e estrutura `while`.
- `total_if` usa sinais com teste por `if then`.
- `total_case` usa sinais com `case/when`.
- `total_sum` faz a soma direta dos bits com conversão explícita.
- `total_demx` soma os 5 sinais gerados a partir da separação individual dos bits.

O bloco principal do projeto continua sendo [sinal_variavel.vhd](sinal_variavel.vhd), que concentra o contador sequencial do item A e instancia o bloco do item B em [sinal_variavel_mult.vhd](sinal_variavel_mult.vhd).

## Como executar no ModelSim

### Simulação funcional

Usar `sim_item_a_funcional.do` para o item A e `sim_item_b_funcional.do` para o item B.

### Simulação gate-level

Usar `sim_item_a_gate_level.do` para o item A e `sim_item_b_gate_level.do` para o item B. Esses scripts compilam o netlist gate-level do top-level, aplicam o SDF correspondente e executam os testbenches dedicados de gate-level.

Se a onda de atraso não aparecer, confirme que o script está usando a versão pós-síntese em `simulation/modelsim`, com anotação `-sdftyp` e resolução de tempo em `ps`.

## Comparação de frequência máxima

Resumo da comparação pedida na atividade:

- No Quartus, o clock principal clk apresentou Fmax de 534,76 MHz, o que corresponde a um período crítico de aproximadamente 1,870 ns.
- Na simulação gate-level, o pior caso observado foi a saída total_sum, com atraso máximo de 7,918 ns, o que dá cerca de 126,3 MHz em frequência equivalente.
- Esse valor de gate-level não é um Fmax novo medido diretamente pelo simulador; ele é uma frequência equivalente obtida a partir do atraso de propagação observado na waveform.
- Entre as opções do item B, os atrasos observados foram: total_demx com 5,288 ns, total_bit com 5,838 ns, total_for com 5,933 ns, total_case com 6,124 ns, total_if com 6,136 ns, total_while com 6,706 ns e total_sum com 7,918 ns.
- A ordem geral mostra que a soma direta foi a opção mais lenta nesta síntese, enquanto a solução com demux ficou mais rápida.
- No item A, o comportamento é sequencial, bit a bit, então o atraso está ligado ao registrador de estado e ao controle do contador, e não a uma soma completa no mesmo ciclo.
- Conclusão: a referência numérica principal do exercício é o Fmax do Quartus, e a simulação gate-level serve como evidência visual do atraso de propagação entre as diferentes opções.

## Observação final

O resumo acima já responde diretamente a parte de comparação entre o Quartus e a simulação gate-level. O restante da documentação do projeto continua nas seções anteriores deste README.
