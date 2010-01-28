class BuscaUnidadeController < ApplicationController
  require_role ["seduc","admin"]
  before_filter :load_grupos
  before_filter :load_regiaos
  before_filter :load_unidades
  
  def index
    @teste = Unidade.find(:all)
  end

  	def lista_unidade
      @teste = Unidade.find(:id)
		   render :partial => 'resultado'
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
