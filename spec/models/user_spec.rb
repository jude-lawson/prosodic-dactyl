require 'rails_helper'

RSpec.describe User do
  it { should validate_presence_of(:full_name) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:username) }
end
