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
    "PostsCommon"

    "RootDirectives"
    "SidebarDirectives"

    "DashboardController"
    "PagesController"
    "HtmlModulesIndexController"
    "PostsController"
  ])

  return)()
