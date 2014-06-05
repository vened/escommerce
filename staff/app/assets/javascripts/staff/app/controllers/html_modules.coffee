(->
  "use strict"

  ctrl = angular.module("HtmlModulesIndexController", [])

  ctrl.controller 'HtmlModulesIndexCtrl', ["$scope", "$routeParams", "HtmlModule", HtmlModulesIndexCtrl = ($scope, $routeParams, HtmlModule) ->
    HtmlModule.all().success (res) ->
      $scope.htmlModules = res
      return
    return
  ]

  ctrl.controller 'HtmlModulesShowCtrl', ["$scope", "$routeParams", "Page", "HtmlModule", HtmlModulesShowCtrl = ($scope, $routeParams, Page, HtmlModule) ->
    HtmlModule.find($routeParams.id).success (res) ->
      $scope.htmlModule = res
      $scope.pages = res.pages
      return
    $scope.submit = ->
      pagesId = $scope.pages.filter (value) -> value.checked
      console.log pagesId
      HtmlModule.edit($routeParams.id, pagesId)
      return
    return
  ]

  return)()