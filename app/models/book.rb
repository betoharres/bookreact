class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :tag

  validates :title,
            :author_id,
            :tag_id,
            presence: true

  before_save {|book| book.isbn.gsub!(/\W/, '')}
end
