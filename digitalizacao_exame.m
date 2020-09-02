%Digitaliza��o do Hemograda: Eritrograma-----------------------------------
global vetor_exame_parte_1 vetor_exame_completo;
resposta_s = 't';       	%Usei esse 't' para a vari�vel respostar ter um formato char e n�o cell
while (resposta_s ~= 'm') & (resposta_s ~= 'f') %dupla condi��o para que o usu�rio coloque op��o v�lida
    resposta_s = lower(input(' Sexo [F/M]: ', 's'));
    if resposta_s == 'm'    %Converter sexo para bin�rio. A rede neural n�o trabalha com n�o num�rico.
        sexo = 1;
        break;              %Se o usu�rio colocar uma op��o v�lida, quebra o loop.
    elseif resposta_s == 'f'
        sexo = 0;
        break;
    end
    fprintf(' Resposta inv�lida!\n')
end
idade = input(' Idade: ');   %Coletando os dados dos exames
hemacias = input(' Hem�cias [Milh�es/mm�]: ');
hemoglobina = input(' Hemoglobina [G/DL]: ');
hematocrito = input(' Hemat�crito [%]: ');
vcm = input(' Volume Corpuscular M�dio\n VCM [FL]: ');
hcm = input(' Hemoglobina Corpuscular M�dia\n HCM [PG]: ');
chcm = input(' Concentra��o de hemoglobina corpuscular m�dia\n CHCM [G/DL]: ');
%Agrupar exame em uma �nica vari�vel---------------------------------------
%Esses vetor que entrar� nas redes neurais.
vetor_exame_parte_1 = [sexo; idade; (hematocrito/100); hemoglobina; hemacias];
%Na primeira rede eu usei o hematocrito como porcentagem, mas a andressa 
%usou como n�meros absuloto.
vetor_exame_completo = [idade; sexo; hemacias; hemoglobina; hematocrito; vcm; hcm; chcm];
