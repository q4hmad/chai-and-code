class Project < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:medium/missing.png"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

 validates :name, :presence => true
 validates :description, :presence => true

end
