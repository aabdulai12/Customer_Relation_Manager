class Customer < ApplicationRecord
  # Existing ransackable attributes method
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "email_address", "full_name", "id", "id_value", "notes", "phone_number", "province", "updated_at"]
  end

  # Define the ransackable associations
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"] # List all associations you want searchable
  end
end
