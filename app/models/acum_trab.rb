class AcumTrab < ActiveRecord::Base
belongs_to :professor

  def before_update
    @trab_ant = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data2.to_s + ' and ano_letivo = ' + $data.to_s + ' and flag = 0')
    @trab_atual = Trabalhado.find(:all, :conditions => 'professor_id = ' + (self.professor_id).to_s + ' and ano = ' + $data.to_s + ' and ano_letivo = ' + $data.to_s + ' and flag = 0')
    @at_professors = Professor.find(:all, :conditions => 'id = ' + (self.professor_id).to_s)

      self.tot_acum_ant_trab = self.tot_acum_trab
      self.tot_acum_ant_efet = self.tot_acum_efet
      self.tot_acum_ant_rede = self.tot_acum_rede
      self.tot_acum_ant_unid = self.tot_acum_unid

      for prof in @at_professors
        for ant in @trab_ant
          for atual in @trab_atual
            self.tot_geral_trab = self.tot_acum_trab + ant.dias_trab + atual.dias_trab
            self.tot_geral_efet = self.tot_acum_efet + ant.dias_efetivos + atual.dias_efetivos
            self.tot_geral_rede = self.tot_acum_rede + ant.dias_rede + atual.dias_rede
            self.tot_geral_unid = self.tot_acum_unid + ant.dias_unidade + atual.dias_unidade
            self.valor_trab = (self.pont_base_trab * (self.tot_acum_trab + ant.dias_trab + atual.dias_trab))
            self.valor_efet = (self.pont_base_efet * (self.tot_acum_efet + ant.dias_efetivos + atual.dias_trab))
            self.valor_rede = (self.pont_base_rede * (self.tot_acum_rede + ant.dias_rede + atual.dias_rede))
            self.valor_unid = (self.pont_base_unid * (self.tot_acum_unid + ant.dias_unidade + atual.dias_unidade))
            self.tot_acum_trab = self.tot_acum_trab + ant.dias_trab + atual.dias_trab
            self.tot_acum_efet = self.tot_acum_efet + ant.dias_efetivos + atual.dias_efetivos
            self.tot_acum_rede = self.tot_acum_rede + ant.dias_rede + atual.dias_rede
            self.tot_acum_unid = self.tot_acum_unid + ant.dias_unidade + atual.dias_unidade
            atual.flag = 1
            atual.save
          end
          ant.flag = 1
          ant.save
        end
        prof.total_trabalhado = (self.valor_trab + self.valor_efet + self.valor_rede + self.valor_unid)
        prof.save
      end
  end

  def self.verify(professor_id,ano_letivo)
    Trabalhado.find(:all, :conditions => ['professor_id = ? and ano_letivo = ?', professor_id,ano_letivo])
  end
  
  
end
