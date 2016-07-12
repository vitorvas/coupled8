12/07/2016

Malha celula foi refinada. Atualmente com 347 mil elementos.
Testes com o milonga (seções de choque WIMS) não terminaram.
O problema, aparentemente, não converge.

Mudanças no fvSolution para parada pelo valor dos resíduos.
Lembrando que neste solver é um fvSolution para cada 
material.

11/07/2016

Testes com a malha para a celula.
A malha tem 86mil elementos. Talvez venha a ser refinada.

- Essa malha funciona com o milonga.

03/07/2016 (atualizado)

Nova mudança de malha para um subcanal. Malha ainda em desenvolvimento.

- Deve ser melhor refinada
- NAO FUNCIONA no milonga. Aguardando resposta da lista do gmsh.
  (Erro indentificado e solução encontrada. Entretanto a malha armazenada ainda não foi corrigida.)

09/05/2016

Caso duplicado de coupled 8.

A malha usada atualmente é a boa3dtheler.msh.
Nesta versão, o acoplamento é funcional.

OpenFOAM:

- Colocar simetria.
- Opção para rodar descoplado caso não encontre 
  shared memory.
- Calcular a potência por 1/4 de combustível.

milonga:
- Acrescentar todas as funções de interpolação.




