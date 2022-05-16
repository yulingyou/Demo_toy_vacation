class Vacation < ApplicationRecord
    belongs_to :user
    def self.all_type
        [
          %w[事假], %w[病假], %w[特休], %w[婚假], %w[產/陪產假], %w[喪假]
        ]
      end
end
