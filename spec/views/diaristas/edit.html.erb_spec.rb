require 'rails_helper'

RSpec.describe "diaristas/edit", :type => :view do
  before(:each) do
    @diarista = assign(:diarista, Diarista.create!(
      :nome => "MyString",
      :endereco => "MyString",
      :telefone => "MyString",
      :diaria => 1.5
    ))
  end

  it "renders the edit diarista form" do
    render

    assert_select "form[action=?][method=?]", diarista_path(@diarista), "post" do

      assert_select "input#diarista_nome[name=?]", "diarista[nome]"

      assert_select "input#diarista_endereco[name=?]", "diarista[endereco]"

      assert_select "input#diarista_telefone[name=?]", "diarista[telefone]"

      assert_select "input#diarista_diaria[name=?]", "diarista[diaria]"
    end
  end
end
