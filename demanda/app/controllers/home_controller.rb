class HomeController < ApplicationController
  
  before_filter :login_required
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
        page.replace_html 'conteudo', :text => ''
        page.replace_html 'conteudo', :partial => 'usuarios'
      end

  end

  def gen_user1
      render :update do |page|
        page.replace_html 'conteudo', :text => ''
        page.replace_html 'conteudo', :partial => 'usuarios'
      end
  end
  

end
