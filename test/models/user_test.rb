require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'alfredo', password: 'lol123', password_confirmation: 'lol123', email: 'mail@m.com')
  end

  test 'valid user' do
    assert @user.valid?
  end
end
