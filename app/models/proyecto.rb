class Proyecto < ApplicationRecord
  belongs_to :user
  belongs_to :curso
end