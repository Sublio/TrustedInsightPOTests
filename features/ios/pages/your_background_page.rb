require 'calabash-cucumber/ibase'


#Android

class YourBackgroundPage < Calabash::IBase

  def trait

    "* marked:'What is your background?'"

  end

  def levelsCells

    query("UITableViewLabel")
    
  end

  def pickCell

  end

  def proceedAsWorker(levelsCellsArray)

    cells2 = []
    levelsCells.each do |cell|
      if (cell["text"].include? "Student") == false
        cells2 << cell
      end
    end
    touch(cells2[rand(0..cells2.length - 1)])

  end

  def proceedAsStudent(levelsCellsArray)

    levelsCells.each do |cell|
      if cell["text"].include? "Student"
        touch(cell)
      end
    end

  end

  def tapRandomCell
    touch(levelsCells[rand(0..levelsCells.length - 1)])
  end

  def unableToConnect

    "* text:'Unable to connect'"
    
  end

end