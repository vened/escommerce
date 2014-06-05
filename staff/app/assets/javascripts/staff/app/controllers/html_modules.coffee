(->
  "use strict"

  ctrl = angular.module("HtmlModulesIndexController", [])

  ctrl.controller 'HtmlModulesIndexCtrl', ["$scope", "$routeParams", "HtmlModule", HtmlModulesIndexCtrl = ($scope, $routeParams, HtmlModule) ->
    htmlModule = HtmlModule.all()
    htmlModule.success (res) ->
      $scope.htmlModules = res
      return
    return
  ]

  ctrl.controller 'HtmlModulesShowCtrl', ["$scope", "$routeParams", "HtmlModule", HtmlModulesShowCtrl = ($scope, $routeParams, HtmlModule) ->
    htmlModule = HtmlModule.find($routeParams.id)
    htmlModule.success (res) ->
      $scope.htmlModule = res
      return
    return
  ]

  return)()