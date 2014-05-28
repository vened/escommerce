"use strict"

controllers = angular.module("PagesController", [])


controllers.controller "PagesIndexCtrl", [
  "$scope"
  "$rootScope"
  "PagesService"
  PagesIndexCtrl = ($scope, $rootScope, PagesService) ->
    PagesService.show {}, (response) ->
      $scope.pages = response
      return
    console.log PagesService

    $rootScope.title = "Список страниц"
    return
]