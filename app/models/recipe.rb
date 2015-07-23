class Recipe < ActiveRecord::Base
  belongs_to :user
  has_many :equipments
  has_many :instructions
  has_many :ingredients

  accepts_nested_attributes_for :equipments, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :instructions, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :ingredients, :reject_if => :all_blank, :allow_destroy => true

end
