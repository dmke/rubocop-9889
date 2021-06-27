# frozen-string-literal: true

class UserTest < ActiveSupport::TestCase
  setup do
    @user = FactoryBot.create :user
  end

  shoould 'not be confirmed' do
    assert_not @user.confirmed?
  end
end
