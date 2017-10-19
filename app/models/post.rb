class Post < ApplicationRecord
  # attr_accessor :audio, :media_type, :content, :title
  mount_uploader :audio, AudioUploader
  acts_as_taggable

  MEDIA_TYPE_MAP = [
    {
      id: "text",
      name: "text"
    },
    {
      id: "audio",
      name: "audio"
    },
    {
      id: "photo",
      name: "photo"
    },
    {
      id: "video",
      name: "video"
    }
  ]
  MEDIA_TYPE_IDS = MEDIA_TYPE_MAP.map { |media_type_item| media_type_item[:name] }
  validates :media_type, inclusion: { in: MEDIA_TYPE_IDS }
  validates :title, presence: true
end
