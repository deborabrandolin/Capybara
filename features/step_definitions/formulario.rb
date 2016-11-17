Given(/^que eu estou no dotzoportunidades$/) do
  CadastroPages.new.acessar_site('site')
end

Given(/^que eu estou no Dotz Oportunidade com o MongoDB fora$/) do
  CadastroPages.new.acessar_site('mongo')
end

Then (/^o sistema direciona para a tela de sucesso$/) do
  CadastroPages.new.acessar_site('sucesso')
end

When(/^eu clico no botao cadastrar$/) do
  CadastroPages.new.clicar_cadastrar
end

Then(/^eu clico no botao voltar$/) do
  CadastroPages.new.clicar_voltar
end

Then(/^o sistema retorna o foco para o preenchimento do campo instituicao$/) do
  CadastroPages.new.verificar_foco_nome_instituicao
end

Given(/^eu preencher o campo "([^"]*)" com "([^"]*)"$/) do |nome_campo, valor|
  CadastroPages.new.preencher_campo(nome_campo, valor)
end

Then(/^o sistema exibe a mensagem "([^"]*)"$/) do |mensagem|
CadastroPages.new.verificar_mensagem(mensagem)
end

Then(/^eu retorno a tela de cadastro$/) do
  CadastroPages.new.validar_url
end
