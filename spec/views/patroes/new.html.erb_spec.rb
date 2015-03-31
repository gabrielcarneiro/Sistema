require 'rails_helper'

RSpec.describe "patroes/new", :type => :view do
  before(:each) do
    assign(:patrao, Patrao.new(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :proposta => 1.5
    ))
  end

  it "renders new patrao form" do
    render

    assert_select "form[action=?][method=?]", patroes_path, "post" do

      assert_select "input#patrao_nome[name=?]", "patrao[nome]"

      assert_select "input#patrao_endereco[name=?]", "patrao[endereco]"

      assert_select "input#patrao_telefone[name=?]", "patrao[telefone]"

      assert_select "input#patrao_proposta[name=?]", "patrao[proposta]"
    end
  end
end
