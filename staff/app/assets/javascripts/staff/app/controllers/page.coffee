(->
  "use strict"

  ctrl = angular.module("PagesController", [])

  ctrl.controller "PagesIndexCtrl", ($scope, $rootScope, $routeParams, PagesService) ->
      $rootScope.title = "Список статических страниц"

      showAll = (pages) ->
        if pages is undefined
          PagesService.all (res) ->
            $scope.pages = res
            return
        else
          $scope.pages = pages
        return

      showAll()

      $scope.destroy = (id) ->
        PagesService.destroy
          pageId: id
          (res) ->
            showAll(res.pages)
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

  return)()