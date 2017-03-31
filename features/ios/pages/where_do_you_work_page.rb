require 'calabash-cucumber/ibase'


#IOS

class WhereDoYouWorkPage < Calabash::IBase

  def trait

    "TITextField index:0"

  end

  def jobTitleEdit

    "TITextField index:0"

  end

  def jobTitlesCloseButton

    "UIButton"

  end

  def jobTitlesContainer

    "UITableView"

  end

###############################

  def availElements

    "UITableView UILabel"

  end

#################################

  def firmTitleEdit

    "TITextField index:1"

  end

  def firmTitlesContainer

    "UITableView"

  end

  def firmTitlesCloseButton

    "UIButton"

  end

  def countryTitleEdit

    "TITextField index:2"

  end

  def countryCancelButton

    "* id:'buttonDefaultNegative'"

  end

  def countryOkButton

    "* id:'buttonDefaultPositive'"

  end

  def countryItself

    puts(" ")

  end

  def countryContainer

    "TIPickerView"

  end


  def inTransitionCheckbox

    touch("UIButtonLabel marked:'Currently in transition'")

  end

  def retiredCheckbox

    touch("UIButtonLabel marked:'Retired'")

  end

  def tapBackButton

    touch("* marked:'BACK'") #this is a backButton locator

  end

  def tapSkipButton

    touch("* marked:'SKIP'")

  end


  def tapNextButton

    touch("* marked:'NEXT'")

  end

  def NextButton

    "* marked:'NEXT'"

  end

  def unableToConnect

    "* text:'Unable to connect'"

  end


  def countryElementString

    "TIPickerView UILabel"

  end


#######################

  def pickItemFromAutocompleteList(textfield, container, element)
    wait_for_none_animating
    enter_text(textfield, 1.times.map { [*'a'..'x'].sample }.join)
    wait_for_none_animating
    wait_for_elements_exist(container)
    wait_for_none_animating
    elements = query(element)
    picknum = (rand(0..elements.length - 1)).to_i
    puts(picknum)
    picked_element = elements[picknum]
    picked_element_title = picked_element["text"]
    puts ("Picked element title is #{picked_element_title}")
    sleep 1
    wait_for_none_animating
    touch(picked_element)
    wait_for_none_animating
    sleep 2
    wait_for_none_animating
    final_element_title = query(textfield).first["text"]
    puts ("Final element title is #{final_element_title}")
    sleep 1
    if picked_element_title.include? final_element_title
      puts("Element picked successfully")
    else
      puts("Element doesn't match!")
    end

  end


  def checkIfCleared(textfield, container, closebutton)

    enter_text(textfield, 1.times.map { [*'a'..'x'].sample }.join)
    wait_for_elements_exist(container)
    #text_before = query(textfield).first["text"]
    wait_for_elements_exist(closebutton)
    #puts(text_before)
    touch(closebutton)
    #text_after = query(textfield).first["text"]
    #puts("This is text after clear => #{text_after} <= here should be nothing!")
    if textfield.empty?
      puts("Clear!")
    end

  end

#pickCountry(countryString, pickerString, elementString)
  def pickCountryFromTheList(countryTitleEditText, countryElementString, pickerViewString, countryTitleString, confirmCountryButton, nextButton)
    touch(countryTitleEditText)
    wait_for_none_animating

    loop do
      elements = query(countryElementString).uniq! { |e| e["text"] }
      swipe :down, query: pickerViewString, force: :strong
      wait_for_none_animating
      break if elements.length == 4
    end

    i = 0
    loop do
      #puts(i)
      elements = query(countryElementString).uniq! { |e| e["text"] }
      elements.each do |element|
        #puts(element["text"])
      end
      for element in elements do
        if element["text"] == countryTitleString
          wait_for_none_animating
          sleep 2
          wait_for_none_animating
          touch(element)
          wait_for_none_animating
          #puts("did the touch")
          i = i + 1
          #puts(i)
          break
        else
          next
        end
      end
      break if (i == 1)
      wait_for_none_animating
      swipe :up, query: pickerViewString, force: :normal
      wait_for_none_animating
    end
    touch(nextButton)

  end

end


#deprecated
=begin
    wait_for_none_animating
    touch(countryfield)
    wait_for_none_animating
    sleep 2
    wait_for_none_animating
    rand(0..5).times do
      wait_for_none_animating
      swipe :up, query: "UIPickerTableView index:1", force: :light
      wait_for_none_animating
    end
    #touch(confirmbutton)
    #final_country_title = query(countryfield)["text"]
    #puts(final_country_title)
    touch(nextbutton)

#debug information
=begin
    TIPickerView
    UIView
    UIPickerColumnView
    UIView
    UIPickerTableView
    UIPickerTableViewTitledCell
    UITableViewCellContentView
    query("TIPickerView UILabel").uniq! {|e| e["text"] }
    swipe :down, query: "TIPickerView", force: :strong
=end


=begin
#country list + query
picker :query => "TIPickerView", :action => :texts
[
    [0] [
        [  0] "Afghanistan",
        [  1] "Albania",
        [  2] "Algeria",
        [  3] "American Samoa",
        [  4] "Andorra",
        [  5] "Angola",
        [  6] "Anguilla",
        [  7] "Antarctica",
        [  8] "Antigua & Barbuda",
        [  9] "Argentina",
        [ 10] "Armenia",
        [ 11] "Aruba",
        [ 12] "Ascension Island",
        [ 13] "Australia",
        [ 14] "Austria",
        [ 15] "Azerbaijan",
        [ 16] "Åland Islands",
        [ 17] "Bahamas",
        [ 18] "Bahrain",
        [ 19] "Bangladesh",
        [ 20] "Barbados",
        [ 21] "Belarus",
        [ 22] "Belgium",
        [ 23] "Belize",
        [ 24] "Benin",
        [ 25] "Bermuda",
        [ 26] "Bhutan",
        [ 27] "Bolivia",
        [ 28] "Bosnia & Herzegovina",
        [ 29] "Botswana",
        [ 30] "Bouvet Island",
        [ 31] "Brazil",
        [ 32] "British Indian Ocean Territory",
        [ 33] "British Virgin Islands",
        [ 34] "Brunei",
        [ 35] "Bulgaria",
        [ 36] "Burkina Faso",
        [ 37] "Burundi",
        [ 38] "Cambodia",
        [ 39] "Cameroon",
        [ 40] "Canada",
        [ 41] "Canary Islands",
        [ 42] "Cape Verde",
        [ 43] "Caribbean Netherlands",
        [ 44] "Cayman Islands",
        [ 45] "Central African Republic",
        [ 46] "Ceuta & Melilla",
        [ 47] "Chad",
        [ 48] "Chile",
        [ 49] "China",
        [ 50] "Christmas Island",
        [ 51] "Clipperton Island",
        [ 52] "Cocos (Keeling) Islands",
        [ 53] "Colombia",
        [ 54] "Comoros",
        [ 55] "Congo - Brazzaville",
        [ 56] "Congo - Kinshasa",
        [ 57] "Cook Islands",
        [ 58] "Costa Rica",
        [ 59] "Côte d’Ivoire",
        [ 60] "Croatia",
        [ 61] "Cuba",
        [ 62] "Curaçao",
        [ 63] "Cyprus",
        [ 64] "Czech Republic",
        [ 65] "Denmark",
        [ 66] "Diego Garcia",
        [ 67] "Djibouti",
        [ 68] "Dominica",
        [ 69] "Dominican Republic",
        [ 70] "Ecuador",
        [ 71] "Egypt",
        [ 72] "El Salvador",
        [ 73] "Equatorial Guinea",
        [ 74] "Eritrea",
        [ 75] "Estonia",
        [ 76] "Ethiopia",
        [ 77] "Falkland Islands",
        [ 78] "Faroe Islands",
        [ 79] "Fiji",
        [ 80] "Finland",
        [ 81] "France",
        [ 82] "French Guiana",
        [ 83] "French Polynesia",
        [ 84] "French Southern Territories",
        [ 85] "Gabon",
        [ 86] "Gambia",
        [ 87] "Georgia",
        [ 88] "Germany",
        [ 89] "Ghana",
        [ 90] "Gibraltar",
        [ 91] "Greece",
        [ 92] "Greenland",
        [ 93] "Grenada",
        [ 94] "Guadeloupe",
        [ 95] "Guam",
        [ 96] "Guatemala",
        [ 97] "Guernsey",
        [ 98] "Guinea",
        [ 99] "Guinea-Bissau",
        [100] "Guyana",
        [101] "Haiti",
        [102] "Heard & McDonald Islands",
        [103] "Honduras",
        [104] "Hong Kong (China)",
        [105] "Hungary",
        [106] "Iceland",
        [107] "India",
        [108] "Indonesia",
        [109] "Iran",
        [110] "Iraq",
        [111] "Ireland",
        [112] "Isle of Man",
        [113] "Israel",
        [114] "Italy",
        [115] "Jamaica",
        [116] "Japan",
        [117] "Jersey",
        [118] "Jordan",
        [119] "Kazakhstan",
        [120] "Kenya",
        [121] "Kiribati",
        [122] "Kosovo",
        [123] "Kuwait",
        [124] "Kyrgyzstan",
        [125] "Laos",
        [126] "Latvia",
        [127] "Lebanon",
        [128] "Lesotho",
        [129] "Liberia",
        [130] "Libya",
        [131] "Liechtenstein",
        [132] "Lithuania",
        [133] "Luxembourg",
        [134] "Macau (China)",
        [135] "Macedonia",
        [136] "Madagascar",
        [137] "Malawi",
        [138] "Malaysia",
        [139] "Maldives",
        [140] "Mali",
        [141] "Malta",
        [142] "Marshall Islands",
        [143] "Martinique",
        [144] "Mauritania",
        [145] "Mauritius",
        [146] "Mayotte",
        [147] "Mexico",
        [148] "Micronesia",
        [149] "Moldova",
        [150] "Monaco",
        [151] "Mongolia",
        [152] "Montenegro",
        [153] "Montserrat",
        [154] "Morocco",
        [155] "Mozambique",
        [156] "Myanmar (Burma)",
        [157] "Namibia",
        [158] "Nauru",
        [159] "Nepal",
        [160] "Netherlands",
        [161] "New Caledonia",
        [162] "New Zealand",
        [163] "Nicaragua",
        [164] "Niger",
        [165] "Nigeria",
        [166] "Niue",
        [167] "Norfolk Island",
        [168] "North Korea",
        [169] "Northern Mariana Islands",
        [170] "Norway",
        [171] "Oman",
        [172] "Pakistan",
        [173] "Palau",
        [174] "Palestinian Territories",
        [175] "Panama",
        [176] "Papua New Guinea",
        [177] "Paraguay",
        [178] "Peru",
        [179] "Philippines",
        [180] "Pitcairn Islands",
        [181] "Poland",
        [182] "Portugal",
        [183] "Puerto Rico",
        [184] "Qatar",
        [185] "Réunion",
        [186] "Romania",
        [187] "Russia",
        [188] "Rwanda",
        [189] "Samoa",
        [190] "San Marino",
        [191] "Saudi Arabia",
        [192] "São Tomé & Príncipe",
        [193] "Senegal",
        [194] "Serbia",
        [195] "Seychelles",
        [196] "Sierra Leone",
        [197] "Singapore",
        [198] "Sint Maarten",
        [199] "Slovakia",
        [200] "Slovenia",
        [201] "So. Georgia & So. Sandwich Isl.",
        [202] "Solomon Islands",
        [203] "Somalia",
        [204] "South Africa",
        [205] "South Korea",
        [206] "South Sudan",
        [207] "Spain",
        [208] "Sri Lanka",
        [209] "St. Barthélemy",
        [210] "St. Helena",
        [211] "St. Kitts & Nevis",
        [212] "St. Lucia",
        [213] "St. Martin",
        [214] "St. Pierre & Miquelon",
        [215] "St. Vincent & Grenadines",
        [216] "Sudan",
        [217] "Suriname",
        [218] "Svalbard & Jan Mayen",
        [219] "Swaziland",
        [220] "Sweden",
        [221] "Switzerland",
        [222] "Syria",
        [223] "Taiwan",
        [224] "Tajikistan",
        [225] "Tanzania",
        [226] "Thailand",
        [227] "Timor-Leste",
        [228] "Togo",
        [229] "Tokelau",
        [230] "Tonga",
        [231] "Trinidad & Tobago",
        [232] "Tristan da Cunha",
        [233] "Tunisia",
        [234] "Turkey",
        [235] "Turkmenistan",
        [236] "Turks & Caicos Islands",
        [237] "Tuvalu",
        [238] "U.S. Outlying Islands",
        [239] "U.S. Virgin Islands",
        [240] "Uganda",
        [241] "Ukraine",
        [242] "United Arab Emirates",
        [243] "United Kingdom",
        [244] "United States",
        [245] "Uruguay",
        [246] "Uzbekistan",
        [247] "Vanuatu",
        [248] "Vatican City",
        [249] "Venezuela",
        [250] "Vietnam",
        [251] "Wallis & Futuna",
        [252] "Western Sahara",
        [253] "Yemen",
        [254] "Zambia",
        [255] "Zimbabwe"
    ]
=end

=begin
  
  def pickCountryFromTheList(countryTitleEditText, countryElementString, pickerViewString, countryTitleString, confirmCountryButton, nextbButton)
    touch(countryTitleEditText)
    loop do
      elements = query("TIPickerView UILabel").uniq! {|e| e["text"] }
      swipe :down, query: "TIPickerView", force: :strong
      wait_for_none_animating
      break if elements.length == 4
    end

    i = 0
    loop do
    #puts(i)
      elements = query("TIPickerView UILabel").uniq! {|e| e["text"] }
      elements.each do |element|
        #puts(element["text"])
      end
      for element in elements do
          if element["text"] == countryTitleString
            wait_for_none_animating
            sleep 2
            wait_for_none_animating
            touch(element)
            wait_for_none_animating
            #puts("did the touch")
            i = i + 1
            #puts(i)
            break
          else
            next
          end
      end
    break if (i == 1)
    wait_for_none_animating
    swipe :up, query: "TIPickerView", force: :normal
    wait_for_none_animating
    end

  end

end
  
=end