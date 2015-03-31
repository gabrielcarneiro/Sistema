# coding: utf-8
require 'rails_helper'
feature 'gerenciar Diarista' do
scenario 'incluir Diarista' do # , :js => true do
visit new_diarista_path
preencher_e_verificar_diarista
end
scenario 'alterar Diarista' do #, :js => true do
diarista = FactoryGirl.create(:diarista)
visit edit_diarista_path(diarista)
preencher_e_verificar_diarista
end
scenario 'excluir diarista' do #, :javascript => true do
diarista = FactoryGirl.create(:diarista)
visit diaristas_path
click_link 'Excluir'
end
def preencher_e_verificar_diarista
fill_in 'Nome', :with => "Luiza"
fill_in 'Endereço', :with => "Rua XXX"
fill_in 'Telefone', :with => "99999"
fill_in 'Diaria', :with => "100"
click_button 'Salvar'
expect(page).to have_content 'Nome: Luiza'
expect(page).to have_content 'Endereço: Rua XXX'
expect(page).to have_content 'Telefone: 99999'
expect(page).to have_content 'Diaria: 100'
end
end
