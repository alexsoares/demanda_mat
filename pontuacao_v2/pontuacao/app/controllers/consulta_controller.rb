class ConsultaController < ApplicationController
before_filter :sede_unidade
before_filter :load_titulos
  def index

  end


  def search
   if (params[:funcao]).present?
      @relatorio_funcao = Professor.find(:all, :conditions => ["funcao like ?","%" + params[:funcao] + "%"], :order => 'nome ASC')
   end
    render :action => 'relatorio_por_funcao'
  end

  def relatorio_por_funcao
    @relatorio_funcao = "Selecione uma função"
  end

  def consulta_ppu
    $tipo_con = 1
    $v = 1
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'prof_pontua', :partial => 'consultas'
    end
  end

 def consulta_pu
    $tipo_con = 2
    $v = 1
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'prof_pontua', :partial => 'consultas'
    end
 end

 def consulta_sede
    $sede = params[:p_sede_id]
    if $sede == 54 then
      $sede= 'TODAS UNIDADES'
    else
      @professors = Professor.find_all_by_sede_id($sede)
      $professor = Professor.find_all_by_sede_id($sede).object_id

    end
  if $tipo_con == 1 then
   if $sede == 'TODAS UNIDADES' then
      @professorsnome = Professor.find(:all, :order => 'nome')
    else
     if $sede == 'SELECIONE' then
       @professorsnome = ''
     else
        @professorsnome = Professor.find_all_by_sede_id($sede, :order => 'nome')
     end
    end
      render :update do |page|
        page.replace_html 'professores', :partial => 'professor_sede'
      end

  else
   if $tipo_con == 2 then
    if $sede == 'TODAS UNIDADES' then
      @professorsnome = Professor.find(:all, :order => 'pontuacao_final DESC')
    else
     if $sede == 'SELECIONE' then
       @professorsnome = ''
     else
      @professorsnome = Professor.find_all_by_sede_id($sede, :order => 'pontuacao_final DESC')
     end
    end

    render :update do |page|
      page.replace_html 'consultas', :partial => 'lista_consulta_sede'
      page.replace_html 'tempo', :text => ''
      page.replace_html 'nome_consulta', :text => 'Pontuação Professores por Unidade'
    end

   else
   if $tipo_con == 4 then
   if $sede == 'TODAS UNIDADES' then
      @professorsnome = Professor.find(:all, :order => 'nome')
    else
     if $sede == 'SELECIONE' then
       @professorsnome = ''
     else
        @professorsnome = Professor.find_all_by_sede_id($sede, :order => 'nome')
     end
    end
      render :update do |page|
        page.replace_html 'professores', :partial => 'busca_titulacao'
      end
    end
   end
  end
 end

  def consulta_nome
    $professor = params[:pro_professor_id]    
   if $professor.empty? then
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'consultas', :text => ''
    end
    else
    if logged_in?
        $reg_prof = current_user.regiao_id
        if $reg_prof == 53 or $reg_prof == 52 then
          @professors = Professor.find(:all, :conditions => ['id=' + $professor.to_s])
        else
         #@professors = Professor.find(:all, :conditions => ['id=' + $professor,'regiao_id = ' + $reg_prof])
         @professors = Professor.find_by_sql("SELECT * FROM professors where id = " + $professor.to_s + " and (sede_id = " + $reg_prof.to_s + " or sede_id = 54)")
        end
    end
    render :update do |page|
      page.replace_html 'consultas', :partial => 'lista_consulta_nomeprofessor'
      page.replace_html 'tempo', :text => ''
      page.replace_html 'nome_consulta', :text => 'Pontuação Professor'
    end
    end
 end

 def consulta_pt
  $tipo_con = 4
  render :update do |page|
    page.replace_html 'tempo', :text => ''
    page.replace_html 'prof_pontua', :partial => 'busca_titulacao'
  end
 end

 def consulta_titulo
    $titulo = params[:tit_titulo_id]
    $teste = $titulo.empty?
   if $titulo.empty? then
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'consultas', :text => ''
    end
    else
      @professorstitulo = TituloProfessor.find_by_sql("SELECT distinct(professor_id),obs,quantidade,titulo_id,pontuacao_titulo,valor,dt_titulo,dt_validade,status FROM titulo_professors where titulo_id = " + $titulo + " order by professor_id")
     if current_user.regiao_id == 53 then
      @professors = TituloProfessor.find_by_sql("Select * from titulo_professors tp inner join professors p on tp.professor_id = p.id where titulo_id =" + $titulo.to_s)
     else
      @professors = TituloProfessor.find_by_sql("Select * from titulo_professors tp inner join professors p on tp.professor_id = p.id where titulo_id =" + $titulo.to_s + " and (p.sede_id = " + current_user.regiao_id.to_s + " or p.sede_id = 54)")
     end
     @professorstitulo = TituloProfessor.find(:all, :conditions => ['titulo_id=' + $titulo.to_s])
    render :update do |page|
      page.replace_html 'consultas', :partial => 'lista_consulta_tituloprofessor'
      page.replace_html 'tempo', :text => ''
      page.replace_html 'nome_consulta', :text => 'Professores por Titulação'
    end
    end
 end

  def consulta_geral
  $tipo_con = 10
  @professor_rel_geral = Professor.find(:all, :order => 'pontuacao_final DESC')

    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'prof_pontua', :partial => 'relatorio_geral_pontuacao'
    end
  end















 protected
  def sede_unidade
    if current_user.regiao_id == 53 or current_user.regiao_id == 52 then
      @unidade_sede = Unidade.find(:all, :include => "regiao", :order => 'nome ASC')
    else
      @unidade_sede = Unidade.find(:all, :conditions => ['id = ' + current_user.regiao_id.to_s + ' or id = 54'], :include => "regiao", :order => 'nome ASC')
    end
  end

  def load_titulos
    @titulos = Titulacao.find(:all, :order => "descricao")
  end


end
