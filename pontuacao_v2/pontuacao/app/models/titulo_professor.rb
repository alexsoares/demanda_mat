
class TituloProfessor < ActiveRecord::Base 
  validates_presence_of :professor_id, :message => ' -  PROFESSOR - PREENCHIMENTO OBRIGATÓRIO'
  validates_presence_of :titulo_id, :message => ' -  TITULO - PREENCHIMENTO OBRIGATÓRIO'
  validates_numericality_of :quantidade,:if => :verify_qtd?, :message => ' - Acima de 30 hrs'
  
  belongs_to :professor
  belongs_to :titulacao
  DTA = Date.today


  before_save :verifica_valor_titulos, :verify_qtd?
  before_destroy :atualiza_valor_total_apos_delecao


protected


  def verify_qtd?
    if !(self.tipo_curso == true) and self.titulo_id == 7
      if self.quantidade < 30
        errors.add(:tipo_curso, 'Curso à distancia somente acima de 30 hrs de duração')
      end
    end
  end

  def verifica_valor_titulos
      self.obs.upcase!
      self.ano_letivo = Time.current.strftime("%Y")
      if self.titulo_id == 6
        self.tipo_curso = 1
      end
      @titulacao = Titulacao.find(self.titulo_id)
      @atualiza_professor = Professor.find(self.professor_id)
      self.valor = @titulacao.valor
      if (self.titulo_id == 1) or (self.titulo_id == 2) or (self.titulo_id == 3) or (self.titulo_id == 4) or (self.titulo_id == 5)
        self.pontuacao_titulo = self.quantidade * self.valor
        self.status = 1
        @atualiza_professor.total_titulacao = @atualiza_professor.total_titulacao + self.pontuacao_titulo
        @atualiza_professor.save
      else
        @dta = ((DTA.strftime("%Y").to_i) - 1).to_s + "-11-01"
        if self.dt_titulo < @dta.to_date
          self.status = 0
        else
          if (self.titulo_id == 6) or (self.titulo_id == 7) or (self.titulo_id == 8)
            self.dt_titulo = (DTA.strftime("%Y").to_i).to_s + "-06-30"
            self.status = 1
          if self.dt_titulo.to_s > "30/06/2010"
            self.status = 0
          end
            self.dt_validade = ((DTA.strftime("%Y").to_i)).to_s + "-06-30"
            #self.dt_validade = "2010"
            self.pontuacao_titulo = self.quantidade * self.valor
            teste = DTA.strftime("%Y-%m-%d").to_date
            if teste > self.dt_validade
              @atualiza_professor.total_titulacao = @atualiza_professor.total_titulacao + self.pontuacao_titulo
              @atualiza_professor.save
              self.status = 1
            else
              self.status = 0
            end
          end
        end
      end
  end


  def atualiza_valor_total_apos_delecao
    if self.status == true
      @prof_total_trabalhado = Professor.find(self.professor_id)
      @prof_total_trabalhado.total_titulacao = @prof_total_trabalhado.total_titulacao - self.pontuacao_titulo
      @prof_total_trabalhado.pontuacao_final = @prof_total_trabalhado.total_titulacao + @prof_total_trabalhado.total_trabalhado
      @prof_total_trabalhado.save
    end
  end


end
