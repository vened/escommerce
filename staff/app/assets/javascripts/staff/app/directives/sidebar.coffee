"use strict"

directives = angular.module("SidebarDirectives", [])


directives.directive "sidebar", [
  "$rootScope"
  ($rootScope) ->
    return (
      templateUrl: '/assets/staff/app/views/shared/sidebar.html'
      link       : ($scope, iElement, attrs) ->
        
        return
    )
]