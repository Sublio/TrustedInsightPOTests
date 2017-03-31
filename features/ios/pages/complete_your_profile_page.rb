require 'calabash-cucumber/ibase'


#iOS

class CompleteYourProfilePage < Calabash::IBase

  def trait

    "* marked:'Complete your profile'"

  end

  def tap_skip_button

    touch("* id:'skip_btn'")

  end

  def tap_next_button

    touch("* marked:'DONE'")

  end

  def shortBio

    "TITextView"

  end

  def avatarImage

    "UIButton"

  end

  def dialogCameraButton

    "* marked:'Camera'"

  end

  def dialogGalleryButton

    "* marked:'Library'"

  end

  def dialogCancelButton

    "* marked:'Cancel'"

  end

  def imageConfirmCancelButton

    "UIImageView index:7"

  end

  def imageConfirmDoneButton

    "UINavigationBar UIImageView index:3"

  end

  def enterBio(biofield)

    enter_text(biofield, 'This is test short bio')

  end

  def captureButton

    "UIButton index:1"

  end

  def selectAvatarFromGallery(avatarimage, gallerybutton, confirmbutton)

    wait_for_none_animating
    touch(avatarimage)
    wait_for_none_animating
    touch(gallerybutton)
    wait_for_none_animating
    touch(confirmbutton)
    wait_for_none_animating
    #flash("ImagePickerPhotoLibraryAlbumContentsViewCell UIImageView")[1]

  end

  def selectAvatarFromCamera(avatarimage, camerabutton, confirmbutton, capturebutton)

    wait_for_none_animating
    touch(avatarimage)
    wait_for_none_animating
    touch(camerabutton)
    wait_for_none_animating
    touch(confirmbutton)
    wait_for_none_animating

  end

end