"use strict"

controllers = angular.module("DashboardController", [])


controllers.controller 'DashboardCtrl', [
  '$scope'
  PagesIndexCtrl = ($scope) ->
    console.log 'page load'
]