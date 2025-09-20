class Post < ApplicationRecord
<<<<<<< HEAD
  validates :title, uniqueness: true
=======
  validates :title, uniqueness:  true
>>>>>>> upstream/main
  has_many :comments, dependent: :destroy
end
