(->
  "use strict"

  app = angular.module("staff", [
    "ngResource"
    "ngRoute"
    "RootRoutes"
    "HelpersServices"
    "RootDirectives"
    "SidebarDirectives"
    "DashboardController"
    "PagesController"
  ])


  app.factory "PagesService", [
    "$resource"
    ($resource) ->
      return $resource("/staff/pages/:pageId",
        pageId: "@id"
      ,
        all:
          method : "GET"
          isArray: true

        find:
          method : "GET"

        edit:
          method: "PUT"

        destroy:
          method: "DELETE"

        create:
          method: "POST"
      )
  ]

  return)()