class Ability
  include CanCan::Ability

  def initialize(user)
    if user.teacher?
      teacher
    else
      student
    end
  end

  def teacher
    can :manage, :all
  end

  def student
    can :read, :all

  end
end
