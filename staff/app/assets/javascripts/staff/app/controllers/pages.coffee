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

  ctrl.controller 'PagesNewCtrl', ["$scope", "$location", "Page", "TransliterateService", PagesNewCtrl = ($scope, $location, Page, TransliterateService) ->
    $scope.new = 1
    $scope.$watch "page.title", (val) ->
      return if val is undefined
      $scope.page.path = TransliterateService(val)
      return
    $scope.pageEdit = ->
      page = Page.new($scope.page)
      page.success (res) ->
        $scope.page = res
        $location.path "/pages/"
        return
    return
  ]

  ctrl.controller 'PagesEditCtrl', ["$scope", "$routeParams", "Page", "$location", PagesEditCtrl = ($scope, $routeParams, Page, $location) ->
    id = $routeParams.id
    Page.find(id).success (res) ->
      $scope.page = res
      return
    $scope.findPage = (lang) ->
      Page.find($scope.page.path, lang).success (res) ->
        $scope.page = res
        return
    $scope.pageEdit = ->
      page = Page.edit($scope.page.path, $scope.page.lang, $scope.page)
      page.success (res) ->
        $scope.page = res
        $location.path "/pages/#{res.id}"
        return
      page.error ->
        $location.path "/pages/"
        return
    return
  ]
  
  ctrl.controller 'PagesDestroyCtrl', ["$scope", "$routeParams", "Page", "$location", PagesDestroyCtrl = ($scope, $routeParams, Page, $location) ->
    $scope.destroy = (arg) ->
      if arg is true
        page = Page.destroy($routeParams.id)
        page.success ->
          $location.path "/pages/"
    return
  ]

  return)()