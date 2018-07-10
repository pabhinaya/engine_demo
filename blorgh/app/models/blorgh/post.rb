module Blorgh
  class Post < ActiveRecord::Base
    attr_accessible :text, :title
    has_many :comments
    attr_accessor :author_name
    belongs_to :author, :class_name => Blorgh.user_class
    
    before_save :set_author
 
    private
      def set_author
        self.author = Blorgh.user_class.constantize.find_or_create_by_name(author_name)
      end
  end
end
