require 'gmail'


def cellRecognizer(cellContainterQuery, cellIndex)

	###########################################TODO!###########################
			

end


def mailChecker(mail, password)

	#working only with gmail accounts!!!

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
