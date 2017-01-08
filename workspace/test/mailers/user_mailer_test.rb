require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "Notify" do
    mail = UserMailer.Notify
    assert_equal "Notify", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
