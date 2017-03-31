require 'calabash-cucumber/ibase'
require_relative '../ios_helpers/i_helpers.rb'


#IOS

class WelcomePage < Calabash::IBase


  def trait

    "button marked:'ACCESS WITH EMAIL'"

  end

  def ensureYouAreOnWelcomePage

    trait

  end


  def googleTrait

    "button marked:'ACCESS WITH GOOGLE"
  end


  def tap_on_access_button

    touch("button index:0")

  end


  def tap_on_google_button

    touch("button index:1")

  end

  def tap_terms_of_use

    tap_text_position("TTTAttributedLabel", "Terms of Use")

  end

  def tap_privacy_policy

    tap_text_position("TTTAttributedLabel", "Privacy Policy")

  end


end