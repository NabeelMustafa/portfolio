class Profile < ApplicationRecord
  mount_uploader :cover, ProfileCoverUploader
  mount_uploader :dp, ProfileDpUploader
end
