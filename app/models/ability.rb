class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user
    logged_in_abilities
    @user ||= User.new
    can :read, :all
  end

  private

  def logged_in_abilities
    if @user
      if @user.admin?
        can :manage, :all
      else
        can :create, Comment
        can :update, Comment do |comment|
          comment.try(:user) == @user
        end
        can :destroy, Comment do |comment|
          comment.try(:user) == @user
        end
        can :create, Article
        can :update, Article do |article|
          article.try(:user) == @user
        end
        can :destroy, Article do |article|
          article.try(:user) == @user
        end
      end
    end
  end
end
