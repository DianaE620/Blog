class Tag < ActiveRecord::Base
  # Remember to create a migration!
  has_many :posts_tags
  has_many :posts, through: :posts_tags
  validates :name, uniqueness: true

  def self.tags_exists?(array)
    
    array.each do |t|
      tag = Tag.find_by(name: t)

      if tag == nil
        Tag.create(name: t)
      end
    end
    
  end



end
