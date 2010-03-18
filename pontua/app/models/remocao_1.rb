class Remocao < ActiveRecord::Base

def before_create
      @trab_ant = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data2.to_s + ' and ano_letivo = ' + $data.to_s)
      @trab_atual = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data.to_s + ' and ano_letivo = ' + $data.to_s)
      @atualiza_trabalhado = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano_letivo = ' + $data.to_s)
      @ac_t = AcumTrab.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s)
      @at_professors = Professor.find(:all, :conditions => 'id = ' + (self.professor_id).to_s)

    if self.remocao = 1 then
      for ac_t in @ac_t
        self.valor_unid = ac_t.valor_unid
        self.tot_acum_unid = ac_t.tot_acum_unid
        self.tot_geral_unid = ac_t.tot_acum_unid
      end

    
      if (@trab_ant).nil?
    		self.unidade_ant = 0
      else
        for t_an in @trab_ant
          self.unidade_ant = t_an.unidade
        end
      end
      #Contas complexas
      for prof in @at_professors
        for i in @ac_t
          for j in @trab_ant
            for h in @trab_atual
              self.total = (i.pont_base_trab * (i.tot_acum_ant_trab + j.dias_trab + h.dias_trab))
              self.total = self.total + (i.pont_base_efet * (i.tot_acum_ant_efet + j.dias_efetivos + h.dias_efetivos))
              self.total = self.total + (i.pont_base_rede * (i.tot_acum_ant_rede + j.dias_rede + h.dias_rede))
              #self.total = self.total + (i.pont_base_unid * (i.tot_acum_ant_unid + j.dias_unidade + h.dias_unidade))

            end
          end
        end
        prof.total_trabalhado = self.total
        prof.pontuacao_final = self.total + prof.total_titulacao
        prof.save
      end
      if (@trab_atual).nil?
    		self.unidade_atual = 0
      else
        for t_at in @trab_atual
          self.unidade_atual = t_at.unidade
        end

      end
#================Atualiza Trabalhados==================
      for at in @atualiza_trabalhado
        at.unidade = 0
        at.save
      end
#================Atualiza Acum_trabs===================
    for novos in @ac_t
      novos.verifica = 2
      novos.valor_unid = 0
      novos.tot_geral_unid = 0
      novos.tot_acum_unid = 0
      novos.save
    end
#===============Atualiza Professors====================
      for atualiza_p in @at_professors
        atualiza_p.flag = 1
        atualiza_p.save
      end
#======================================================      
    end
  

end

def before_update
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

def before_save
end

end
