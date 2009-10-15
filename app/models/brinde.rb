class Brinde < ActiveRecord::Base
  belongs_to :participante

  validates_presence_of :descricao, :message => "não pode ser vazia"
  validates_length_of   :descricao, :maximum =>50, :minimun => 3, :message=> "deve estar entre 3 e 50"
 # validates_format_of   :descricao, :with => /\d+ ((\w+) ?)+/, :message => "deve ter uma quantidade na frente. ex: '3 caixas de cerveja'"

  validate_on_update :nao_sorteia_um_brinde_ja_foi_sorteado, :if => lambda {|brinde| brinde.sorteado?}

  def nao_sorteia_um_brinde_ja_foi_sorteado
    self.errors.add_to_base "já foi sorteado" if participante_id_changed?
  end

  def sorteado?
    ! participante.nil?
  end

  def sortear!
    participantes = Participante.all #que_nao_ganharam_brinde

    if not participantes.empty?
      update_attributes :participante_id => participantes[rand(participantes.size)].id
    end
  end
end
