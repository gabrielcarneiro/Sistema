require 'rails_helper'

RSpec.describe "patroes/show", :type => :view do
  before(:each) do
    @patrao = assign(:patrao, Patrao.create!(
      :nome => "Nome",
      :endereco => "Endereco",
      :telefone => "Telefone",
      :proposta => 1.5
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
