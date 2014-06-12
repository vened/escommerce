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
    "JobsCommon"

    "RootDirectives"
    "SidebarDirectives"

    "DashboardController"
    "PagesController"
    "HtmlModulesIndexController"
    "JobsController"
  ])
  
  return)()