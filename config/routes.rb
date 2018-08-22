Rails.application.routes.draw do

  SubdomainConstraint
  def self.matches?(request)
    subdomains = %w{www admin public test tenant_name}
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end

  constraints SubdomainConstraint do
    get 'charge/payment_page'
    post 'charge/create_charge'
    get 'charge/create_charge'
    get 'charge/thank_you'
    get 'charge/already_have_domain'
    get 'charge/need_domain'
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
  end

  
  get 'tenant' => 'sites#tenant'
  resources :services
  resources :trades
  devise_for :users, controllers: { registrations: "registrations" }

  get 'static/home'
  get 'session_placeholder' => 'static#session_placeholder'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static#home"
end
