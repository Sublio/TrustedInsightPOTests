#system("adb shell input tap 200 650") - for downloads
#system("adb shell input tap 115 365") - for image
#system("adb shell input tap 360 1070") - for camera

require 'calabash-android/abase'


#Android

class CompleteYourProfilePage < Calabash::ABase

  def trait

    "* marked:'Complete your profile'"

  end

  def tap_skip_button

  	touch("* id:'skip_btn'")

  end

  def tap_next_button

  	touch("* id:'next_btn'")

  end

  def shortBio

  	"* id:'short_bio_input'"

  end

  def avatarImage

  	"* id:'profile_image'"

  end

  def dialogCameraButton

  	"* marked:'Camera'"

  end

  def dialogGalleryButton

  	"* marked:'Gallery'"

  end

  def dialogCancelButton

  	"* marked:'Cancel'"

  end

  def imageConfirmCancelButton

  	"* marked:'Cancel'"

  end

  def imageConfirmDoneButton

  	"* marked:'DONE'"

  end

  def enterBio(biofield)

  	enter_text(biofield, 'This is test short bio')
  	hide_soft_keyboard
  	sleep 1

  end

  def captureButton

    system("adb shell input tap 360 1070")
    sleep 3
    system("adb shell input tap 360 1070")
    
  end

  def selectAvatarFromGallery(avatarimage, gallerybutton, confirmbutton)

  	touch(avatarimage)
  	touch(gallerybutton)
  	sleep 3
  	system("adb shell input tap 200 650")
  	sleep 3
  	system("adb shell input tap 115 365")
  	sleep 3
  	touch(confirmbutton)

  end

  def selectAvatarFromCamera(avatarimage, camerabutton, confirmbutton, capturebutton)

  	touch(avatarimage)
  	sleep 2
  	touch(camerabutton)
  	sleep 3
  	system("adb shell input tap 360 1070")
  	sleep 3
  	system("adb shell input tap 360 1070")
  	sleep 3
  	touch(confirmbutton)
  end

 end