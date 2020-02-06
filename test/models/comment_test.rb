require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.create(name:'name', email:'email', password_digest:'pass')
    @post =  Post.create(title:'title', content:'content', user_id:1)
    @comment = Comment.create(content: 'content', user_id:1, post_id:1)
  end

  test 'creates a valid user' do
    assert @user.valid?
  end

  test 'creates a post' do
    assert @post.valid?
  end

  test 'creates a comment' do
    assert @comment.valid?
  end
end
