class Portfolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank?}
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumbnail_image

  mount_uploader :main_image, PortfolioUploader
  def self.Angular
    where(title: 'Angular')
  end

  scope :ruby, -> { where(title: 'Angular') }

  after_initialize :default_values

  def default_values
    self.main_image ||= Placeholder.imagePlaceholder(hieght: 600, width: 400)
    self.thumbnail_image ||= Placeholder.imagePlaceholder(hieght: 300, width: 250)
  end
end
