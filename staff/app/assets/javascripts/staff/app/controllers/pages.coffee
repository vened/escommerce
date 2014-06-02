(->
  "use strict"

  ctrl = angular.module("PagesController", [])


  ctrl.controller 'PagesIndexCtrl', ["$scope", "$routeParams", "Page", PagesIndexCtrl = ($scope, $routeParams, Page) ->
    pages = Page.all()
    pages.success (res) ->
      $scope.pages = res
      return
    return
  ]


  ctrl.controller 'PagesShowCtrl', ["$scope", "$routeParams", "Page", PagesShowCtrl = ($scope, $routeParams, Page) ->
    page = Page.find($routeParams.id)
    page.success (res) ->
      $scope.page = res
      return
    return
  ]
  

  ctrl.controller 'PagesNewCtrl', ["$scope", "$routeParams", "Page", "TransliterateService", PagesNewCtrl = ($scope, $routeParams, Page, TransliterateService) ->
    $scope.$watch "page.pageTitle", (val) ->
      unless val
        return
      $scope.page.pagePath = TransliterateService(val)
#      return
#      $scope.page.pagePath = TransliterateService(val)
#    page = Page.find($routeParams.id)
#    page.success (res) ->
#      $scope.page = res
#      return
    return
  ]
  

#  ctrl.controller "PagesNewCtrl", ($scope, $rootScope, $routeParams, $location, PagesService, TransliterateService) ->
#    $scope.$watch "pageTitle", (val) ->
#      $scope.pagePath = TransliterateService(val)
#
#    $rootScope.title = "Создание страницы"
#    $scope.pageSent = ->
#      PagesService.create
#        title: $scope.pageTitle
#        path : $scope.pagePath
#        body : $scope.pageBody, (res) ->
#          if res.$resolved is true
#            $rootScope.pageSaveSuccess = true
#            $location.path "/pages/"
#          return
#      return
#    return


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
          title : $scope.pageTitle
          path  : $scope.pagePath
          body  : $scope.pageBody
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

  ctrl.controller 'PagesDestroyCtrl', ["$scope", "$routeParams", "Page", "$location", PagesDestroyCtrl = ($scope, $routeParams, Page, $location) ->
    $scope.destroy = (arg) ->
      if arg is true
        page = Page.destroy($routeParams.id)
        page.success (res) ->
          $location.path "/pages/"
      else if arg is false
        $location.path "/pages/"
    return
  ]

  return)()