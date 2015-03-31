require 'rails_helper'

RSpec.describe "patroes/edit", :type => :view do
  before(:each) do
    @patrao = assign(:patrao, Patrao.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :proposta => 1.5
    ))
  end

  it "renders the edit patrao form" do
    render

    assert_select "form[action=?][method=?]", patrao_path(@patrao), "post" do

      assert_select "input#patrao_nome[name=?]", "patrao[nome]"

      assert_select "input#patrao_endereco[name=?]", "patrao[endereco]"

      assert_select "input#patrao_telefone[name=?]", "patrao[telefone]"

      assert_select "input#patrao_proposta[name=?]", "patrao[proposta]"
    end
  end
end
