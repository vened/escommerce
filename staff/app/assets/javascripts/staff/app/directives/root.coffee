"use strict"

directives = angular.module("RootDirectives", [])


directives.directive "imoderiser", [
  "$rootScope"
  ($rootScope) ->
    return (
      templateUrl: 'assets/staff/app/views/test.html'
      link       : ($scope, iElement, attrs) ->
        console.log iElement
        return
    )
]