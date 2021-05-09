class Post < ApplicationRecord
  after_create_commit { broadcast_prepend_later_to 'posts'}
  after_update_commit { broadcast_replace_later to 'posts'}
  after_destroy_commit { broadcast_remove_to 'posts'}
  
  validates :body, length: { minimum: 1, maximum: 280 }
end
