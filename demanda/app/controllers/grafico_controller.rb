class GraficoController < ApplicationController
  before_filter :load_unidades
  def index

  end

  def grafico_demanda_geral
    @graph = open_flash_chart_object(600,300,"/grafico/graph_code_demanda_geral")

        @static_graph = Gchart.pie_3d(
          :data => [(Crianca.b_u).length,(Crianca.b_dm).length],
          :title => "Demanda Geral - Crianças Cadastradas: #{Crianca.c.length}",
          :size => '600x300',
          :format => 'image_tag',
          :labels => ["Matriculadas #{(Crianca.b_u).length}", "Não matriculadas #{(Crianca.b_dm).length}"])      
  end  

  def crianca_por_unidade        
  end

  def search
    $uni=0
    $menu=1
    input = params[:contact][:grafico_id]
    @graph = open_flash_chart_object(600,300,"/grafico/graph_por_unidade?unidade=#{input}",false,'/')
                
    @static_graph = Gchart.pie_3d(
        :data => [(Crianca.matriculas_crianca_por_unidade(input)).length,(Crianca.nao_matriculas_crianca_por_unidade(input)).length], 
        :title => "Demanda por Unidade: #{Crianca.nome_unidade(input)} - #{(Crianca.todas_crianca_por_unidade(input)).length}" ,
        :size => '600x300',
        :format => 'image_tag',
        :labels => ["Matriculadas #{(Crianca.matriculas_crianca_por_unidade(input)).length}", "Não matriculadas #{(Crianca.nao_matriculas_crianca_por_unidade(input)).length}"])

      render :action => "crianca_por_unidade"
  end

  def graph_code_demanda_geral
    title = Title.new("Demanda Geral - Crianças Cadastradas: #{Crianca.c.length}")
    pie = Pie.new
    pie.start_angle = 0
    pie.animate = true
    pie.tooltip = '#val# of #total#<br>#percent# of 100%'
    pie.colours = ["#d01f3c", "#356aa0", "#C79810"]
    pie.values  = [PieValue.new(Crianca.b_u.length,"Crianças Matriculadas"), PieValue.new(Crianca.b_dm.length,"Crianças Não Matriculadas")]
    chart = OpenFlashChart.new
    chart.title = title
    chart.add_element(pie)
    chart.x_axis = nil
    render :text => chart.to_s
  end
  
  def graph_por_unidade    
    unidade = params[:unidade]
    title = Title.new("Demanda por Unidade: #{Crianca.nome_unidade(unidade)} - Criancas Cadastradas: #{Crianca.todas_crianca_por_unidade(unidade).length}" )
    pie = Pie.new
    pie.start_angle = 0
    pie.animate = true
    pie.tooltip = '#val# of #total#<br>#percent# of 100%'
    pie.colours = ["#d01f3c", "#356aa0", "#C79810"]
    matriculada = Crianca.matriculas_crianca_por_unidade(unidade)
    nao_matriculada = Crianca.nao_matriculas_crianca_por_unidade(unidade)
    pie.values  = [PieValue.new(matriculada.length,"Crianças Matriculadas na unidade: " + (matriculada.length).to_s), PieValue.new(nao_matriculada.length,"Crianças Não Matriculadas: " + (nao_matriculada.length).to_s)]
    chart = OpenFlashChart.new
    chart.title = title
    chart.add_element(pie)
    chart.x_axis = nil
    render :text => chart.to_s
  end


  def pie_chart poll
    @pie_chart ||= {
      :data => poll.choices.collect(&:votes_count),
      :colors => poll.choices.collect {|c| c.winner? ? "264409" : "8A1F11" }
    }
  end


protected

  def load_unidades
    @unidades = Unidade.all
    $uni=1
    $menu=0
  end
end
