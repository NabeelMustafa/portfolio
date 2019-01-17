module Placeholder
  extend ActiveSupport::Concern
  def self.imagePlaceholder(hieght:, width:)
    "http://placehold.it/#{hieght}x#{width}"
  end
end