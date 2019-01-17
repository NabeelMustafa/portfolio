class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent, :badge

  after_initialize :default_values
  def default_values
    self.badge||= Placeholder.imagePlaceholder(hieght: 250, width: 250)
  end
end
