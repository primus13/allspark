class Variant < ActiveRecord::Base
  belongs_to :technology, required: true
end
