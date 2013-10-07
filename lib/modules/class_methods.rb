module ClassMethods
    def define_base_used_accessors
      all_attributes = BaseUsed.content_columns.map(&:name)
      ignored_attributes = ["created_at", "updated_at", "uze_type"]
      attributes_to_delegate = all_attributes - ignored_attributes
      attributes_to_delegate.each do |attrib|
        class_eval <<-RUBY
          def #{attrib}
            base_used.#{attrib}
          end
         
          def #{attrib}=(value)
            self.base_used.#{attrib} = value
          end
         
          def #{attrib}?
            self.base_used.#{attrib}?
          end
        RUBY
      end
    end
  end