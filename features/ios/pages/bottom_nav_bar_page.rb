require 'calabash-cucumber/ibase'


#IOS


class BottomNavBarPage < Calabash::IBase

    def trait

      "UITabBar" #tabbar locator

    end


    def feedButton

      "UITabBar UITabBarButton marked:'Home'"

    end

    def bookmarkButton

      "UITabBar UITabBarButton marked:'Bookmarks'"

    end

    def contactsButton

      "UITabBar UITabBarButton marked:'Contacts'"

    end

    def notificationsButton

      "UITabBar UITabBarButton marked:'Notifications'"

    end

    def settingsButton

      "UITabBar UITabBarButton marked:'Settings'"
    end
end



