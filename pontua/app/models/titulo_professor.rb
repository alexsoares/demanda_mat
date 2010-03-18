DTA = Date.today
class TituloProfessor < ActiveRecord::Base 
  validates_presence_of :professor_id, :message => ' -  PROFESSOR - PREENCHIMENTO OBRIGATÓRIO'
  validates_presence_of :titulo_id, :message => ' -  TITULO - PREENCHIMENTO OBRIGATÓRIO'
  validates_numericality_of :quantidade

  def before_save
    self.obs.upcase!
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
          self.dt_titulo = (DTA.strftime("%Y").to_i).to_s + "-10-31"
          self.dt_validade = ((DTA.strftime("%Y").to_i) + 1).to_s + "-10-31"
          self.pontuacao_titulo = self.quantidade * self.valor
          if DTA.strftime("%d-%m-%y").to_date < self.dt_validade
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

  def before_destroy
    if self.status == true
      @prof_total_trabalhado = Professor.find(self.professor_id)
      @prof_total_trabalhado.total_titulacao = @prof_total_trabalhado.total_titulacao - self.pontuacao_titulo
      @prof_total_trabalhado.pontuacao_final = @prof_total_trabalhado.total_titulacao + @prof_total_trabalhado.total_trabalhado
      @prof_total_trabalhado.save
    end
  end


  def verifica_validade
  end
end
