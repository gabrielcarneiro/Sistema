require 'rails_helper'

RSpec.describe "diaristas/new", :type => :view do
  before(:each) do
    assign(:diarista, Diarista.new(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :diaria => 1.5
    ))
  end

  it "renders new diarista form" do
    render

    assert_select "form[action=?][method=?]", diaristas_path, "post" do

      assert_select "input#diarista_nome[name=?]", "diarista[nome]"

      assert_select "input#diarista_endereco[name=?]", "diarista[endereco]"

      assert_select "input#diarista_telefone[name=?]", "diarista[telefone]"

      assert_select "input#diarista_diaria[name=?]", "diarista[diaria]"
    end
  end
end
