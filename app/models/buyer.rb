class Buyer < ActiveRecord::Base
    has_many :items
end