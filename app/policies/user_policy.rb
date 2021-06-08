class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def edit?
    user.id == record.id
  end

  def update?
    user.id == record.id
  end

  def new?
    user.id == record.id
  end

  def create?
    user.id == record.id
  end

  def destroy?
    user.id == record.id
  end
end
