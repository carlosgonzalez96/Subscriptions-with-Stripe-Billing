class ActiveStorage::BlobResource < Madmin::Resource
  # Attributes
  attribute :id, form: false
  attribute :key
  attribute :filename
  attribute :content_type
  attribute :metadata
  attribute :service_name
  attribute :byte_size
  attribute :checksum
  attribute :created_at, form: false
  attribute :preview_image, index: false

  # Associations
  attribute :variant_records
  attribute :attachments

  # Uncomment this to customize the display name of records in the admin area.
  # def self.display_name(record)
  #   record.name
  # end
end
