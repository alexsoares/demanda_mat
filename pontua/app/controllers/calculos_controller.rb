class CalculosController < ApplicationController
  before_filter :load_professors

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

  def iniciar_ano
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


end
