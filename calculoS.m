% calculoS.m
%
function probS = calculoS( n , p , N )
 
% n é o numero total de filhos
% p é a qunatidade de filhas
% N é a quantidade de simulações


% geração dos n filhos para cada uma das N familias
% valor menor que 0.5, conisdera-se filha
% valor maior ou igual a 0.5, considera-se filho

familia = rand ( N , n );


% contagem do numero de filhas para cada uma das N familias

for i = 1:N
    
    filhas ( i ) = 0;
    
    for j = 1:n
    
        if familia ( i , j ) < 0.5
           filhas ( i ) = filhas ( i ) + 1;
        else
           filhas ( i ) = filhas ( i ) + 0;
        end
         
    end
    
end


% contagem das familias com p filhas

soma = 0;
    
for i = 1:N
    
    if filhas ( i ) == p
       soma = soma + 1;
    else
       soma = soma + 0;
    end

end

% calculo da probabilidade
% numero de eventos (familias com p filhas) / total de eventos (quantidade
% de simulação)

probS = soma / N;
 
end
