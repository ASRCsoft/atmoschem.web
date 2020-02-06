require 'csv'

class User < ApplicationRecord
  validates :name, :organization, :email, :reason, :presence => true
  validates :terms, :acceptance => true
  
  def self.to_csv
    attributes = %w{id name organization email reason}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        # csv << attributes.map{ |attr| user.send(attr) }
        csv << user.attributes.values_at(*attributes)
      end
    end
  end
end
