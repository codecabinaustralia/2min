class AddSuffixAttributesToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :tld, :string
    add_column :domains, :tld_type, :string
    add_column :domains, :minimum_registration, :string
    add_column :domains, :whois_privacy, :boolean
    add_column :domains, :auto_renew_only, :boolean
    add_column :domains, :idn, :boolean
    add_column :domains, :registration_enabled, :boolean
    add_column :domains, :renewal_enabled, :boolean
    add_column :domains, :transfer_enabled, :boolean
  end
end
