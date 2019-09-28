class Article < ApplicationRecord
  has_many :article_tags
  has_many :tags, through: :article_tags

  has_many :coments

  def self.find_articles(user)
    articles = Article.where(tag_id: user.tags).order(created_at: :desc)
    return articles
  end
end
