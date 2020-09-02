%Teste massivo-------------------------------------------------------------
global i_tm;
winopen('ajuda_teste_massivo.txt');  %Abrir arquivo ajuda em nova janela
winopen('excel_teste_massivo.xlsx'); %Abrir arquivo excel em nova janela
clc;
fprintf('\t\t|Nome do app|\n')
fprintf('\n 1)Siga as instru��es do arquivo ajuda')
fprintf('\n 2)Salve e feche a planilha do excel')
fprintf('\n 3)Pressiona qualquer tecla para continuar')
pause;   %Esperar comando do usu�rio
clc;
fprintf('\t\t|Nome do app|\n')
fprintf(' \n\nProcessando...')
vetor_exame_completo_tm = xlsread('excel_teste_massivo.xlsx');  %Ler o arquivo
%criado pelo usu�rio com diversos exames ao menos tempo
vetor_exame_parte_1_tm(1,:) = vetor_exame_completo_tm(2,:);  %Fazer a tradu��o entre
% as diferentes entradas das duas redes.
vetor_exame_parte_1_tm(2,:) = vetor_exame_completo_tm(1,:);
vetor_exame_parte_1_tm(3,:) = (vetor_exame_completo_tm(5,:)/100);
vetor_exame_parte_1_tm(4,:) = vetor_exame_completo_tm(4,:);
vetor_exame_parte_1_tm(5,:) = vetor_exame_completo_tm(3,:);
%Verificar tamanho dos vetrores (quantos exames est�o sendo testados)
[t_vertical,t_horizontal]=size(vetor_exame_completo_tm);
for i_tm=1:t_horizontal
    %Chamar a rede uma pessoa de cada vez
    %Separando a planilha com v�rias pessoas em uma vari�vel contendo
    %apenas uma
    vetor_exame_parte_1 = vetor_exame_parte_1_tm(:,i_tm);
    vetor_exame_completo = vetor_exame_completo_tm(:,i_tm);
    inicializacao_rede_anemia;
end
nome_salvamento = strcat('resultado_',date,'.xlsx');
xlswrite(nome_salvamento,exame_com_resultado);
winopen(nome_salvamento);
menu_inicial;