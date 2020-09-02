%----------Links para artigos-----------------------------------------------
%Esse parte do programa serve para abrir os links dos anais contendo os
%artigos referente as redes neurais desse trabalho.
clc;
fprintf('\t\t|Nome do app|\n')
fprintf('\n Anais ERMAC 2018 \t\t\t\t(1)')
fprintf('\n Diagnóstico assistido por inteligência\n computacional para identificação \n de anemias. Pg. 123.')
fprintf('\n\n Anais ENMC 2019\t\t\t\t(2)')
fprintf('\n Utilização de Redes Neurais Artificiais\n na classificação de anemias.\n Pg. 1017.')
fprintf('\n\n Voltar ao menu anterior\t\t\t(3)\n')
answer=input('\n Opção: ');
while (answer ~= 1) & (answer ~= 2) & (answer ~= 3)
    fprintf(' \nOpção inválida')  %Evitar que o usuário escolha opção inválida
    pause(2);
    links_artigos;
end
switch answer
    case 1
        web('http://ermac.ufes.br/sites/ermac.ufes.br/files/field/anexo/anais_ermac_0.pdf','-browser');
    case 2
        web('http://enmc.fadepe.org.br/assets/files/Anais_ENMC_2019.pdf','-browser');
    case 3
        menu_inicial;
end
links_artigos;  %Permitir que o usuário abra todos os links antes de voltar
%ao menu inicial


