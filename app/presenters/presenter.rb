class Presenter
  attr_reader :owner

  def initialize(current_user)
    # require 'pry';binding.pry
    @owner = User.find_by(role: 'owner')
    @user = current_user
  end
end
