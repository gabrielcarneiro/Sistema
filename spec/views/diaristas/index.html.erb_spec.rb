require 'rails_helper'

RSpec.describe "diaristas/index", :type => :view do
  before(:each) do
    assign(:diaristas, [
      Diarista.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :diaria => 1.5
      ),
      Diarista.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :diaria => 1.5
      )
    ])
  end

  it "renders a list of diaristas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
