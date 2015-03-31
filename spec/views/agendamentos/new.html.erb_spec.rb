require 'rails_helper'

RSpec.describe "agendamentos/new", :type => :view do
  before(:each) do
    assign(:agendamento, Agendamento.new(
      :Diarista => nil,
      :Patrao => nil,
      :hora => 1,
      :diaria => 1.5
    ))
  end

  it "renders new agendamento form" do
    render

    assert_select "form[action=?][method=?]", agendamentos_path, "post" do

      assert_select "input#agendamento_Diarista_id[name=?]", "agendamento[Diarista_id]"

      assert_select "input#agendamento_Patrao_id[name=?]", "agendamento[Patrao_id]"

      assert_select "input#agendamento_hora[name=?]", "agendamento[hora]"

      assert_select "input#agendamento_diaria[name=?]", "agendamento[diaria]"
    end
  end
end
