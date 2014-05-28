(->
  "use strict"

  angular.module("PagesController", [])


  .controller "PagesIndexCtrl", [
    "$scope"
    "$routeParams"
    "PagesService"
    PagesIndexCtrl = ($scope, $routeParams, PagesService) ->
      PagesService.show
        pageId: 1
      , (response) ->
        $scope.page = response[0]
        console.log $routeParams
        return

  ]

  return)()