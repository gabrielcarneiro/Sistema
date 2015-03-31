require 'rails_helper'

RSpec.describe "agendamentos/index", :type => :view do
  before(:each) do
    assign(:agendamentos, [
      Agendamento.create!(
        :Diarista => nil,
        :Patrao => nil,
        :hora => 1,
        :diaria => 1.5
      ),
      Agendamento.create!(
        :Diarista => nil,
        :Patrao => nil,
        :hora => 1,
        :diaria => 1.5
      )
    ])
  end

  it "renders a list of agendamentos" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
