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

app.filter("trustAsHtml", [ "$sce", ($sce) ->
  return trustAsHtml = (value) ->
    $sce.trustAsHtml value
])


app.factory "PagesService", [
  "$resource"
  ($resource) ->
    return $resource(
      "/pages/:pageId",
      pageId: "@id",
      show  :
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