(->
  "use strict"

  app = angular.module("staff", [
    "ngResource"
    "ngRoute"
    "ngSanitize"
    "RootRoutes"
    "textAngular"

    "PagesCommon"
    "HtmlModulesCommon"
    "HelpersServices"

    "RootDirectives"
    "SidebarDirectives"

    "DashboardController"
    "PagesController"
    "HtmlModulesIndexController"
  ])
  
  return)()