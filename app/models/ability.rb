class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :junior_hr
      can :index, Candidate
      can :create, Candidate
      can :show, Candidate
    elsif user.has_role? :senior_hr
      can :index, Candidate
      can :show, Candidate
      can :edit, Candidate
    # elsif user.has_role? :admin
    #   can :manage, :all 
    # else
    #   cannot :manage, ActiveAdmin::Page
    end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
