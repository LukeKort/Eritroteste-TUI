%Apresenta��o dos resultados para teste massivo----------------------------
%Criterios para o diagn�stico de anemia------------------------------------
if resul_exame_anemia >= 0.8    
    %Se confirmada anemia, inicia-se os crit�rios de tipifica��o quanto a
    %anomalia referente ao tamanho das hem�cias
    if resul_exame_tipo_1(1) > 0.8
        tipo_1_num = 1; %Equivale a hem�cias pequenas
    elseif resul_exame_tipo_1(2) > 0.8
        tipo_1_num = 2; %Equivale a hem�cias normais
    else
        tipo_1_num = 3; %Equivale a hem�cias grandes
    end
    %Se confirmada anemia, inicia-se os crit�rios de tipifica��o quanto a
    %anomalia referente � quandidade de hemoglobina.
    if resul_exame_tipo_2(1) > 0.8
        tipo_2_num = 1; %Equivale a meno n de hemoglobina
    elseif resul_exame_tipo_2(2) > 0.8
        tipo_2_num = 2; %Equivale a normal n de hemoglobina
    else
        tipo_2_num = 3; %Equivale a maior n de hemoglobina
    end
end
%Exporta��o dos resultados-------------------------------------------------
exame_com_resultado(1,i_tm) = resul_exame_anemia;  %Adc resultado ao exame
if resul_exame_anemia >= 0.8 %Sem anemia, sem classifica��o
    exame_com_resultado(2,i_tm) = tipo_1_num;
    exame_com_resultado(3,i_tm) = tipo_2_num;
end
%Vari�vel exame_com_resultado. Legenda das posi��es (x).
% exame_com_resultado(1) idade
% exame_com_resultado(2) sexo
% exame_com_resultado(3) hemacias
% exame_com_resultado(4) hemoglobina
% exame_com_resultado(5) hematocrito
% exame_com_resultado(6) vcm
% exame_com_resultado(7) hcm
% exame_com_resultado(8) chcm
% exame_com_resultado(9) resultado p/ anemia
% exame_com_resultado(10) resultado p/ anomalia tipo 1
% exame_com_resultado(11) resultado p/ anomalia tipo 2