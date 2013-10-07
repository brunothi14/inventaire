class BaseUsed < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :uze, :polymorphic => true, :dependent => :destroy
  validates_presence_of :model
  
  
  
end
