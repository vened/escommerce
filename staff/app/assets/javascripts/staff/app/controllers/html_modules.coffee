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

  return)()