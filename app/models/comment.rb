class Comment < ActiveRecord::Base
  # Associations.
  belongs_to(:article, :touch => true) # Invalidate article's cache key.
end

