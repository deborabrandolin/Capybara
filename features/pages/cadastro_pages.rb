class CadastroPages
	include Capybara::DSL
	include RSpec::Matchers

	def acessar_site(site)
		visit DEFAULT_DATA['url'][site]
	end

	def validar_url
		if current_url == 'http://stage.dotz.com.br/dotzoportunidades/Home/'
			puts "Passed"
		else
			puts "Erro: A URL está incorreta"
		end
	end

	def clicar_cadastrar
		find_button('btn_enviar').click
	end

	def clicar_voltar
		click_button 'Voltar'
	end

	def verificar_foco_nome_instituicao
		expect(page).to have_selector('#Oportunidade_Instituicao', visible: true)
	end

	def preencher_campo(nome_campo, valor)
		page.fill_in(nome_campo, :with => valor)
	end

	def verificar_mensagem(mensagem)
		within('div.col.m10') do
			page.assert_text(mensagem)
		end
	end
end
