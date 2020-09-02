%Teste massivo-------------------------------------------------------------
global i_tm;
warning off;
winopen('ajuda_teste_massivo.txt');  %Abrir arquivo ajuda em nova janela
winopen('excel_teste_massivo.xlsx'); %Abrir arquivo excel em nova janela
clc;
fprintf('\t\t|ERITROTESTE|\n')
fprintf('\n 1)Siga as instruções do arquivo ajuda')
fprintf('\n 2)Salve e feche a planilha do excel')
fprintf('\n 3)Pressiona qualquer tecla para continuar')
pause;   %Esperar comando do usuário
clc;
fprintf('\t\t|ERITROTESTE|\n')
fprintf(' \n\nProcessando...')
vetor_exame_completo_tm = xlsread('excel_teste_massivo.xlsx');  %Ler o arquivo
%criado pelo usuário com diversos exames ao menos tempo
vetor_exame_parte_1_tm(1,:) = vetor_exame_completo_tm(2,:);  %Fazer a tradução entre
%as diferentes entradas das duas redes.
vetor_exame_parte_1_tm(2,:) = vetor_exame_completo_tm(1,:);
vetor_exame_parte_1_tm(3,:) = (vetor_exame_completo_tm(5,:)/100);
vetor_exame_parte_1_tm(4,:) = vetor_exame_completo_tm(4,:);
vetor_exame_parte_1_tm(5,:) = vetor_exame_completo_tm(3,:);
%Verificar tamanho dos vetrores (quantos exames estão sendo testados)
[t_vertical,t_horizontal]=size(vetor_exame_completo_tm);
vetor_exame_completo=ones(8,t_horizontal); %pre definindo para velocidade
for i_tm=1:t_horizontal
    for j_tm=1:8
        %Chamar a rede uma pessoa de cada vez
        %Separando a planilha com várias pessoas em uma variável contendo
        %apenas uma
        vetor_exame_completo(j_tm) = vetor_exame_completo_tm(j_tm,i_tm);
    end
    vetor_exame_parte_1 = vetor_exame_parte_1_tm(:,i_tm); %Jã foi organizado entre as linhs 16 a 21
    inicializacao_rede_anemia;
end
nome_salvamento = strcat('resultado_',date,'.xlsx');
%Transposiçâo da matriz exame_com_resultado
resultado_transposto=transpose(exame_com_resultado);
%Cabeçalho
cabecalho={'ID','Anemia','Morfologia','Cromaticidade'};
xlswrite(nome_salvamento,cabecalho,'Resultados');
id=transpose(vetor_exame_completo_tm(9,:));
xlswrite(nome_salvamento,id,'Resultados','A2');
xlswrite(nome_salvamento,resultado_transposto,'Resultados','B2');
winopen(nome_salvamento);
menu_inicial;