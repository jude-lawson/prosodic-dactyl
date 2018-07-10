class Presenter
  def initialize(username)
    @owner = User.find_by(role: 'owner', name: username)
  end
end
