require 'calabash-android/abase'


#Android

class TermsOfUsePage < Calabash::ABase

  def trait

    "textView text:'Terms of Use'"

  end

  def backButton

    "ImageButton contentDescription:'Navigate up'"

  end


  def openInSafariButton

    "* contentDescription:'Watch in Browser'"
  end


  def webViewContainter

    "ResponsiveWebView"
  end

  def ensureWebViewHasLoadedContent

    wait_for(:timeout => 60) { element_does_not_exist("CircularProgressView") }

    element_exists(webViewContainter)
=begin
		title = query("WKWebView",:title).first

		if title !="Trusted Insight | Terms of Service | Trusted Insight Platform"

			raise "There is no loaded content inside WKWebView"
		end
=end

  end


end