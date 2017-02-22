require 'gmail'

def cellRecognizer(cellContainterQuery, cellIndex)


		celltype = {:jobs =>'jobs', :news =>'news', :events=>'events', :syndicates=>'syndicates', :profiles=>'profiles', :rankings=>'rankings', :search_hires=>'search_hires', :firms=>'firms'}
		cellcontainer =query(cellContainterQuery).first

    if cellContainterQuery.include? "TableView"

      scroll_to_row(cellContainterQuery,cellIndex) #we need to scroll to cell destination for avoiding nasty errors!
      cell = query("tableViewCell index:#{cellIndex}").first


      if cell["class"].include? "NewsTableViewCell"
        celltype[:news]
      elsif cell["class"].include? "People"
        celltype[:profiles]
      elsif cell["class"].include? "SearchAndHires"
        celltype[:search_hires]
      elsif cell["class"].include? "Rankings"
        celltype[:rankings]
      else
        "Separator or Plate cell"
      end
    else
      scroll_to_row("android.support.v7.widget.RecyclerView", cellIndex)
      cell =query("")
      #TODO!!!


    end
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
