class Tag < ApplicationRecord
  has_many :article_tags
  has_many :articles, through: :article_tags

  has_many :user_tags

  has_many :user_to_dos
end
