class MatriculasController < ApplicationController
 
  before_filter :load_crianca


  # GET /matriculas
  # GET /matriculas.xml
  def index
    @matriculas = @crianca.matriculas.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @matriculas }
    end
  end

  # GET /matriculas/1
  # GET /matriculas/1.xml
  def show
    @matricula = @crianca.matriculas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @matricula }
    end
  end

  # GET /matriculas/new
  # GET /matriculas/new.xml
  def new
    @matricula = @crianca.matriculas.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @matricula }
    end
  end

  # GET /matriculas/1/edit
  def edit
    @matricula = @crianca.matriculas.find(params[:id])
  end

  # POST /matriculas
  # POST /matriculas.xml
  def create
    @matricula = @crianca.matriculas.build(params[:matricula])
    respond_to do |format|
      if @matricula.save
        flash[:notice] = 'Matricula was successfully created.'
        format.html { redirect_to([@crianca, @matricula]) }
        format.xml  { render :xml => @matricula, :status => :created, :location => @matricula }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /matriculas/1
  # PUT /matriculas/1.xml
  def update
    @matricula = @crianca.matriculas.find(params[:id])

    respond_to do |format|
      if @matricula.update_attributes(params[:matricula])
        flash[:notice] = 'Matricula was successfully updated.'
        format.html { redirect_to([@crianca, @matricula]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @matricula.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /matriculas/1
  # DELETE /matriculas/1.xml
  def destroy
    @matricula = @crianca.matriculas.find(params[:id])
    @matricula.destroy

    respond_to do |format|
      format.html { redirect_to crianca_matriculas_url(@crianca) }
      format.xml  { head :ok }
    end
  end


  protected

  def load_crianca
    @grupo = Grupo.find(:all, :conditions => ["id = ?",Crianca.find(params[:crianca_id]).grupo_id])
    @crianca = Crianca.find(params[:crianca_id])
    @unidade = Unidade.find(:all, :conditions => ['id = ?', Crianca.find(params[:crianca_id]).unidade_matricula])
  end

  def load_grupo_crianca
    
  end
end
