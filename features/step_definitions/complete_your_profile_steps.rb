

When(/^I select avatar from camera$/) do

  @current_page = page(CompleteYourProfilePage).await(timeout: 30)
  @current_page.selectAvatarFromCamera(@current_page.avatarImage, @current_page.dialogCameraButton, @current_page.imageConfirmDoneButton, @current_page.captureButton)

end

When(/^I select avatar from gallery$/) do

  @current_page = page(CompleteYourProfilePage).await(timeout: 30)
  @current_page.selectAvatarFromGallery(@current_page.avatarImage, @current_page.dialogGalleryButton, @current_page.imageConfirmDoneButton)

end

When(/^I enter short bio$/) do

  @current_page = page(CompleteYourProfilePage).await(timeout: 30)
  @current_page.enterBio(@current_page.shortBio)

end

When(/^I touch Done button$/) do

  @current_page = page(CompleteYourProfilePage).await(timeout: 30)
  @current_page.tap_next_button
  @current_page = page(FeedPage).await(timeout: 30)

end