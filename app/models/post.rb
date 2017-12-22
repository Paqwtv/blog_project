require 'carrierwave/orm/activerecord'

class Post < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :category
  has_and_belongs_to_many :coments

  mount_uploader :file, FileUploader
  validate :file_size

  def file_size
    errors.add(:file, 'Размер файла должен быть не более 2 Mb') if
    file.file.size.to_f > 2000000.bytes
  end

  def self.page_limit
    20    
  end
end
