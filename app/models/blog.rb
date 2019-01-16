class Blog < ApplicationRecord
  enum status: { darft:0, publish:1}
  extend FriendlyId
  friendly_id :title, use: :slugged
end
 