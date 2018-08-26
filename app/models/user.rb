class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_tenant
  validates :email, uniqueness: true
  validates :subdomain, uniqueness: true

  private

  def create_tenant
    Apartment::Tenant.create(subdomain)

    Apartment::Tenant.switch(subdomain) do
    end

  end

end