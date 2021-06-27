# frozen-string-literal: true

require 'test_helper'

User = Struct.new(:confirmed_at) do
  def confirmed?
    !confirmed_at.nil?
  end
end

class UserTest < Minitest::Test
  context 'a user' do
    setup do
      @user = User.new
    end

    should 'not be confirmed' do
      assert_not @user.confirmed?
    end
  end
end
