module Pages
  class Home < SitePrism::Page
    # UIANavigationBar
    #   name: UICatalog
    elements :navigation_bars, :accessibility_id, 'UICatalog'
    ## Able to use xpath to locate element
    element :buttons_opt, :xpath, "//UIAStaticText[@name='Buttons, Various uses of UIButton']"
  end
end
