class BuscaUnidadeController < ApplicationController
  before_filter :load_grupos
  before_filter :load_regiaos
  before_filter :load_unidades
  
  def index
    @criancas = Crianca.find(:all)
  end

  	def lista_unidade
      @criancas = Crianca.find(:all, :conditions => ["option1=",params[:unidade_unidade_id]])
		   render :partial => "resultado"
  	end


  def load_grupos
    @grupos =  Grupo.find(:all, :order => "nome")
  end

  def load_regiaos
    @regiaos =  Regiao.find(:all, :order => "nome")
  end

  def load_unidades
    @unidades =  Unidade.find(:all, :order => "nome")
  end

end
