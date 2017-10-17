class Post < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  acts_as_taggable

  TYPE_MAP = [
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
  TYPE_IDS = TYPE_MAP.map { |type_item| type_item[:name] }
  validates :type, inclusion: { in: TYPE_IDS }
end
