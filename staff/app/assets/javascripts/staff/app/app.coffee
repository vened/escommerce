(->
  "use strict"

  app = angular.module("staff", [
    "ngResource"
    "ngRoute"
    "ngSanitize"
    "RootRoutes"
    "textAngular"
    "ui.codemirror"

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