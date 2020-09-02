%----------Inicialização---------------------------------------------------
%Esse programa vai servir para o usuário navegar entre as funções do app
global i_tm;
clc;
clear all; %Eliminar sujeira de execuções anteriores (mal necessário)
pause ('on');
%----------Parâmetros iniciais---------------------------------------------
fprintf('\t\t|Nome do app|\n')
fprintf('\n Novo teste \t\t\t\t\t(1)\n')
fprintf('\n Teste massivo \t\t\t\t\t(2)\n')
fprintf('\n Créditos\t\t\t\t\t(3)\n')
fprintf('\n Aviso legal \t\t\t\t\t(4)\n')
fprintf('\n Artigos publicados no tema\t\t\t(5)\n')
fprintf('\n Sair \t\t\t\t\t\t(6)\n')
answer=input('\n Opção: ');
while (answer ~= 1) & (answer ~= 2) & (answer ~= 3) & (answer ~= 4) & (answer ~= 5) & (answer ~= 6)
    fprintf('\n Opção inválida')  %Evitar que o usuário escolha opção inválida
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
        %Proteção para casos em que o app errar o diagnóstico.
        winopen('aviso_legal.txt');
        menu_inicial;
    case 5
        %----------Links para literatura-----------------------------------
        %Link para os anais contendo os artigos.
        links_artigos;
    case 6
        clc;
        fprintf('\n\t\tAté logo...')
        pause(3);
        clc;
        fprintf('\n Code by L. Kort (May, 8, 2020)')
        pause(2);
        exit;
end