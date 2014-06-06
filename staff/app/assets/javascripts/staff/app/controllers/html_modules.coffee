(->
  "use strict"

  ctrl = angular.module("HtmlModulesIndexController", [])


  ctrl.controller 'HtmlModulesIndexCtrl',
    ["$scope", "$routeParams", "HtmlModule", HtmlModulesIndexCtrl = ($scope, $routeParams, HtmlModule) ->
      HtmlModule.all().success (res) ->
        $scope.htmlModules = res
        return
      return
    ]


  ctrl.controller 'HtmlModulesShowCtrl',
    ["$scope", "$routeParams", "Page", "HtmlModule", HtmlModulesShowCtrl = ($scope, $routeParams, Page, HtmlModule) ->
      HtmlModule.find($routeParams.id).success (res) ->
        $scope.htmlModule = res.module
        $scope.pages = res.pages
        $scope.linkedPages = res.linkedPages
        return
      return
    ]


  ctrl.controller 'HtmlModulesLinkedCtrl',
    ["$scope", "$routeParams", "Page", "HtmlModule", HtmlModulesLinkedCtrl = ($scope, $routeParams, Page, HtmlModule) ->
      $scope.linkedPage = (pageId) ->
        HtmlModule.link($routeParams.id, pageId).success (res) ->
          $scope.pages = res.pages
          $scope.linkedPages = res.linkedPages
          $scope.$digest() if !$scope.$$phase
          return
      $scope.unlinkedPage = (pageId) ->
        HtmlModule.unlink($routeParams.id, pageId).success (res) ->
          $scope.pages = res.pages
          $scope.linkedPages = res.linkedPages
          $scope.$digest() if !$scope.$$phase
          return
      return
    ]


  return)()