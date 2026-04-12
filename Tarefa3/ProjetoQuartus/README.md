# Cronometro Digital

Projeto VHDL de um cronometro digital para Quartus II 13.0 SP1 e ModelSim-Altera, com alvo Cyclone IV E / DE2.

O top-level principal e `cronometro.vhd`. O projeto foi separado para simular em dois fluxos:

- RTL, para validar a logica funcional.
- Gate-level, para validar o netlist gerado pelo Quartus com atraso de propagacao.

## O que o projeto faz

- Conta em BCD usando quatro digitos de 4 bits.
- Mostra a contagem nos displays de 7 segmentos.
- Permite iniciar/pausar a contagem com `BTN_PLAY_PAUSE`.
- Zera a contagem com `BTN_RESET` na borda de subida do clock.
- Exibe a parte baixa e a parte alta da contagem em `Q_cs` e `Q_s`.

## Arquivos principais

- `cronometro.vhd`: top-level do cronometro.
- `cont_4.vhd`: contador de 4 bits usado em cascata.
- `bcd_7seg.vhd`: decodificador BCD para 7 segmentos.
- `cronometro_rtl_tb.vhd`: testbench da simulacao RTL.
- `cronometro_gate_tb.vhd`: testbench da simulacao gate-level.
- `cronometro_rtl.do`: script da simulacao RTL no ModelSim.
- `cronometro_gate.do`: script da simulacao gate-level no ModelSim.
- `cronometro.qpf`: projeto do Quartus.
- `cronometro.qsf`: pinagem e arquivos de fonte do Quartus.

## Como a contagem funciona

O cronometro usa quatro contadores BCD:

- `q0` e `q1` formam `Q_cs`.
- `q2` e `q3` formam `Q_s`.

A cascata segue esta ideia:

- `q0` conta de 0 a 9.
- `q1` incrementa quando `q0` volta para 0.
- `q2` e `q3` formam a parte alta da contagem.
- `q3` vai de 0 a 5, para manter a parte alta no intervalo 00 a 59.

## Sinais importantes

### Sinais de entrada

| Sinal            | Funcao                                                   |
| ---------------- | -------------------------------------------------------- |
| `CLK`            | Clock principal do cronometro.                           |
| `CLR`            | Clear geral sincronico usado para zerar a logica.        |
| `RST`            | Reset global assincrono do top-level e dos contadores.   |
| `EN`             | Habilitacao geral da contagem.                           |
| `BTN_PLAY_PAUSE` | Botao que alterna entre rodando e pausado.               |
| `BTN_RESET`      | Botao que zera o cronometro na borda de subida do clock. |

### Sinais de saida

| Sinal      | Funcao                                                                       |
| ---------- | ---------------------------------------------------------------------------- |
| `Q_cs`     | Valor decimal formado por `q1` e `q0`. Representa a parte baixa da contagem. |
| `Q_s`      | Valor decimal formado por `q3` e `q2`. Representa a parte alta da contagem.  |
| `HEX0`     | Display de 7 segmentos do digito `q0`.                                       |
| `HEX1`     | Display de 7 segmentos do digito `q1`.                                       |
| `HEX2`     | Display de 7 segmentos do digito `q2`.                                       |
| `HEX3`     | Display de 7 segmentos do digito `q3`.                                       |
| `CLK2`     | Sinal de observacao do enable de `q1`.                                       |
| `CLK3`     | Sinal de observacao do enable de `q2`.                                       |
| `CLK4`     | Sinal de observacao do enable de `q3`.                                       |
| `RST_SIG1` | Sinal de observacao do reset da primeira metade da contagem.                 |
| `RST_SIG2` | Sinal de observacao do reset da segunda metade da contagem.                  |

### Sinais internos

| Sinal                                  | Funcao                                                                     |
| -------------------------------------- | -------------------------------------------------------------------------- |
| `state`                                | Indica se o cronometro esta rodando (`1`) ou pausado (`0`).                |
| `play_prev`                            | Guarda o valor anterior de `BTN_PLAY_PAUSE` para detectar borda de subida. |
| `q0`, `q1`, `q2`, `q3`                 | Digitos BCD internos do cronometro.                                        |
| `count_enable`                         | Habilita a contagem quando `EN = 1`, `state = 1` e `BTN_RESET = 0`.        |
| `reset_active`                         | Combina `RST` e `BTN_RESET` para limpar a logica.                          |
| `q0_en`, `q1_en`, `q2_en`, `q3_en`     | Enables individuais de cada digito.                                        |
| `q0_clr`, `q1_clr`, `q2_clr`, `q3_clr` | Clears individuais de cada digito.                                         |

## Fluxo de simulacao

### RTL

Use o script:

```tcl
do cronometro_rtl.do
```

Esse fluxo compila `cont_4.vhd`, `bcd_7seg.vhd`, `cronometro.vhd` e `cronometro_rtl_tb.vhd` e abre a Wave com os sinais principais.

### Gate-level

Use o script:

```tcl
do cronometro_gate.do
```

Esse fluxo usa o netlist e o SDF gerados pelo Quartus em `simulation/modelsim/`.

## Observacoes

- O fluxo RTL serve para validar a logica do projeto sem atraso de propagacao.
- O fluxo gate-level mostra o mesmo comportamento funcional, mas com tempos diferentes por causa do netlist e do SDF.
- Os sinais `CLK2`, `CLK3`, `CLK4`, `RST_SIG1` e `RST_SIG2` sao sinais de observacao. Eles nao sao clocks reais do circuito.
- A pinagem da placa esta definida em `cronometro.qsf`.

## Como abrir no Quartus

1. Abra o arquivo `cronometro.qpf`.
2. Compile o projeto.
3. Rode a simulacao RTL ou gate-level no ModelSim usando os scripts do projeto.
