ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email_address, :notes, :image, :province

  form do |f|
    f.inputs 'Customer Details' do
      f.input :full_name
      f.input :phone_number
      f.input :email_address
      f.input :notes
      f.input :province
      f.input :image, as: :file
    end
    f.actions
  end


end
class Customer < ApplicationRecord
  has_one_attached :image

  validates :full_name, presence: true
  validates :phone_number, presence: true
end
