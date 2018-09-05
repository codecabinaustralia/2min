class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_tenant
  validates :email, presence:{ message: 'Silly! You must add an email.' }
  validates :subdomain, uniqueness: { message: 'Unfortunately someone already has your website name, try to name it slightly different' }
  validates :subdomain, presence:{ message: 'Oh man, you need to enter a company name.' }

  private

  def create_tenant
    Apartment::Tenant.create(subdomain)
    Apartment::Tenant.switch(subdomain) do
    end

  end

end

