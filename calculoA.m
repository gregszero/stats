% calculoA.m
%
function probA = calculoA( n , p )
    
% n é o total de filhos
% p é a quantidade de filhas
    
% calculo da função binomial
% calculo da combinação de n, p a p
% calculo do fatorial de n
fatorialn=1;
    for i=1:n
        fatorialn = fatorialn*i;
    end

% calculo do fatorial de p
    fatorialp=1;
    for j=1:p
        fatorialp = fatorialp*j;
    end

% calculo do fatorial de n-p
    fatorialn_p=1;
    for k=1:(n-p)
        fatorialn_p = fatorialn_p*k;
    end

% calculo da combinação de n, p a p 
    combinacao_n_p = fatorialn /(fatorialn_p * fatorialp);

% calculo da função de probabilidade [binomial (n,p)]    
    probA = combinacao_n_p*(0.5)^(p)*(0.5)^(n-p);
    
    
end
