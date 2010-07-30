ActionController::Routing::Routes.draw do |map|
  map.resources :logs

  map.resources :visaos

  map.resources :remocaos

  map.resources :regiaos

  map.resources :unidades

  map.resources :roles_users

  map.resources :users

  map.resource :session

  map.resources :acum_trabs

  map.resources :titulo_professors

  map.resources :titulacaos

  map.resources :servicos

  map.resources :trabalhados

  map.resources :professors

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   map.root :controller => "home"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
 map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil

map.signup '/signup', :controller => 'users', :action => 'new'

map.login '/login', :controller => 'sessions', :action => 'new'

map.logout '/logout', :controller => 'sessions', :action => 'destroy'

  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.root :controller => "home"
  map.calculo_dias '/calculo_dias', :controller => 'calculos', :action => 'calcula_pontuacao'
  map.consulta '/consulta', :controller => 'consulta'  
  map.relatorio_por_titulacao '/relatorio_por_titulacao', :controller => 'titulo_professors', :action => 'relatorio_prof_titulacao'
  map.relatorio_por_descricao_titulo '/relatorio_por_descricao_titulo', :controller => 'titulo_professors', :action => 'relatorio_por_descricao_titulo'
  map.relatorio_titulos_anuais_invalidos   '/relatorio_titulos_anuais', :controller => 'titulo_professors', :action => 'relatorio_titulos_anuais_invalidos'
  map.relatorio_por_funcao '/relatorio_por_funcao', :controller => 'consulta', :action => 'relatorio_por_funcao'
  map.arrumar_titulos '/calculos/arrumar_titulos', :controller => 'calculos', :action => 'arrumar_titulos'
  map.iniciar_ano '/calculos/iniciar_ano', :controller => 'calculos', :action => 'iniciar_ano'
end
