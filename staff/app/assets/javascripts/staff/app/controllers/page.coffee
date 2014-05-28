(->
  "use strict"

  ctrl = angular.module("PagesController", [])


  ctrl.controller "PagesIndexCtrl", [
    "$scope", "$rootScope", "$routeParams", "PagesService"
    PagesIndexCtrl = ($scope, $rootScope, $routeParams, PagesService) ->
      $rootScope.title = "Список статических страниц"
      PagesService.all (res) ->
        $scope.pages = res
        return
      return
  ]


  ctrl.controller "PagesShowCtrl", [
    "$scope", "$rootScope", "$routeParams", "PagesService"
    PagesShowCtrl = ($scope, $rootScope, $routeParams, PagesService) ->
      PagesService.find
        pageId: $routeParams.id
        (res) ->
          $rootScope.title = res.title
          $scope.page = res
          return
      return
  ]


  ctrl.controller "PagesNewCtrl", [
    "$scope", "$rootScope", "$routeParams", "$location", "PagesService"
    PagesNewCtrl = ($scope, $rootScope, $routeParams, $location, PagesService) ->
      $rootScope.title = "Создание страницы"
      $scope.pageSent = ->
        PagesService.create
          title: $scope.pageName, (res) ->
            if res.$resolved is true
              $location.path "/pages/#{res.id}"
            return
        return
      return
  ]

  return)()