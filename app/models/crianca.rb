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
  validates_numericality_of :numero, :only_integer => true, :message =>  ' - NÃO É NÚMERO'


  named_scope :by_nome, lambda {|nome| { :conditions => { :nome => nome }}}
  named_scope :by_nascimento, lambda {|datanascimento| { :conditions => { :nascimento => datanascimento }}}

  def check_tel1
    self.tel1.empty?
  end

  def self.c
    Crianca.find(:all)
  end

  def self.demanda_total
    Crianca.find(:all, :conditions => ["matricula != 1"])
  end

  def self.matricula_total
    Crianca.find(:all, :conditions => ["matricula != 0"])
  end

  def self.b_u
    Crianca.find(:all, :conditions => {:matricula => 1 })
  end

   def self.b_dm
    Crianca.find(:all, :conditions => {:matricula => 0 })
  end

  def self.un_din
    
  end
  
  def before_save
    self.nome.upcase!
    self.bairro.upcase!
    self.complemento.upcase!
    self.mae.upcase!
    self.endereco.upcase!
    self.nome_responsavel.upcase!
    self.parentesco.upcase!
    self.local_trabalho.upcase!
    
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
    if matricula == 1 and unidade_matricula == option1 then
      @status = 1
    else
      if matricula == 1 and unidade_matricula == option2 then
        @status = 2
      else
        if matricula == 1 and unidade_matricula == option3 then
          @status = 3
        else
          if matricula == 1 and unidade_matricula == option4 then
            @status = 4
     else
       @status = 0
          end
          end
      end
     end
   end


  def conf_status
    if status == 0 then
      return 'AGUARDANDO'
    else
      if status == 1 then
          return 'MATRICULADO'
      else
        if status == 2 then
          return 'MATRICULADO - POREM NAO NA OPCAO 1'
        else
          if status == 3 then
            return 'MATRICULADO - POREM NAO NA OPCAO 1'
          else
            if status == 4 then
              return 'MATRICULADO - POREM NAO NA OPCAO 1'
            end
          end
        end
      end
    end
  end
    
  def onde_matricula
    if unidade_matricula == 0 or unidade_matricula == nil then
      return ''
    else
      if unidade_matricula == option1 then
        return Unidade.find_by_id(unidade_matricula).nome
      else
        if unidade_matricula == option2 then
          return "OPCAO 2" + " - " + Unidade.find_by_id(unidade_matricula).nome
        else
          if unidade_matricula == option3 then
            return "OPCAO 3" + " - " + Unidade.find_by_id(unidade_matricula).nome
          end
        end
      end
    end

  end

  def onde_classifica
    if grupo_id == 0 then
      return 'NÃO CLASSIFICAVEL - FORA DO LIMITE DE IDADE'
    else
      return Grupo.find_by_id(grupo_id).descricao
    end
  end

  def opcao1
    if option1 == 0 or option1 == nil then
       return 'NAO REALIZADA'
    else
       return Unidade.find_by_id(option1).nome
    end
  end  

  def opcao2
    if option2 == 0 or option2 == nil then
       return 'NAO REALIZADA'
    else
       return Unidade.find_by_id(option2).nome
    end
  end

  def opcao3
    if option3 == 0 or option3 == nil then
       return 'NAO REALIZADA'
    else
       return Unidade.find_by_id(option3).nome
    end
  end

  def opcao4
    if option4 == 0 or option4 == nil then
       return 'NAO REALIZADA'
    else
       return Unidade.find_by_id(option4).nome
    end
  end

  def tipo_consulta
    if $consulta == 3 then
      return 'CRIANÇA(S) CADASTRADAS'
    else
    if matricula == 0 then
      return 'CRIANÇA(S) AGUARDANDO MATRÍCULA'
    else
      return 'CRIANÇA(S) MATRICULADA(S)'
    end
   end
  end
end


