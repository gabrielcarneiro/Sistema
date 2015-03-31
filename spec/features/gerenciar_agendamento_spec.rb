# coding: utf-8
require 'rails_helper'
feature 'gerenciar Agendamento' do
	scenario 'incluir Agendamento' do # , :js => true do
		visit new_agendamento_path
		preencher_e_verificar_agendamento
	end
	scenario 'alterar Agendamento' do #, :js => true do
		agendamento = FactoryGirl.create(:agendamento)
		visit edit_agendamento_path(agendamento)
		preencher_e_verificar_agendamento
	end
	scenario 'excluir agendamento' do #, :javascript => true do
		agendamento = FactoryGirl.create(:agendamento)
		visit agendamentos_path
		click_link 'Excluir'
	end

	def preencher_e_verificar_agendamento
		fill_in 'Data', :with => "2013-02-10"
		fill_in 'Hora', :with => "13"
		fill_in 'Diaria', :with => "100"
		click_button 'Salvar'
		expect(page).to have_content 'Data: 2013-02-10'
		expect(page).to have_content 'Hora: 13'
		expect(page).to have_content 'Diaria: 100'
	end
end
