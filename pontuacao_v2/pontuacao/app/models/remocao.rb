class Remocao < ActiveRecord::Base

before_create :executar_remocao
before_update :finalizar_remocao

protected
def executar_remocao
      @trab_ant = Trabalhado.find_by_professor_id(self.professor_id, :conditions => 'ano = ' + $data2.to_s + ' and ano_letivo = ' + $data.to_s)
      @trab_atual = Trabalhado.find_by_professor_id(self.professor_id, :conditions =>'ano = ' + $data.to_s + ' and ano_letivo = ' + $data.to_s)
      @atualiza_trabalhado = Trabalhado.find_by_professor_id(self.professor_id, :conditions => 'ano_letivo = ' + $data.to_s)
      @ac_t = AcumTrab.find_by_professor_id(self.professor_id)
      @at_professors = Professor.find(self.professor_id)

    if self.remocao = 1 then
        self.valor_unid = @ac_t.valor_unid
        self.tot_acum_unid = @ac_t.tot_acum_unid
        self.tot_geral_unid = @ac_t.tot_acum_unid

      if (@trab_ant).nil?
    		self.unidade_ant = 0
      else
        self.unidade_ant = @trab_ant.unidade
      end
      #Contas complexas
      self.total = (@ac_t.pont_base_trab * (@ac_t.tot_acum_ant_trab + @trab_ant.dias_trab + @trab_atual.dias_trab))
      self.total = self.total + (@ac_t.pont_base_efet * (@ac_t.tot_acum_ant_efet + @trab_ant.dias_efetivos + @trab_atual.dias_efetivos))
      self.total = self.total + (@ac_t.pont_base_rede * (@ac_t.tot_acum_ant_rede + @trab_ant.dias_rede + @trab_atual.dias_rede))
              #self.total = self.total + (i.pont_base_unid * (i.tot_acum_ant_unid + j.dias_unidade + h.dias_unidade))
        @at_professors.total_trabalhado = self.total
        @at_professors.pontuacao_final = self.total + @at_professors.total_titulacao
        @at_professors.save
      if (@trab_atual).nil?
    		self.unidade_atual = 0
      else
        self.unidade_atual = @trab_atual.unidade
      end
#================Atualiza Trabalhados==================
        @atualiza_trabalhado.unidade = 0
        @atualiza_trabalhado.save
#================Atualiza Acum_trabs===================
      @ac_t.verifica = 2
      @ac_t.valor_unid = 0
      @ac_t.tot_geral_unid = 0
      @ac_t.tot_acum_unid = 0
      @ac_t.save
#===============Atualiza Professors====================
        @at_professors.flag = 1
        @at_professors.save
#======================================================
  end
end

def finalizar_remocao
        @trab_ant = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data2.to_s + ' and ano_letivo = ' + $data.to_s)
      @trab_atual = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data.to_s + ' and ano_letivo = ' + $data.to_s)
      @atualiza_trabalhado = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano_letivo = ' + $data.to_s)
      @ac_t = AcumTrab.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s)
      @at_professors = Professor.find(:all, :conditions => 'id = ' + (self.professor_id).to_s)

    	if remocao_efetivada == 1 then
        self.flag_remocao_finalizada = 1;
        self.status = 0;

        @sede_pro = find(:all, :conditions => 'professor_id = ' + (self.professor_id).tp_s)
        for sede_ant in @sede_pro
          sede_ant.sede_id_ant = sede_ant.sede_id
          sede_and.sede_id = self.sede_id
        end
      else
        self.flag_remocao_finalizada = 1
        for atualiza_ac_t in @ac_t
          atualiza_ac_t.verifica = 2
          atualiza_ac_t.valor_unid = self.valor_unid
          atualiza_ac_t.tot_acum_unid = self.tot_acum_unid
          atualiza_ac_t.save
        end
        self.status = 0

        for t_ant in @trab_ant
          t_ant.unidade = self.unidade_ant
          t_ant.save
        end
        for t_atu in @trab_atual
          t_atu.unidade = self.unidade_atual
          t_atu.save
        end

      #Contas complexas
      for prof1 in @at_professors
        for k in @ac_t
          for l in @trab_ant
            for m in @trab_atual
              self.total = (k.pont_base_trab * (k.tot_acum_ant_trab + l.dias_trab + m.dias_trab))
              self.total = self.total + (k.pont_base_efet * (k.tot_acum_ant_efet + l.dias_efetivos + m.dias_efetivos))
              self.total = self.total + (k.pont_base_rede * (k.tot_acum_ant_rede + l.dias_rede + m.dias_rede))
              self.total = self.total + (k.pont_base_unid * (k.tot_acum_ant_unid + l.dias_unidade + m.dias_unidade))
            end
          end
        end
          prof1.total_trabalhado = self.total
          prof1.pontuacao_final = self.total + prof1.total_titulacao
          prof1.save
      end
      end
end

end
