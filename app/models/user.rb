class User < ApplicationRecord
  has_many :poems, class_name: 'Poem', foreign_key: 'author_id'
end
