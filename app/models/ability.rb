class Ability
  include CanCan::Ability

  def initialize(user)
    can [:read, :update, :destroy], Category do |category|
      category.user == user
    end

    can [:read, :destroy], Transaction do |transaction|
      transaction.author == user
    end

    can :create, Category
    can :create, Transaction
  end
end
