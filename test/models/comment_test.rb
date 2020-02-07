require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(content:'content', user_id: User.first.id, post_id: Post.first.id)
  end

  test 'valid comment' do
    assert @comment.valid?
  end
end
