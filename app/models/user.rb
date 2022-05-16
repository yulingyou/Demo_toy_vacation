class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company
  accepts_nested_attributes_for :company
  has_many :vacations


  def self.all_gender
    [
      %w[男生], %w[女生]
    ]
  end

  def self.all_role
    [
      %w[staff], %w[manager]
    ]
  end
end
