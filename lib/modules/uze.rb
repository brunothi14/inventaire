module Uze
  
  def self.included(base)
    base.has_one :base_used, :as => :uze, :autosave => true
    base.validate :base_used_must_be_valid
    base.alias_method_chain :base_used, :autobuild
    
    base.extend ClassMethods
    base.define_base_used_accessors    
  end
   
  def base_used_with_autobuild
    base_used_without_autobuild || build_base_used
  end
  
  def method_missing(meth, *args, &blk)
    product_properties.send(meth, *args, &blk)
  rescue NoMethodError
    super
  end
  
  
  protected
    def base_used_must_be_valid
      unless base_used.valid?
        base_used.errors.each do |attr, message|
          errors.add(attr, message)
        end
      end
    end
  
end