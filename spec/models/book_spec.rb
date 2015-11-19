require 'rails_helper'
require 'pp'

RSpec.describe Book, type: :model do
  it 'has valid isbn' do
    isbn = Faker::Code.isbn(13)
    book = FactoryGirl.build(:book, isbn: isbn)
    book.save
    isbn.delete!('-')
    expect(book.isbn).to eq(isbn)
  end
end
