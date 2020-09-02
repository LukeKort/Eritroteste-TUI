%Execu��o do teste anemia--------------------------------------------------
global resul_exame_tipo_1 resul_exame_tipo_2;
clear net %Evitar conflitos entre redes diferentes
%Quanto ao tamanho das hem�cias
load rede_anemia_tipo_1.mat;   %Carregar a �ltima rede treinada p/ 1� tipos
resul_exame_tipo_1 = sim(net, vetor_exame_completo);
clear net %Evitar conflitos entre redes diferentes
%Quando a pigmenta��o das hem�cias
load rede_anemia_tipo_2.mat; %Carregar a �ltima rede treinada p/ 2� tipos
resul_exame_tipo_2 = sim(net, vetor_exame_completo);
if i_tm>0
    proc_resultado_tm %Resultados para teste massivo
else
    proc_resultado; %Chamar o processamento dos resultados para 1 paciente
end