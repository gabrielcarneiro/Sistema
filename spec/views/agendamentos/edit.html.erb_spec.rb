require 'rails_helper'

RSpec.describe "agendamentos/edit", :type => :view do
  before(:each) do
    @agendamento = assign(:agendamento, Agendamento.create!(
      :Diarista => nil,
      :Patrao => nil,
      :hora => 1,
      :diaria => 1.5
    ))
  end

  it "renders the edit agendamento form" do
    render

    assert_select "form[action=?][method=?]", agendamento_path(@agendamento), "post" do

      assert_select "input#agendamento_Diarista_id[name=?]", "agendamento[Diarista_id]"

      assert_select "input#agendamento_Patrao_id[name=?]", "agendamento[Patrao_id]"

      assert_select "input#agendamento_hora[name=?]", "agendamento[hora]"

      assert_select "input#agendamento_diaria[name=?]", "agendamento[diaria]"
    end
  end
end
