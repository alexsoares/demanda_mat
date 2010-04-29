class Unidade < ActiveRecord::Base
  belongs_to :regiao
  has_many :criancas

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
    if tipo == 5 then
       @teste =  'CIEP'
    else
    if tipo == 6 then
       @teste =  'TEMPO DE VIVER'
    else
    if tipo == 7 then
       @teste =  'FILANTROPICA'
    else
       @teste = 'NADA SELECIONADO'
    end
    end
    end
    end
    end
    end
    end
  end

end
