class TeamPolicy < ApplicationPolicy
 
  class Scope < ApplicationPolicy::Scope
    class Scope < Scope
      def resolve
        if user.admin?
          scope.all
        else
          scope.where(user_id: user.id)
        end
      end
    end
  
    # Pundit expects an initialize method if we override the parent
    def initialize(user, team)
      @user = user
      @team = team
    end
  
    def index?
      true
    end
  
    def show?
      @team.user_id == @user.id || @user.admin?
    end
  
    def create?
      @user.present?
    end
  
    def update?
      @user.admin? || (@product.user_id == @user.id)
    end
  
    def destroy?
      @user.admin? || (@product.user_id == @user.id)
    end
  end
end
