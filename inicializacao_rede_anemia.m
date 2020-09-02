%Execução do teste anemia--------------------------------------------------
clc;
global resul_exame_anemia;
load('rede_anemia.mat');   %Carregar a última rede treinada (mais eficiente)
if i_tm == 0
    fprintf('\t\t|ERITROTESTE|\n')
    digitalizacao_exame;    %Chamar função para digitalizar exame
end
%Inicializar a rede treinada-----------------------------------------------
%Chama a rede 'net' e testa com os dados do vetor vetor_exame_part_1
resul_exame_anemia=sim(net, vetor_exame_parte_1);
if resul_exame_anemia > 0.8       %Se o resultado for positivo p/ anemia
    inicializacao_rede_tipos;     %Aciona a 2 parte. Tipos de anemia
else
    if i_tm>0
        proc_resultado_tm %Resultados para teste massivo
    else
        proc_resultado; %Chamar o processamento dos resultados para 1 paciente
    end
end