class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumbnail_image
  def self.Angular
    where(title: 'Angular')
  end

  scope :ruby, -> { where(title: 'Angular') }

  after_initialize :default_values

  def default_values
    self.main_image ||= "http://placehold.it/600x400"
    self.thumbnail_image ||= "http://placehold.it/300x200"
  end
end
