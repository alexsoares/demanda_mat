class AcumTrabsController < ApplicationController

before_filter :professor_unidade
  # GET /acum_trabs
  # GET /acum_trabs.xml
  
  def professor_unidade
    if current_user.regiao_id == 53 or current_user.regiao_id == 52 then
      @professor_sede = Professor.find(:all, :order => 'matricula')
    else
      @professor_sede = Professor.find(:all, :conditions => ['sede_id = ' + current_user.regiao_id.to_s + ' or sede_id = 54'], :order => 'matricula')
    end
  end

  def index
    @acum_trabs = AcumTrab.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @acum_trabs }
    end
  end

  # GET /acum_trabs/1
  # GET /acum_trabs/1.xml
  def show
    @acum_trab = AcumTrab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @acum_trab }
    end
  end

  # GET /acum_trabs/new
  # GET /acum_trabs/new.xml
  def new
    @acum_trab = AcumTrab.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @acum_trab }
    end
  end

  # GET /acum_trabs/1/edit
  def edit
    @acum_trab = AcumTrab.find(params[:id])
    @trabalho = Trabalhado.find_by_sql("SELECT * FROM trabalhados where professor_id = " + @acum_trab.professor_id.to_s + " and ano_letivo = " + $data.to_s)
  end

  # POST /acum_trabs
  # POST /acum_trabs.xml
  def create
    @acum_trab = AcumTrab.new(params[:acum_trab])
    @acum_trab.usuario(current_user.id)
    @acum_trab.tot_acum_unid
    respond_to do |format|
      if @acum_trab.save
    
        format.html { redirect_to(new_trabalhado_path)}
        format.xml  { render :xml => @acum_trab, :status => :created, :location => @acum_trab }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @acum_trab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /acum_trabs/1
  # PUT /acum_trabs/1.xml
  def update

    @acum_trab = AcumTrab.find(params[:id])
    @atualiza_log = Log.new
    @atualiza_log.user_id = self.usuario(user_id)
    @atualiza_log.obs = "Atualizado valor acumulado"
    @atualiza_log.data = (Time.now().strftime("%d/%m/%y %H:%M")).to_s
    @atualiza_log.professor_id = self.professor_id
    @atualiza_log.acumtrab_id = self.id
    @atualiza_log.save

     @acum_trab.verifica =0
     $update = 1
    respond_to do |format|
      if @acum_trab.update_attributes(params[:acum_trab])
        #flash[:notice] = 'AcumTrab was successfully updated.'
        format.html { redirect_to(professors_path)}
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @acum_trab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /acum_trabs/1
  # DELETE /acum_trabs/1.xml
  def destroy
    @acum_trab = AcumTrab.find(params[:id])
    @atualiza_log = Log.new
    @atualiza_log.user_id = current_user.id
    @atualiza_log.obs = "Apagado"
    @atualiza_log.data = (Time.now().strftime("%d/%m/%y %H:%M")).to_s
    @atualiza_log.professor_id = @acum_trab.professor_id
    @atualiza_log.save

    @acum_trab.destroy

    respond_to do |format|
      format.html { redirect_to(acum_trabs_url) }
      format.xml  { head :ok }
    end
  end

  def exibe_dados
    
    
  end
end
