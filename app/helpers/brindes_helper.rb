module BrindesHelper
  def sortear_ou_exibir_ganhador_do(brinde)
     if brinde.participante.nil?
       link_to 'sortear', :action => 'sortear', :id => brinde.id 
     else 
       h brinde.participante
     end
  end
end
