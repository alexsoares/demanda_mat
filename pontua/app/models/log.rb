class Log < ActiveRecord::Base
  belongs_to :user
  belongs_to :professor


  def verifica_existe
    if !(professor_id).nil? && (regiao_id).nil? && (unidade_id).nil? && (titulacao_id).nil?
      if (professor_id).nil?
        return "Não foi possivel determinar nada"
      else
        if obs == "Apagado"
          return professor_id.to_s + "- Com a exclusão do registro, impossível recuperar nome."
        else
          return professor_id.to_s + " " + Professor.find_by_id(professor_id).nome
        end
      end
    else
        if (professor_id).nil? && !(regiao_id).nil? && (unidade_id).nil? && (titulacao_id).nil?
          if (regiao_id).nil?
            return "Não foi possivel determinar nada"
          else
            if obs == "Apagado"
              return regiao_id.to_s + "- Com a exclusão do registro, impossível recuperar nome."
            else
              return regiao_id.to_s + " " + Regiao.find_by_id(regiao_id).nome
            end
          end
        else
          if (professor_id).nil? && (regiao_id).nil? && !(unidade_id).nil? && (titulacao_id).nil?
            if (unidade_id).nil?
              return "Não foi possivel determinar nada"
            else
              if obs == "Apagado"
                return unidade_id.to_s + "- Com a exclusão do registro, impossível recuperar nome."
              else
                return unidade_id.to_s + " " + Unidade.find_by_id(unidade_id).nome
              end
            end
          else
            if (professor_id).nil? && (regiao_id).nil? && (unidade_id).nil? && !(titulacao_id).nil?
              if (titulacao_id).nil?
                return "Não foi possivel determinar nada"
              else
                if obs == "Apagado"
                  return titulacao_id.to_s + " - Com a exclusão do registro, impossível recuperar nome."
                else
                  return titulacao_id.to_s + " - " + Titulacao.find_by_id(titulacao_id).descricao
                end
              end
            end
          end
        end
    end
  end


  def area_afetada
    if professor_id
      @nomep = Professor.find_by_id(professor_id)      
      if !(@nomep.nil?)
        return @nomep
      else
        return "Tabela Professor"
      end
    else
      if professor_id and !acumtrab_id.nil?
        return "Valores acumulados"
      else
        if professor_id and !remocao_id.nil?
          return "Remoção do professor"
        else
          if !professor_id and !titulacao_id.nil?
            return "Tabela de Titulos"
          else
            if !professor_id and !regiao_id.nil?
              $ttt = ((Regiao.find_by_id(regiao_id))).nil?
              if !($ttt)
                return "Tabela de Regiões #{Regiao.find(regiao_id)}"
              else
                return "Tabela de Regiões"
              end
            else
              if !professor_id and !unidade_id.nil?
                return "Tabela de Unidades"
              end
            end
          end
        end
      end
    end
  end

  def nome_user
    return User.find(user_id).nome
  end

end
