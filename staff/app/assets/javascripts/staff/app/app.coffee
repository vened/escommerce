(->
  "use strict"

  app = angular.module("staff", [
    "ngResource"
    "ngRoute"
    "RootRoutes"
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
        show:
          method : "GET"
          isArray: true

        edit:
          method: "PUT"

        destroy:
          method: "DELETE"

        create:
          method: "POST"
      )
  ]

  return)()