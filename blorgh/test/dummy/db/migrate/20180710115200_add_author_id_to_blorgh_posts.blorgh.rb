# This migration comes from blorgh (originally 20180710115144)
class AddAuthorIdToBlorghPosts < ActiveRecord::Migration
  def change
    add_column :blorgh_posts, :author_id, :integer
  end
end
