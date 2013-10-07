class ActiveRecord::Base
    def self.acts_as_uze
      include Uze
    end
end