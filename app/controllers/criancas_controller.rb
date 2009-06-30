class CriancasController < ApplicationController
  before_filter :load_grupos
  before_filter :load_regiaos
  before_filter :load_unidades
# GET /criancas
  # GET /criancas.xml
  def index
    @criancas = Crianca.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @criancas }
    end
  end

  # GET /criancas/1
  # GET /criancas/1.xml
  def show
    @crianca = Crianca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @crianca }
    end
  end

  # GET /criancas/new
  # GET /criancas/new.xml
  def new
    @crianca = Crianca.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @crianca }
    end
  end

  # GET /criancas/1/edit
  def edit
    @crianca = Crianca.find(params[:id])
  end

  # POST /criancas
  # POST /criancas.xml
  def create
    @crianca = Crianca.new(params[:crianca])

    respond_to do |format|
      if @crianca.save
        flash[:notice] = 'Criança cadastrada com sucesso.'
        format.html { redirect_to(@crianca) }
        format.xml  { render :xml => @crianca, :status => :created, :location => @crianca }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /criancas/1
  # PUT /criancas/1.xml
  def update
    @crianca = Crianca.find(params[:id])

    respond_to do |format|
      if @crianca.update_attributes(params[:crianca])
        flash[:notice] = 'Criança atualizada com sucesso.'
        format.html { redirect_to(@crianca) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @crianca.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /criancas/1
  # DELETE /criancas/1.xml
  def destroy
    @crianca = Crianca.find(params[:id])
    @crianca.destroy

    respond_to do |format|
      format.html { redirect_to(criancas_url) }
      format.xml  { head :ok }
    end
  end

   #Inicialização variavel / combobox grupo

  def load_grupos
    @grupos =  Grupo.find(:all, :order => "nome")
  end

  def load_regiaos
    @regiaos =  Regiao.find(:all, :order => "nome")
  end

  def load_unidades
    @unidades =  Unidade.find(:all, :order => "nome")
  end


# Exemplo Arthur
#  def region_units

#    @units = Unit.find :all, :conditions => {:region_id => params[:child_region_id]}
#    render :update do |page|
#      page.replace_html 'region', :partial => 'region_units'
#    end
#  end


# Criando validação por regiao

#  def reg_unidade

#    @unidades = Unidade.find :all, :conditions => ["regiao_id =","%#{params[:q]}%"]
#    @unidades = Unidade.paginate :page => params[:page], :conditions => ["regiao_id =","%#{params[:q]}%"]
#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @unidades }
#      format.js
#    end



#  def regiao_unidades
#   @unidades = Unidade.find :all, :conditions => {:regiao_id => params[:crianca_regiao_id]}
#    render :update do |page|
#      page.replace_html 'regiao', :partial => 'reg_unidades'
#    end
#  end


#  end

  def regiao_unidade
    @unidades = Unidade.find :all, :conditions => {:regiao_id => params[:cr_id]}
    render :update do |page|
    page.replace_html 'regiao', :partial => 'regiao_unidade'
   end

    
    
  end


end
