class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user.id == record.id
  end

  def edit?
    user.id == record.id
  end
end
