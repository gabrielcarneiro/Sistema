# coding: utf-8
require 'rails_helper'
feature 'gerenciar Patrao' do
	scenario 'incluir Patrao' do # , :js => true do
		visit new_patrao_path
		preencher_e_verificar_patrao
	end
	scenario 'alterar Patrao' do #, :js => true do
		patrao = FactoryGirl.create(:patrao)
		visit edit_patrao_path(patrao)
		preencher_e_verificar_patrao
	end
	scenario 'excluir patrao' do #, :javascript => true do
		patrao = FactoryGirl.create(:patrao)
		visit patroes_path
		click_link 'Excluir'
	end
	def preencher_e_verificar_patrao
		fill_in 'Nome', :with => "Lucio"
		fill_in 'Endereço', :with => "Rua XXXX"
		fill_in 'Telefone', :with => "999999"
		fill_in 'Proposta', :with => "120"
		click_button 'Salvar'
		expect(page).to have_content 'Nome: Lucio'
		expect(page).to have_content 'Endereço: Rua XXXX'
		expect(page).to have_content 'Telefone: 999999'
		expect(page).to have_content 'Proposta: 120'
	end
end
