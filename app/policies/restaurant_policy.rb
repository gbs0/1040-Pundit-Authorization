class RestaurantPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    new?
  end

  def new?
   true
  end

  def update?
    edit?
  end

  def edit?
    record.user == user
  end

  def destroy?
    edit?
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      user.admin? ? scope.all : scope.where(user: user)
    end
  end
end
