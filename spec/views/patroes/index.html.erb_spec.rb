require 'rails_helper'

RSpec.describe "patroes/index", :type => :view do
  before(:each) do
    assign(:patroes, [
      Patrao.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :proposta => 1.5
      ),
      Patrao.create!(
        :nome => "Nome",
        :endereco => "Endereco",
        :telefone => "Telefone",
        :proposta => 1.5
      )
    ])
  end

  it "renders a list of patroes" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
