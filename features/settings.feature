Feature: Settings screen features
As an Rosberry Tester
I want to log in and open Settings screen 

@shouldLoginAsCherepashkin
Scenario: Check all elements exist on Settings screen
Then I see title of Settings screen
And I logged in as Fedor Cherepashkin and I can see First and Last names
And I logged in as  Assistant Vice President and I can see my Position
And I logged in as worker from Ros company and I can see my Company
And I see user Avatar
And I see logo of Company
And I see Edit profile button
And I see Manage Interests button
And I see Preferences button
And I see Change password button
And I see Add phone number button
And I see About button
# And I see Terms of Use button
# And I see Privacy Policy button
# And I see Leave Feedback button
# And I see Log out button
# And I see label TrustedInsight at bottom of screen