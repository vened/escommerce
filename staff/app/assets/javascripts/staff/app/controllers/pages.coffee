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
    $scope.$watch "page.title", (val) ->
      return if val is undefined
      $scope.page.path = TransliterateService(val)
      return
    $scope.pageSent = ->
      page = Page.new($scope.page)
      page.success (res) ->
        $scope.page = res
        $location.path "/pages/"
        return
    return
  ]

  ctrl.controller 'PagesEditCtrl', ["$scope", "$routeParams", "Page", "$location", PagesEditCtrl = ($scope, $routeParams, Page, $location) ->
    id = $routeParams.id
    page = Page.find(id)
    page.success (res) ->
      $scope.page = res
      return
    $scope.pageSent = ->
      page = Page.edit(id, $scope.page)
      page.success (res) ->
        $scope.page = res
        $location.path "/pages/#{id}"
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