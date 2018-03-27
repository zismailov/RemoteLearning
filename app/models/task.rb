class Task < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader

  belongs_to :topic

  validates :topic_id, presence: true

  def title_h
    title.presence || attachment.file.filename
  end
end
