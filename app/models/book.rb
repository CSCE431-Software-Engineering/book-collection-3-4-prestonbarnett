class Book < ApplicationRecord
  has_many :user_books, dependent: :destroy
  has_many :users, through: :user_books

  validates :title, :price, :author, :published, :publisher, :release_date, :pages, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :title, uniqueness: true
end
