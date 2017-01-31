require 'calabash-cucumber/ibase'



#IOS

class TermsOfUsePage < Calabash::IBase

	def trait

	    "UINavigationItemView marked:'Terms of Use'"
	    
	end


	def backButton

		"button marked:'iconTopBack'"

	end


	def openInSafariButton

		"button marked:'iconTopExport'"
	end


	def webViewContainter

		"WKWebView"
	end

	def ensureWebViewHasLoadedContent

		wait_for(:timeout => 60) { element_does_not_exist("RSBLoaderView") }

		title = query("WKWebView",:title).first

		if title !="Trusted Insight | Terms of Service | Trusted Insight Platform"

			raise "There is no loaded content inside WKWebView"
		end
	end

end