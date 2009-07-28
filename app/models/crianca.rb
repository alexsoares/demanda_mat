class Crianca < ActiveRecord::Base
  belongs_to :unidade
  belongs_to :grupo
  belongs_to :regiao

  validates_presence_of :regiao_id, :message => ' - ESCOLHA UMA REGIÃO'
  validates_presence_of :grupo_id, :message => ' - ESCOLHA UMA CLASSIFICAÇÃO'
  validates_presence_of :nome, :message => ' -  NOME DA CRIANÇA É OBRIGATÓRIO'
  validates_presence_of :responsavel, :message => ' - NOME DO RESPONSÁVEL É OBRIGATÓRIO'
  validates_presence_of :celular, :if => :check_tel1, :message => ' - É NECESSÁRIO UM TELEFONE FIXO OU CELULAR'
  validates_numericality_of :celular, :if => :check_tel1 , :only_integer => true, :message =>  ' - NÃO É UM NÚMERO'
  validates_presence_of :option1, :message => ' - ESCOLHA PELO MENOS UMA OPÇÃO'
  validates_numericality_of :tel1, :only_integer => true, :message =>  ' - NÃO É NÚMERO'
  validates_format_of :nome, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"
  validates_format_of :mae, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"
  validates_format_of :endereco, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"
  validates_format_of :complemento, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"
  validates_format_of :nome_responsavel, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"
  validates_format_of :local_trabalho, :with => /\A[A-Z]+\Z/,  :message => "SOMENTE LETRAS EM MAIÚSCULAS SEM SEM ACENTUAÇÃO"


  named_scope :by_nome, lambda {|nome| { :conditions => { :nome => nome }}}
  named_scope :by_nascimento, lambda {|datanascimento| { :conditions => { :nascimento => datanascimento }}}

  def check_tel1
    self.tel1.empty?
  end

  def check_opcao
    self.option2.empty?

  end

  def trabalha?
    if self.trabalha then
      return 'Sim'
    else 
      return 'Não'
    end
  end


  def verifica_trabalha
    if trabalha == true then
       return 'SIM'
    else
       return 'NÃO'
    end
  end

  def verifica_matricula
    if matricula == 1 then
      return 'SIM'
    else
      return 'NÃO'
    end
  end

  def status
    if matricula == 1 then
      @status = 1
    else
      @status = 0
    end
  end

  def conf_status
    if status == 0 then
      return 'AGUARDANDO'
    else
      return 'MATRICULADO'
    end
    
  end
  def onde_matricula
    if unidade_matricula == 0 or unidade_matricula == nil then
      return ''
    else
      return Unidade.find_by_id(unidade_matricula).nome
    end
  end

  def onde_classifica
    return Grupo.find_by_id(grupo_id).descricao
  end

  def opcao1
    if option1 == 0 or option1 == nil then
       return 'Não Realizada'
    else
       return Unidade.find_by_id(option1).nome
    end
  end  

  def opcao2
    if option2 == 0 or option2 == nil then
       return 'Não Realizada'
    else
       return Unidade.find_by_id(option2).nome
    end
  end

  def opcao3
    if option3 == 0 or option3 == nil then
       return 'Não Realizada'
    else
       return Unidade.find_by_id(option3).nome
    end
  end

  def opcao4
    if option4 == 0 or option4 == nil then
       return 'Não Realizada'
    else
       return Unidade.find_by_id(option4).nome
    end
  end




end


