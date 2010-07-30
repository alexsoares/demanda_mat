class Matricula < ActiveRecord::Base
  belongs_to :crianca
  belongs_to :unidade
  belongs_to :vaga
  ANO = %w(2008 2009 2010 2011 2012 2013)


  before_save :associa_numero_vaga

  def associa_numero_vaga
    self.vaga_num = Crianca.find(self.crianca_id).vaga_num
  end
end
