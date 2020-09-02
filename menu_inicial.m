%----------Inicializa��o---------------------------------------------------
%Esse programa vai servir para o usu�rio navegar entre as fun��es do app
global i_tm;
clc;
clear all; %Eliminar sujeira de execu��es anteriores (mal necess�rio)
pause ('on');
%----------Par�metros iniciais---------------------------------------------
fprintf('\t\t|Nome do app|\n')
fprintf('\n Novo teste \t\t\t\t\t(1)\n')
fprintf('\n Teste massivo \t\t\t\t\t(2)\n')
fprintf('\n Cr�ditos\t\t\t\t\t(3)\n')
fprintf('\n Aviso legal \t\t\t\t\t(4)\n')
fprintf('\n Artigos publicados no tema\t\t\t(5)\n')
fprintf('\n Sair \t\t\t\t\t\t(6)\n')
answer=input('\n Op��o: ');
while (answer ~= 1) & (answer ~= 2) & (answer ~= 3) & (answer ~= 4) & (answer ~= 5) & (answer ~= 6)
    fprintf('\n Op��o inv�lida')  %Evitar que o usu�rio escolha op��o inv�lida
    pause(2);
    menu_inicial
end
switch answer
    case 1
        i_tm = 0;
        inicializacao_rede_anemia;
    case 2
        teste_massivo;
    case 3
        %----------Creditos dos criadores----------------------------------
        creditos;
    case 4
        %----------Aviso legal---------------------------------------------
        %Prote��o para casos em que o app errar o diagn�stico.
        winopen('aviso_legal.txt');
        menu_inicial;
    case 5
        %----------Links para literatura-----------------------------------
        %Link para os anais contendo os artigos.
        links_artigos;
    case 6
        clc;
        fprintf('\n\t\tAt� logo...')
        pause(3);
        clc;
        fprintf('\n Code by L. Kort (May, 8, 2020)')
        pause(2);
        exit;
end