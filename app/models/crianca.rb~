class Crianca < ActiveRecord::Base
  belongs_to :unidade
  belongs_to :grupo
  belongs_to :regiao
  validates_presence_of :regiao_id, :message => ' - Escolha uma Região'
  validates_presence_of :grupo_id, :message => ' - Escolha uma classificação'
  validates_presence_of :nome, :message => ' - O nome da Criança é obrigatório'
  validates_presence_of :responsavel, :message => ' - O nome do Responsável é obrigatório'
  validates_presence_of :celular, :if => :check_tel1, :message => ' - É necessário um Telefone Fixo ou Celular'

  def check_tel1
    self.tel1.empty?
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
       @vtrabalha = 'SIM'
    else
       @vtrabalha = 'NÃO'
    end
  end

  def verifica_matricula
    if matricula == 1 then
      @vmatriculado = 'SIM'
    else
      @vmatriculado = 'NÃO'
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
      @conf_status = 'AGUARDANDO'
    else
      @conf_status = 'MATRICULADO'
    end
    
  end
  def onde_matricula
    if unidade_matricula == 0 then
      @unmats = ''
    else
      @unmats = Unidade.find_by_id(unidade_matricula).nome
    end
  end

  def onde_classifica
    @classif = Grupo.find_by_id(grupo_id).descricao
  end



end


