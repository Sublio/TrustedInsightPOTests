require 'rspec'
require 'gmail'
require 'awesome_print'


def cellRecognizer(cellContainterQuery, cellIndex)

			

end


def mailChecker(mail, password)

	#working only wit gmail accounts 

	gmail = Gmail.connect(mail, password)

	if gmail.inbox.count(:from => "no-reply@bounce-staging.thetrustedinsight.com")==0

		fail("There is no email from server about reseting password!")
	end

	gmail.inbox.emails(:from => "no-reply@bounce-staging.thetrustedinsight.com").each do |email|
		email.read!
  		email.delete!
	end

	gmail.logout

end
