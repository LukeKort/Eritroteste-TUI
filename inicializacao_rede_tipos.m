%Execução do teste anemia--------------------------------------------------
global resul_exame_tipo_1 resul_exame_tipo_2;
clear net %Evitar conflitos entre redes diferentes
%Quanto ao tamanho das hemácias
load rede_anemia_tipo_1.mat;   %Carregar a última rede treinada p/ 1º tipos
resul_exame_tipo_1 = sim(net, vetor_exame_completo);
clear net %Evitar conflitos entre redes diferentes
%Quando a pigmentação das hemácias
load rede_anemia_tipo_2.mat; %Carregar a última rede treinada p/ 2º tipos
resul_exame_tipo_2 = sim(net, vetor_exame_completo);
if i_tm>0
    proc_resultado_tm %Resultados para teste massivo
else
    proc_resultado; %Chamar o processamento dos resultados para 1 paciente
end