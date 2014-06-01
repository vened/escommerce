(->
  "use strict"

  ctrl = angular.module("PagesController", [])

  ctrl.controller "PagesIndexCtrl", ($scope, $rootScope, $routeParams, PagesService) ->
    $rootScope.title = "Список статических страниц"
    PagesService.all (res) ->
      $scope.pages = res
      return
    return


  ctrl.controller "PagesShowCtrl", ($scope, $rootScope, $routeParams, PagesService) ->
    PagesService.find
      pageId: $routeParams.id
      (res) ->
        $rootScope.title = res.title
        $scope.page = res
        return
    return


  ctrl.controller "PagesNewCtrl", ($scope, $rootScope, $routeParams, $location, PagesService, TransliterateService) ->
    $scope.$watch "pageTitle", (val) ->
      $scope.pagePath = TransliterateService(val)

    $rootScope.title = "Создание страницы"
    $scope.pageSent = ->
      PagesService.create
        title: $scope.pageTitle
        path: $scope.pagePath
        body: $scope.pageBody, (res) ->
          if res.$resolved is true
            $rootScope.pageSaveSuccess = true
            $location.path "/pages/#{res.id}"
          return
      return
    return


  ctrl.controller "PagesEditCtrl", ($scope, $rootScope, $routeParams, PagesService, $http, $location) ->
    PagesService.find
      pageId: $routeParams.id
      (res) ->
        $rootScope.title = "Редактирование страницы"
        $scope.pageTitle = res.title
        $scope.pagePath = res.path
        $scope.pageBody = res.body
        return

    $scope.pageSent = ->
      # TODO:: сделать сервис или фабрику
      $http.put(
        "/staff/pages/#{$routeParams.id}"
        {
          pageId: $routeParams.id
          title: $scope.pageTitle
          path: $scope.pagePath
          body: $scope.pageBody
        }
      )
      .success (data, status, headers, config) ->
          $rootScope.pageSaveSuccess = true
          $location.path "/pages/#{data.id}"
          return
      .error (data, status, headers, config) ->
          $rootScope.pageSaveSuccess = true
          $location.path "/pages/#{$routeParams.id}"
          return
      return

    return


  ctrl.controller "PagesDestroyCtrl", ($scope, $rootScope, $routeParams, $http, $location) ->
    $scope.destroy = (arg) ->
      if arg is true
        $http.delete "/staff/pages/#{$routeParams.id}"
        $location.path "/pages/"
      else if arg is false
        $location.path "/pages/"
    return


  return)()