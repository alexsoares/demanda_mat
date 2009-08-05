class RelatorioController < ApplicationController
  def index
    @criancas = Crianca.find(:all)
  end

end
