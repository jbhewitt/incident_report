class Incident < ActiveRecord::Base
	require 'carrierwave/orm/activerecord'
  mount_uploader :attachment_1, AttachmentUploader
  mount_uploader :attachment_2, AttachmentUploader
  mount_uploader :attachment_3, AttachmentUploader
  mount_uploader :attachment_4, AttachmentUploader
  mount_uploader :attachment_5, AttachmentUploader

  belongs_to :job
  belongs_to :person
  belongs_to :company
  belongs_to :state
  belongs_to :injury
  belongs_to :outcome

  #attr_accessible :attachment, :attachment_cache, :attachment_asset
  #field :attachment, :carrierwave

end
