class ProducerPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def create_product?
    record.user == user
  end

  def create_market?
    record.user == user
  end

  def update?
    record.user == user
  end

  def show?
    return true
  end

  def destroy?
    record.user == user
  end
end
