require 'calabash-android/abase'


#Android

class YourBackgroundPage < Calabash::ABase

  def trait

    "* marked:'What is your background?'"

  end

  def levelsCells

    query("recyclerview cardview appcompattextview")
    
  end

  def tapRandomCell
    touch(levelsCells[rand(0..levelsCells.length - 1)])
  end

  def unableToConnect

    "* text:'Unable to connect'"
    
  end

end