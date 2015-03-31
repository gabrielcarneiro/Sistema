require 'rails_helper'

RSpec.describe "diaristas/show", :type => :view do
  before(:each) do
    @diarista = assign(:diarista, Diarista.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :diaria => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Endereco/)
    expect(rendered).to match(/Telefone/)
    expect(rendered).to match(/1.5/)
  end
end
