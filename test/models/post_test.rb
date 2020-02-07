require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = User.create(name: 'joseph', password_digest: 'lol', email: 'mail@m.com')
    @post = Post.create(title: 'dog', content: 'cat', user_id: @user.id)
  end
  # test "the truth" do
  #   assert true
  # end
  test 'valid user' do
    assert @post.valid?
    p User.all
  end
end
