class VisaosController < ApplicationController
  before_filter :login_required
  before_filter :sede_unidade
  before_filter :load_professors
  # GET /visaos
  # GET /visaos.xml
  def index
    @professor_rel_geral = Professor.find(:all, :order => 'pontuacao_final DESC')
    
  end

  def load_professors
    @professors = Professor.find(:all, :order => "matricula")
  end

  def sede_unidade
    if current_user.regiao_id == 53 or current_user.regiao_id == 52 then
      @unidade_sede = Unidade.find(:all)
    else
      @unidade_sede = Unidade.find(:all, :conditions => ['id = ' + current_user.regiao_id.to_s + ' or id = 54'])
    end
  end

  def consulta_funcao
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'prof_pontua', :partial => 'selecione_funcao'
    end

  end


  def lista_funcao
    $funcao = params[:visaos_funcao].to_s
 if $funcao == 'ADI' or $funcao == 'Prof. de Creche' then
    @funcao = Professor.find_by_sql("Select * from professors where funcao = 'ADI' or funcao = 'Prof. de Creche' order by pontuacao_final DESC")
  else
    @funcao = Professor.find_by_sql("Select * from professors where funcao = '" + $funcao + "' order by pontuacao_final DESC")
  end

    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'funcao', :text => $funcao
      page.replace_html 'professores', :partial => 'lista_funcao_pontuacao'
    end

  end

  def consulta
    $v = 0
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.redirect_to :action => "index"
      page.replace_html 'prof_pontua', :partial => 'consultas'
    end

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

 def consulta_geral
  $tipo_con = 10
  @professor_rel_geral = Professor.find(:all, :order => 'pontuacao_final DESC')

    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'prof_pontua', :partial => 'relatorio_geral_pontuacao'
    end
 end


 def consulta_nome
    $professor = params[:pro_professor_id]
    $teste = $professor.empty?
   if $professor.empty? then
    render :update do |page|
      page.replace_html 'tempo', :text => ''
      page.replace_html 'consultas', :text => ''
    end
    else
    if logged_in?

        $reg_prof = current_user.regiao_id
        if $reg_prof == 53 then
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
     #@professors = TituloProfessor.find(:all, :conditions => ['titulo_id=' + $titulo.to_s,'sede_id = ' + current_user.regiao_id.to_s])
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


   def dados_professor


     $exibe_dias_trab_ano = 0
     $exibe_dias_efet_ano = 0
     $exibe_dias_rede_ano = 0
     $exibe_dias_unid_ano = 0

     $exibe_dias_ant_trab_ano = 0
     $exibe_dias_ant_efet_ano = 0
     $exibe_dias_ant_rede_ano = 0
     $exibe_dias_ant_unid_ano = 0

     $exibe_dias_trab_ano = 0
     $exibe_dias_efet_ano = 0
     $exibe_dias_rede_ano = 0
     $exibe_dias_unid_ano = 0

     $exibe_ano_anterior_dias_trab = 0
     $exibe_ano_anterior_dias_efet  = 0
     $exibe_ano_anterior_dias_rede  = 0
     $exibe_ano_anterior_dias_unid  = 0

     $exibe_ano_atual_dias_trab = 0
     $exibe_ano_atual_dias_efet  = 0
     $exibe_ano_atual_dias_rede  = 0
     $exibe_ano_atual_dias_unid  = 0

     $exibe_tot_geral_trab = 0
     $exibe_tot_geral_efet = 0
     $exibe_tot_geral_rede = 0
     $exibe_tot_geral_unid = 0

     $dias_trab_ano = 0
     $tot_dias_trab = 0
     $st_dt = 0
     $st_de = 0
     $st_dr = 0
     $st_du = 0
     $soma_st_dt = 0
     $soma_st_de = 0
     $soma_st_dr = 0
     $soma_st_du = 0

     $exibe_pont_trab = 0
     $exibe_pont_efet = 0
     $exibe_pont_rede = 0
     $exibe_pont_unid = 0

     $exibe_tot_trab = 0
     $exibe_tot_efet = 0
     $exibe_tot_rede = 0
     $exibe_tot_unid = 0

     $total_trab_g = 0
     $total_efet_g = 0
     $total_rede_g = 0
     $total_unid_g = 0

     $ano_anterior_dias_trab = 0
     $ano_anterior_dias_efet = 0
     $ano_anterior_dias_rede = 0
     $ano_anterior_dias_unid = 0

     $ano_atual_dias_trab = 0
     $ano_atual_dias_efet = 0
     $ano_atual_dias_rede = 0
     $ano_atual_dias_unid = 0

    $acum_dias_trab_ano = 0
    $acum_dias_efet_ano = 0
    $acum_dias_rede_ano = 0
    $acum_dias_unid_ano = 0

    $pont_trab = 0
    $pont_efet = 0
    $pont_rede = 0
    $pont_unid = 0

     $dias_trab_ano = 0
     $tot_dias_trab = 0
     $st_dt = 0
     $st_de = 0
     $st_dr = 0
     $st_du = 0
     $soma_st_dt = 0
     $soma_st_de = 0
     $soma_st_dr = 0
     $soma_st_du = 0
     $professor_mat = ''
     $professor_mat = params[:professor_professor_id]
     if !($professor_mat).nil? or !($professor_mat).empty? or !($professor_mat == '')

      if !(Professor.find_by_matricula($professor_mat)).nil? then
      $professor = Professor.find_by_matricula($professor_mat).id.to_s
    # =======================================
#|| Inicio Calculos de Tempo de Serviço  ||
# =======================================

    @acum = AcumTrab.find(:all, :conditions => ['professor_id = ' + $professor])
    for tot_dias in @acum
       $anterior_dias_trab = tot_dias.tot_acum_trab.to_i
       $anterior_dias_efet = tot_dias.tot_acum_efet.to_i
       $anterior_dias_rede = tot_dias.tot_acum_rede.to_i
       $anterior_dias_unid = tot_dias.tot_acum_unid.to_i
       $acum_dias_trab_ano = tot_dias.tot_acum_trab.to_i
       $acum_dias_efet_ano = tot_dias.tot_acum_efet.to_i
       $acum_dias_rede_ano = tot_dias.tot_acum_rede.to_i
       $acum_dias_unid_ano = tot_dias.tot_acum_unid.to_i
    end
     @dias_trab_anterior = Trabalhado.find(:all, :conditions => ['ano = ' + $data2.to_s + ' and professor_id= ' + $professor + ' and flag = 0 and ano_letivo = ' + $data.to_s])
      for ano_anterior in @dias_trab_anterior
       ano_anterior.dias_trab
          $ano_anterior_dias_trab = ano_anterior.dias_trab
          $ano_anterior_dias_efet = ano_anterior.dias_efetivos
          $ano_anterior_dias_rede = ano_anterior.dias_rede
          $ano_anterior_dias_unid = ano_anterior.dias_unidade
       end
      @dias_trab_atual = Trabalhado.find(:all, :conditions => ['ano = ' + $data.to_s + ' and professor_id= ' + $professor + ' and flag = 0 and ano_letivo = ' + $data.to_s])
         for ano_atual in @dias_trab_atual
          ano_atual.dias_trab
          $ano_atual_dias_trab = ano_atual.dias_trab
          $ano_atual_dias_efet = ano_atual.dias_efetivos
          $ano_atual_dias_rede = ano_atual.dias_rede
          $ano_atual_dias_unid = ano_atual.dias_unidade
       end

        $total_trab_g = $acum_dias_trab_ano + $ano_anterior_dias_trab + $ano_atual_dias_trab
        $total_efet_g = $acum_dias_efet_ano + $ano_anterior_dias_efet + $ano_atual_dias_efet
        $total_rede_g = $acum_dias_rede_ano + $ano_anterior_dias_rede + $ano_atual_dias_rede
        $total_unid_g = $acum_dias_unid_ano + $ano_anterior_dias_unid + $ano_atual_dias_unid
        @acum_pont = AcumTrab.find(:all, :conditions => ['professor_id= ' + $professor])
       for pontuacao in @acum_pont
        $pont_trab = pontuacao.pont_base_trab
        $pont_efet = pontuacao.pont_base_efet
        $pont_rede = pontuacao.pont_base_rede
        $pont_unid = pontuacao.pont_base_unid
       end
        $total_trab = $pont_trab * $total_trab_g
        $total_efet = $pont_efet * $total_efet_g
        $total_rede = $pont_rede * $total_rede_g
        $total_unid = $pont_unid * $total_unid_g
# =======================================
#|| Fim Calculos de Tempo de Serviço     ||
# =======================================



    @professors = Professor.find(:all, :conditions => ['id=' + $professor ])
    @trabalho1 = Trabalhado.find_by_sql("SELECT * FROM trabalhados WHERE professor_id = " + $professor + " and ano_letivo = " + $data.to_s)

    @trabalho = Trabalhado.find_by_sql("SELECT * FROM trabalhados WHERE professor_id = " + $professor + " and ano_letivo = " + $data.to_s)
    @t = Trabalhado.find_by_sql("SELECT * FROM trabalhados WHERE professor_id = " + $professor + " and ano_letivo = " + $data.to_s)
    @nome_professor = Professor.find_by_id($professor)

    @tp = TituloProfessor.find_by_sql("SELECT * FROM titulo_professors tp inner join titulacaos t on tp.titulo_id=t.id where tp.professor_id=" + $professor + " and t.tipo = 'PERMANENTE'")
    @tp1 = TituloProfessor.find_by_sql("SELECT * FROM titulo_professors tp inner join titulacaos t on tp.titulo_id=t.id where tp.professor_id=" + $professor + " and t.tipo = 'ANUAL'")
    @tp5 = TituloProfessor.find_by_sql("SELECT * FROM titulo_professors tp inner join titulacaos t on tp.titulo_id=t.id where tp.professor_id=" + $professor + " and t.tipo = '5 ANOS'")
    $zerar = 1
    render :update do |page|
      page.replace_html 'titula', :text => ''
      page.replace_html 'dados_professor', :partial => 'exibicao_pontuatempservico'
    end
  else
    render :update do |page|
      page.replace_html 'dados_professor', :text => 'Matricula Não cadastrada'
    end
  end
 else
    render :update do |page|
      page.replace_html 'dados_professor', :text => ''
    end

 end
end

  def relato_prof
      render :update do |page|
      page.replace_html 'prof_pontua', :text =>''
      page.replace_html 'titula', :text=>''
      page.replace_html 'prof_pontua', :partial => 'professor_relatorio_pontuacao'

      end

  end


    def consultas_remocao
      render :update do |page|
        page.replace_html 'menu', :partial => 'consultas_remocao'
      end
  end


  def consulta_prof_rem_aprovada
    @cpra = Remocao.find_by_sql('Select r.*,p.* from remocaos r inner join professors p on r.professor_id = p.id where flag_remocao_finalizada = 1 and status = 0 and remocao_efetivada = 1 and ano_letivo = year(curdate()) order by p.pontuacao_final desc')
      render :update do |page|
        page.replace_html 'remocao', :partial => 'lista_prof_rem_ap'
      end

  end

  def consulta_prof_rem_rejeitada
    @cprr = Remocao.find_by_sql('Select r.*,p.* from remocaos r inner join professors p on r.professor_id = p.id where flag_remocao_finalizada = 1 and status = 0 and remocao_efetivada = 0 and ano_letivo = year(curdate()) order by p.pontuacao_final desc')
      render :update do |page|
        page.replace_html 'remocao', :partial => 'lista_prof_rem_rej'
      end

  end


  def consulta_prof_rem
    @cpr = Remocao.find_by_sql('Select r.*,p.* from remocaos r inner join professors p on r.professor_id = p.id where flag_remocao_finalizada = 0 and status = 1 and remocao_efetivada is null and ano_letivo = year(curdate()) order by p.pontuacao_final desc')
      render :update do |page|
        page.replace_html 'remocao', :partial => 'lista_prof_rem'
      end
  end

end