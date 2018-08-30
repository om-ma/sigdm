class AppointmentFile < ApplicationRecord
  belongs_to :appointment

  mount_uploader :document, AttatchmentUploader
end



