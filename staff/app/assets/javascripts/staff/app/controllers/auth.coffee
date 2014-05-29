(->
  "use strict"

  ctrl = angular.module("AuthController", [])


  ctrl.controller "LoginCtrl", [
    "$scope", "$rootScope", "$routeParams", "PagesService"
    LoginCtrl = ($scope, $rootScope, $routeParams, PagesService) ->
      console.log("login")
  ]


  return)()