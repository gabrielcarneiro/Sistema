require 'rails_helper'

RSpec.describe "agendamentos/show", :type => :view do
  before(:each) do
    @agendamento = assign(:agendamento, Agendamento.create!(
      :Diarista => nil,
      :Patrao => nil,
      :hora => 1,
      :diaria => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/1.5/)
  end
end
