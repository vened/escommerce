"use strict"

controllers = angular.module("PagesController", [])


controllers.controller 'PagesIndexCtrl', [
  '$scope'
  PagesIndexCtrl = ($scope) ->
    console.log 'page load'
]