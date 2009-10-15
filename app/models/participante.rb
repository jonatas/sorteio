class Participante < ActiveRecord::Base
  has_one :brinde

  def self.que_nao_ganharam_brinde
    all.reject{|participante| participante.ganhou_brinde?}
  end

  def ganhou_brinde? 
    !brinde.nil?
  end

  def to_s
    nome
  end
end
