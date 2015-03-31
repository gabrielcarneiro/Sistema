class Agendamento < ActiveRecord::Base
  belongs_to :Diarista
  belongs_to :Patrao
end
