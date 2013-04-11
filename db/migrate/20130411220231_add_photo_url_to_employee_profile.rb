class AddPhotoUrlToEmployeeProfile < ActiveRecord::Migration
  def change
    add_column :employee_profiles, :online_photo_url, :string
  end
end