class Unidade < ActiveRecord::Base
  belongs_to :regiao

  def nome_tipo

    if tipo == 1 then
       @teste =  'CRECHE'
    else
    if tipo == 2 then
       @teste =  'EMEI'
    else
    if tipo == 3 then
       @teste =  'CASA DA CRIANÇA'
    else
    if tipo == 4 then
       @teste =  'EMEF'
    else
       @teste = 'CIEP'
    end
    end
    end
    end
  end

end
