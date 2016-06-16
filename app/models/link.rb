class Link < ActiveRecord::Base
  validates  :outgoing_url, :status, :presence => true
  validates_format_of :outgoing_url, :with => URI::regexp(%w(http https))
  validates :incoming_url, :uniqueness => true

  after_create :generate_in_url
  
  default_scope  { order(:clicks => :desc) }
  
  def display_url
    ENV['BASE_URL'] + self.incoming_url
  end
    
  
  private
    def generate_in_url
      self.incoming_url = SecureRandom.hex[0,10]
      self.save!
    end
    
end