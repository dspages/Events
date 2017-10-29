require_relative './test_helper'

RSpec.describe Person, :type => :model do
  it { should have_many(:attendances) }
  it { should have_many(:events) }
end
