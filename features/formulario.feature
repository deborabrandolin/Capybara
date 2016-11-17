Feature: formulario
Eu cliente
Quero ter registro de instituições beneficentes
Para verificar as informações do formulário armazenadas para avaliação

@oportunidades0
Scenario: Validar o formulario sem preencher os campos
Given que eu estou no dotzoportunidades
When eu clico no botao cadastrar
Then o sistema retorna o foco para o preenchimento do campo instituicao

@oportunidades1
Scenario: Validar o formulário sem preencher os campos obrigatorios
Given que eu estou no dotzoportunidades
When eu preencher o campo "Funcionário Dotz" com "FuncionarioTeste"
And eu preencher o campo "Empresa parceira" com "EmpresaTeste"
And eu preencher o campo "Oportunidade.Informacoes" com "InformaçõesTeste"
And eu clico no botao cadastrar
Then o sistema retorna o foco para o preenchimento do campo instituicao

@oportunidades2
Scenario: Validar o formulário e preencher todos os campos obrigatórios com dados válidos
Given que eu estou no dotzoportunidades
When eu preencher o campo "Nome da instituição" com "Instituição Teste"
And eu preencher o campo "CNPJ" com "88158115000150"
And eu preencher o campo "Email" com "teste@teste.com.br"
And eu preencher o campo "Telefone" com "11998880633"
And eu preencher o campo "Oportunidade.Estado" com "SP"
And eu preencher o campo "Oportunidade.Cidade" com "São Paulo"
And eu preencher o campo "Endereço" com "Rua Teste, 100"
And eu preencher o campo "Contato" com "Contato_Teste"
And eu preencher o campo "Escopo de atuação" com "Escopo_Atuacao_Teste"
And eu preencher o campo "Breve histórico de atuação da instituição" com "Historico_Atuacao_Instituicao"
And eu preencher o campo "Descrição do projeto em potencial" com "Pontencial_Teste"
And eu clico no botao cadastrar
And o sistema direciona para a tela de sucesso
And o sistema exibe a mensagem "Seus dados foram enviados com sucesso."
And eu clico no botao voltar
And eu retorno a tela de cadastro


@oportunidades3
Scenario: Realizar um cadastro com o MongoDB fora
Given que eu estou no Dotz Oportunidade com o MongoDB fora
And eu preencher o campo "Nome da instituição" com "MongoFora"
And eu preencher o campo "CNPJ" com "88158115000150"
And eu preencher o campo "Email" com "teste@teste.com.br"
And eu preencher o campo "Telefone" com "1133779693"
And eu preencher o campo "Oportunidade.Estado" com "SP"
And eu preencher o campo "Oportunidade.Cidade" com "São Paulo"
And eu preencher o campo "Endereço" com "Rua Joaquim Floriano, 533 - Itaim Bibi"
And eu preencher o campo "Contato" com "Teste_Contato"
And eu preencher o campo "Funcionário Dotz" com "Funcionario_Teste"
And eu preencher o campo "Oportunidade.EmpresaIndicadora" com "Teste_Empresa"
And eu preencher o campo "Escopo de atuação" com "Atuacao Mongo"
And eu preencher o campo "Público abordado pela instituição" com "Instituicao_Testes"
And eu preencher o campo "Breve histórico de atuação da instituição" com "Nenhum"
And eu preencher o campo "Descrição do projeto em potencial" com "Nenhum"
And eu preencher o campo "Oportunidade.Informacoes" com "Nada"
When eu clico no botao cadastrar
Then o sistema exibe a mensagem "Desculpe, não foi possível transmitir os dados, tente novamente mais tarde."
