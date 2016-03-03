require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "follow_up" do
    mail = UserMailer.follow_up('to@example.org')
    assert_equal "How are things going?", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["no-reply@example.com"], mail.from
    assert_match "Twitter and Facebook", mail.body.encoded
  end

end
