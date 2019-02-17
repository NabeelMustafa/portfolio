class Myimage < ApplicationRecord
  mount_uploader :image, MyimagesUploader
end
