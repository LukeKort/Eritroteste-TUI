%Digitalização do Hemograda: Eritrograma-----------------------------------
global vetor_exame_parte_1 vetor_exame_completo;
resposta_s = 't';       	%Usei esse 't' para a variável respostar ter um formato char e não cell
while (resposta_s ~= 'm') & (resposta_s ~= 'f') %dupla condição para que o usuário coloque opção válida
    resposta_s = lower(input(' Sexo [F/M]: ', 's'));
    if resposta_s == 'm'    %Converter sexo para binário. A rede neural não trabalha com não numérico.
        sexo = 1;
        break;              %Se o usuário colocar uma opção válida, quebra o loop.
    elseif resposta_s == 'f'
        sexo = 0;
        break;
    end
    fprintf(' Resposta inválida!\n')
end
idade = input(' Idade: ');   %Coletando os dados dos exames
hemacias = input(' Hemácias [Milhões/mm³]: ');
hemoglobina = input(' Hemoglobina [G/DL]: ');
hematocrito = input(' Hematócrito [%]: ');
vcm = input(' Volume Corpuscular Médio\n VCM [FL]: ');
hcm = input(' Hemoglobina Corpuscular Média\n HCM [PG]: ');
chcm = input(' Concentração de hemoglobina corpuscular média\n CHCM [G/DL]: ');
%Agrupar exame em uma única variável---------------------------------------
%Esses vetor que entrará nas redes neurais.
vetor_exame_parte_1 = [sexo; idade; (hematocrito/100); hemoglobina; hemacias];
%Na primeira rede eu usei o hematocrito como porcentagem, mas a andressa 
%usou como números absuloto.
vetor_exame_completo = [idade; sexo; hemacias; hemoglobina; hematocrito; vcm; hcm; chcm];
