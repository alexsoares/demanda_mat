class Professor < ActiveRecord::Base
belongs_to :servico
belongs_to :titulacao
belongs_to :trabalhado
belongs_to :acum_trab
has_many :unidade

validates_presence_of :matricula, :message => ' -  MATRÍCULA - PREENCHIMENTO OBRIGATÓRIO'
validates_presence_of :nome, :message => ' -  NOME - PREENCHIMENTO OBRIGATÓRIO'
validates_presence_of :funcao, :message => ' -  FUNÇÃO - PREENCHIMENTO OBRIGATÓRIO'
validates_presence_of :sede_id, :message => ' -  SEDE - PREENCHIMENTO OBRIGATÓRIO'

  validates_numericality_of :INEP, :only_integer => true, :message =>  ' - SOMENTE NÚMEROS'
  validates_numericality_of :RD, :only_integer => true, :message =>  ' - SOMENTE NÚMEROS'

  def before_save
    self.nome.upcase!
    self.endres.upcase!
    self.bairro.upcase!
    self.complemento.upcase!
    self.cidade.upcase!
    self.funcao.upcase!
    self.obs.upcase!
    self.pontuacao_final = (self.total_trabalhado + self.total_titulacao);
  end

  def after_create
    @atualiza_log = Log.new
    @atualiza_log.user_id = self.log_user
    @atualiza_log.professor_id = self.id
    @atualiza_log.obs = "Cadastrado um professor"
    @atualiza_log.data = (Time.now().strftime("%d/%m/%y %H:%M")).to_s
    @atualiza_log.save

  end

  def self.sub_total_dt
    return $soma_st_dt
  end

  def self.sub_total_de
    return $soma_st_de
  end

  def self.sub_total_dr
    return $soma_st_dr
  end

  def self.sub_total_du
    return $soma_st_du
  end

  def self.calculos
    
    
  end

end
