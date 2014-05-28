"use strict"

app = angular.module("staff", [
  "ngResource"
  "ngRoute"
  "RootRoutes"
  "RootDirectives"
  "DashboardController"
  "PagesController"
])

app.filter("trustAsHtml", [ "$sce", ($sce) ->
  return trustAsHtml = (value) ->
    $sce.trustAsHtml value
])

app.factory "PhotoService", [ "$resource", ($resource) ->
  return $resource("/ajax/paymentLayer.phtml", testmode: mambo.modal.testmode,
      load:
        method: "GET"
      buy :
        method: "POST"
  )
]