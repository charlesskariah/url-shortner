class Link < ActiveRecord::Base
  validates :incoming_url, :outgoing_url, :status, :presence => true
  validates :incoming_url, :uniqueness => true

  after_create :generate_in_url

  private
    def generate_in_url
      self.incoming_url = (self.id + 500000).to_s 
    end
    
end