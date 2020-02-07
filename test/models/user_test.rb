require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: 'joseph', password_digest: 'lol', email: 'mail@m.com')
  end

  test 'valid user' do
    assert @user.valid?
  end
end
