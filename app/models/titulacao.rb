class Titulacao < ActiveRecord::Base
has_and_belongs_to_many :professors,
                        :join_table => "titulo_professors",
                        :association_foreign_key => "titulo_id"

validates_presence_of :descricao, :message => ' -  DESCRIÇÃO DO TÍTULO  - PREENCHIMENTO OBRIGATÓRIO'
validates_presence_of :tipo, :message => ' -  TIPO DE VALIDADE DO TÍTULO - PREENCHIMENTO OBRIGATÓRIO'
validates_presence_of :referencia, :message => ' -  REFERÊNCIA - PREENCHIMENTO OBRIGATÓRIO'

  validates_numericality_of :valor, :greater_than_or_equal_to => 0, :message => ' -  APENAS VALORES POSITIVOS'

  def before_save
    self.descricao.upcase!
    self.tipo.upcase!
    self.referencia.upcase!
  end
  

end
