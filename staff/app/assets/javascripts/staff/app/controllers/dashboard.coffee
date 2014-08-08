"use strict"

controllers = angular.module("DashboardController", [])


controllers.controller 'DashboardCtrl', ["$scope", "$rootScope"
  PagesIndexCtrl = ($scope, $rootScope) ->
    $rootScope.title = "Dashboard"
]