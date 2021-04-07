class Visit < ApplicationRecord
  belongs_to :link, counter_cache: true
end
