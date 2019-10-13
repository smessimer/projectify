class WorkUnit < ApplicationRecord
  belongs_to :project
  belongs_to :parent
  belongs_to :type
end
