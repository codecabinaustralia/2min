class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  after_create :create_tenant

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :site_name, presence: true,
                            uniqueness: { case_sensitive: false},
                            format: { with: /\A[\w\-]+\Z/i, message: 'contains invalid characters' }
                        end


  private
  
  def create_tenant
    Apartment::Tenant.create(subdomain)
  end