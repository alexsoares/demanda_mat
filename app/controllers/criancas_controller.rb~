class CriancasController < ApplicationController
  before_filter :load_grupos
  before_filter :load_regiaos
  before_filter :load_unidades
  before_filter :load_criancas
  #before_filter :load_variaveis

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

  def load_criancas
    @criancas = Crianca.find(:all, :order => "nome")
  end

  def load_variaveis
    $unidade_op1_id =0
    $unidade_op2_id=0
    $unidade_op3_id=0
  end

  def busca
    @criancas = Crianca.c
    render :partial => 'listar_todas_criancas'
  end

  def busca_unidade
    @criancas = Crianca.b_u
    render :partial => 'listar_todas_criancas'
  end

  def busca_demanda
    @criancas = Crianca.b_dm
    render :partial => 'listar_todas_criancas'
  end


  def un_op1_din
    #@criancas = Crianca.un_din
    $unidade_op1_id = params[:unidade_unidade_op1_id]
    @criancas = Crianca.find(:all, :conditions => ["option1 = "+ $unidade_op1_id + " and matricula != 1"], :order =>["created_at and trabalha desc"])
    if @criancas.nil? or @criancas.empty? then
      render :text => 'Nenhum registro encontrado'
    else
      
      render :partial => 'listar_criancas'
    end
    
  end


  def mat_unidade
    $unidade = params[:unidade_unidade_mat_id]
    @criancas = Crianca.find(:all, :conditions => ["unidade_matricula =" + $unidade + " and matricula =1"], :order => "created_at")
    if @criancas.nil? or @criancas.empty? then
      render :text => 'Nenhuma crianca matriculada nesta escola'
    else
      render :partial => 'listar_todas_criancas'
    end
  end

  def nome_crianca
    $crianca = params[:crianca_crianca_id]
    @criancas = Crianca.find(:all, :conditions => ['id=' + $crianca])
    render :partial => 'listar_todas_criancas'
  end


  def regiao_unidade
    @unidades = Unidade.find :all, :conditions => {:regiao_id => params[:cr_id]}
    render :update do |page|
    page.replace_html 'regiao', :partial => 'regiao_unidade'
    end
  end

  def grupo_crianca
      @zero = Grupo.find_by_id(params[:crianca_grupo_id])
      if @zero.nil? then
        render :text   => ''
      else
        render :text   =>  Grupo.find_by_id(params[:crianca_grupo_id]).descricao
     end
  end

  def consulta
    render :partial => 'consultas'
  end

  def rg
    @unidades = Unidade.find :all, :conditions => {:regiao_id => params[:crianca_regiao_id]}
    @u = Unidade.count :all, :conditions => {:regiao_id => params[:crianca_regiao_id]}
    if @u == 2 then
     render :update do |page|
      page.replace_html '#region', :partial => 'region_units'
     end
    else
     render :update do |page|
      page.replace_html '#region', :partial => 'regiao_unidade'
     end
    end
  end

  def mesmo_nome
    $nome = params[:crianca_nome]
    @verifica = Crianca.find_by_nome($nome)
    if @verifica then
      render :update do |page|
        page.replace_html 'nome_aviso', :text => 'Nome já cadastrado no sistema'
        page.replace_html 'aviso_mae', :text => 'Mae:' +  @verifica.mae
        page.replace_html 'Certeza', :text => "<input id='crianca_submit' name='commit' onclick=\"return confirm('Gravar mesmo com nome duplicado?');\" type='submit' value='Cadastrar' />"
    end
    else
      render :update do |page|
        page.replace_html 'nome_aviso', :text => ''
        page.replace_html 'aviso_mae', :text => ''
      end
 
    end
  end

  def mesma_mae
     if Crianca.find_by_mae(params[:crianca_mae]) then
       if Crianca.find_by_nome($nome) then
        render :update do |page|
          page.replace_html 'nome_mae', :text => 'Criança já cadastrada no sistema '
          page.replace_html 'Certeza', :text =>  'Criança ja cadastrada, qualquer dúvida entrar em contato com a supervisão'
        end
        else
          render :update do |page|
             page.replace_html 'nome_mae', :text => ''
             page.replace_html 'Certeza', :text => "<input id='crianca_submit' name='commit' type='submit' value='Cadastrar' />"
          end

       end
     end
  end


   
  def same_birthday
    data_nasc = params[:ano].to_s + '-' + params[:mes].to_s + '-' + params[:dia].to_s
    if !Crianca.by_nome(params[:nome]).by_nascimento(data_nasc).empty? then
      render :text => 'Mesma data e mesmo nome'
    else
      render :text => 'Nenhuma data igual...'
    end
  end

  

end
