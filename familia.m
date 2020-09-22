%% Cálculo de probabilidades por simulação
% 
%%  Considerações Iniciais
%  ------------
% 
%  Script exemplo do cálculo de probabilidades por simulação
%  Chama as seguintes funções 
%
%    calculoA.m
%    calculoS.m
%
%
 
%% Início
%% Limpar variáveis
clear ; close all; clc
 
 
%% Obtém quantidade total de filhos e a quantidade de filhas para a qual deve ser calculada a probabilidade

totaldefilhos = input('Digite a quantidade total de filhos para a qual deve ser calculada a probabilidade: ');

quantidadedefilhas = input('Digite a quantidade de filhas para a qual deve ser calculada a probabilidade: ');
 
%% Chama a função para cálculo analítico e imprime resultado
 
probA = calculoA ( totaldefilhos , quantidadedefilhas );
fprintf('Total de Filhos: %d \n', totaldefilhos);
fprintf('Quantidade de Filhas: %d \n', quantidadedefilhas);
fprintf('Probabilidade calculada pelo formula analitica: %f \n', probA);
fprintf('\n');
 
fprintf('Script suspenso \n');
fprintf('Digite qualquer tecla para continuar ou ctrl-c para abortar \n');
fprintf('\n');
pause;
 
%% Obtém quantidade de vezes que deve ser realizada a simulação
 
N = input('Digite a quantidade de vezes que deve ser realizada a simulação: ');
fprintf('\n');
 
%% Chama a função para cálculo por simulação e imprime resultado
 
probS = calculoS(totaldefilhos , quantidadedefilhas , N );
fprintf('Total de Filhos: %d \n', totaldefilhos);
fprintf('Quantidade de Filhas: %d \n', quantidadedefilhas);
fprintf('Quantidade de simulacoes: %d \n', N);
fprintf('Probabilidade calculada pela simulação: %f \n', probS);
fprintf('\n');
