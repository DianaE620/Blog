class CreateBlog < ActiveRecord::Migration
   
   def change
     create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :author, :default => "anonimo"
    end

    create_table :tags do |t|
      t.string :name
    end

     create_table :posts_tags do |t|
      t.belongs_to :post, index: true
      t.belongs_to :tag, index: true
    end
  end
end

