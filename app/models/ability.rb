class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :super_admin
      can :manage, :all
    elsif user.role? :product_admin
      can :manage, [Tractor, Attachement, Equipement]
    elsif user.role? :product_team
      can :read, :all
      # manage products, assets he owns
      #can :manage, Product do |product|
      #  product.try(:owner) == user
      #end
      #can :manage, Asset do |asset|
      #  asset.assetable.try(:owner) == user
      end
    end
  end
end