class Post < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  validates :body, :title, presence: true

  def self.hasautor?(autor)
    if autor == ""
      false
    else 
      true
    end
  end


end
