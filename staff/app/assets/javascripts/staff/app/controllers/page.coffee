(->
  "use strict"

  angular.module("PagesController", [])


  .controller "PagesIndexCtrl", [
    "$scope"
    "$rootScope"
    "$routeParams"
    "PagesService"
    PagesIndexCtrl = ($scope, $rootScope, $routeParams, PagesService) ->
      $rootScope.title = "Список статических страниц"
      PagesService.show
        pageId: $routeParams.id
      , (res) ->
        $scope.pages = res
        return

  ]

  return)()