<<<<<<< HEAD
class Ability
  include CanCan::Ability
  
  def initialize(user)
    can :read, :all
  end
  
  
=======
class Ability
  include CanCan::Ability
  
  def initialize(user)
    can :read, :all
  end
  
  
>>>>>>> master
end