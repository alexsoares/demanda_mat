class CalculosController < ApplicationController
  before_filter :load_professors
  require_role "admin"

  def load_professors
    @professors = Professor.find(:all, :order => "matricula")
  end

  def calcula_pontuacao
      # se o método é get, o formulário ainda não foi enviado, mostramos o form vazio
    if request.get?
      @calculo = Calculo.new
    else
      # aqui recebemos o formulário por post, vamos criar o nosso objeto
      # usando os parâmetros vindos do formulário
      @calculo = Calculo.new( params['contact'] )
      # o método save (que foi sobreescrito) vai ativar a validação
      Professor.connection.execute("CALL calcula_pontuacao(" + ((@calculo.professor_id).to_s) + ")")
      @trabalho = Trabalhado.find_by_sql("SELECT * FROM trabalhados where professor_id = " + @calculo.professor_id.to_s + " and ano_letivo = " + $data.to_s)
      flash[:notice] = 'CALCULOS REALIZADOS PARA O PROFESSOR: ' + Professor.find(@calculo.professor_id).nome
      render :action => 'dias_calculados'
    end
  end

  def efetivar_iniciar_ano
    @inicia_ano = Professor.find(:all)
    for professor in @inicia_ano
      @acum_prof = AcumTrab.find_all_by_professor_id(professor.id)
      for acum_prof in @acum_prof
        @acum_prof2 = AcumTrab.find(acum_prof.id)
        @acum_prof2.verifica = 2
        @acum_prof2.status = 0
        @acum_prof2.save
      end
    end

    render :nothing => true
  end

  def iniciar_ano
  end


  def arrumar_titulos    
  end

  def efetiva_arrumar_titulos
    @id_professor = Professor.all
    for professor in @id_professor
      titulos_anuais = TituloProfessor.sum('pontuacao_titulo', :conditions => ["professor_id = " +(professor.id).to_s + " and (titulo_id = 6 or titulo_id = 7 or titulo_id = 8)"])
      @professor = Professor.find(professor.id)
      @professor.total_titulacao= @professor.total_titulacao - titulos_anuais
      @professor.save
    end
    render :action => 'arrumar_titulos'
  end

end
