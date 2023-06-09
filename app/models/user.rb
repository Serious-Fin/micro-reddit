class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors.add attribute, (options[:message] || "is not an email")
    end
  end
end

class User < ApplicationRecord
  validates :username, presence: true, length: {minimum: 3}, uniqueness: true
  validates :email, presence: true, uniqueness: true, email: true
  validates :password, presence: true, length: {minimum: 5}

  has_many :posts, dependent: :destroy
  has_many :comments
end
