class RelatorioController < ApplicationController
  def index
    @criancas = Crianca.find(:all, :order => "nome")
  end

end
