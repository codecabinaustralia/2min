class SubdomainContraint

  def self.matches?(request)
    subdomains = %w{www admin mdoz public mytest}
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end

end

Rails.application.routes.draw do

  

  resources :templates

  get 'tenants/show_all' => 'tenants#show_all'
  get 'tenants/drop_tenant' => 'tenants#drop_tenant'
    
resources :template_customs

    constraints SubdomainContraint do
      resources :messages
      resources :reviews
      resources :site_services
      resources :site_trades
      resources :accreditation_and_licences
      resources :personal_profiles
      resources :portfolios
      resources :intros
      resources :colors
      resources :service_locations
      resources :additional_services
      resources :sites
      
      resources :domains
      get 'already_have_domain' => 'domains#already_have_domain'
      get 'need_domain' => 'domains#need_domain'
      get 'income' => 'sites#income'
      get 'create_temp_site' => 'sites#create_temp_site'
      get 'tenant' => 'sites#tenant'
      get 'charge/payment_page'
      post 'charge/create_charge'
      get 'charge/create_charge'
      get 'charge/thank_you'
      get 'charge/building'
      root to: "sites#income"
    end

  resources :services
  resources :trades
  devise_for :users, controllers: { registrations: "registrations" }
  mount StripeEvent::Engine, at: '/webhooks'

  get 'static/home'
  get 'session_placeholder' => 'static#session_placeholder'
  get 'chosen_template' => 'static#chosen_template'
  get 'apply_template' => 'static#apply_template'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#home"
end
