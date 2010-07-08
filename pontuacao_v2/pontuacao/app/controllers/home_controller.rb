class HomeController < ApplicationController

  
  before_filter :login_required
  before_filter :load_professors

  def index
  end
  def login
    if !logged_in? then
      redirect_to(new_session_path)
    else
      render :controller => 'sessions', :action => 'destroy'
    end
  end

  def gen_user
      render :update do |page|
        page.replace_html 'conteudo', :partial => 'usuarios'
      end

  end

  def config
      render :update do |page|
        page.replace_html 'conteudo', :partial => 'configuracao'
      end
  end

def contato
end





  def calc

    @teste = ContactForm.new(params[:teste])
    

      render :update do |page|
        page.replace_html 'teste', :text => 'Foi executado a stored Calcula_pontuacao'
      end

  end

  def load_professors
    @professors = Professor.find(:all, :order => "matricula")
  end



def contato
# se o método é get, o formulário ainda não foi enviado, mostramos o form vazio
if request.get?
@contact = ContactForm.new
else
# aqui recebemos o formulário por post, vamos criar o nosso objeto
# usando os parâmetros vindos do formulário
@contact = ContactForm.new( params['contact'] )
# o método save (que foi sobreescrito) vai ativar a validação
if @contact.save
# se está tudo OK com os dados, vamos enviar o e-mail e...
GenericMailer.deliver_contact_me @contact
# ... redirecionar mostrando uma mensagem
display_message 'Sua mensagem foi enviada com sucesso!', 'app-ok', '/mostrar/contato'
end
end
end

end
