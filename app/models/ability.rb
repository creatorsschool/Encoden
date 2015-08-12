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
    cannot :buy, Course
  end

  def student
    can :read, :all
    can :buy, Course
  end
end
