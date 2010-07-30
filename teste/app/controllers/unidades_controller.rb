class UnidadesController < ApplicationController
require_role ["seduc","admin"]
  # GET /unidades
  # GET /unidades.xml
  before_filter :load_regiaos
  before_filter :load_buscas
  before_filter :nome_tipo

  def index
    @unidades = Unidade.paginate(:page=>params[:page],:per_page =>25, :conditions => ["nome like ?", "%" + params[:search].to_s + "%"])
    #@unidades = Unidade.find(:all, :conditions => ["nome like ?", "%" + params[:search].to_s + "%"])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @unidades }
    end
  end

  # GET /unidades/1
  # GET /unidades/1.xml
  def show
    @unidade = Unidade.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unidade }
    end
  end

  # GET /unidades/new
  # GET /unidades/new.xml
  def new
    @unidade = Unidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unidade }
    end
  end

  # GET /unidades/1/edit
  def edit
    @unidade = Unidade.find(params[:id])
  end

  # POST /unidades
  # POST /unidades.xml
  def create
    @unidade = Unidade.new(params[:unidade])

    respond_to do |format|
      if @unidade.save
        flash[:notice] = 'Unidade cadastrada com sucesso.'
        format.html { redirect_to(@unidade) }
        format.xml  { render :xml => @unidade, :status => :created, :location => @unidade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unidades/1
  # PUT /unidades/1.xml
  def update
    @unidade = Unidade.find(params[:id])

    respond_to do |format|
      if @unidade.update_attributes(params[:unidade])
        flash[:notice] = 'Unidade atualizada com sucesso.'
        format.html { redirect_to(@unidade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unidade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.xml
  def destroy
    @unidade = Unidade.find(params[:id])
    @unidade.destroy

    respond_to do |format|
      format.html { redirect_to(unidades_url) }
      format.xml  { head :ok }
    end
  end

  def load_regiaos
    @regiaos =  Regiao.find(:all, :order => "nome")
  end


  def load_buscas
    @busca_reg= Regiao.find :all, :conditions => {:id => params[:reg_id]}
  end

  def nome_tipo
    if Unidade.find(:all, :conditions => ["unidades.tipo = 0"])
       @teste =  'Creche'
    else
       @teste = 'nada'
    end
  end

end



