require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    # test makes it's own user with a specific id number.
    @post = Post.create(title: 'a' * 10, content: 'b' * 30, user_id: User.first.id)
  end

  test 'valid post' do
    assert @post.valid?
  end
end
