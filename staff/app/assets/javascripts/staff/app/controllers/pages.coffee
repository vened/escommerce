(->
  "use strict"

  ctrl = angular.module("PagesController", [])

  ctrl.controller 'PagesIndexCtrl', ["$scope", "$routeParams", "Page", PagesIndexCtrl = ($scope, $routeParams, Page) ->
    pages = Page.all()
    pages.success (res) ->
      $scope.pages = res
      return
    return
  ]

  ctrl.controller 'PagesShowCtrl', ["$scope", "$routeParams", "Page", PagesShowCtrl = ($scope, $routeParams, Page) ->
    $scope.setLang = (lang) ->
      $scope.lang = lang
      PageLoad($routeParams.id, lang)
      return
    PageLoad = (id, lang) ->
      Page.find(id, lang).success (res) ->
        $scope.obj = res
        return
    $scope.setLang('ru')
    return
  ]

  ctrl.controller 'PagesNewCtrl',
    ["$scope", "$location", "Page", "TransliterateService", PagesNewCtrl = ($scope, $location, Page, TransliterateService) ->
      Page.new().success (res) ->
        $scope.obj = res ? res || {}
        $scope.obj.content = {}
        $scope.obj.content.lang = 'ru'
        return
      $scope.$watch "obj.content.title", (val) ->
        return if val is undefined
        $scope.obj.page.path = TransliterateService(val)
        return
      $scope.pageEdit = ->
        Page.create($scope.obj).success () ->
          $location.path "/pages/"
          return
      return
    ]

  ctrl.controller 'PagesEditCtrl', ["$scope", "$routeParams", "Page", "$location", PagesEditCtrl = ($scope, $routeParams, Page, $location) ->
    Page.findEdit($routeParams.id, 'ru' ).success (res) ->
      $scope.obj = res
      return
    $scope.findPage = (lang) ->
      Page.findEdit($routeParams.id, lang).success (res) ->
        $scope.obj = res
        return
    $scope.pageEdit = ->
      Page.edit($scope.obj.page.id, $scope.obj).success (res) ->
        $location.path "/pages/"
        return
    return
  ]



  ctrl.controller 'PagesDestroyCtrl', ["$scope", "$routeParams", "Page", "$location", PagesDestroyCtrl = ($scope, $routeParams, Page, $location) ->
    $scope.destroy = (arg) ->
      if arg is true
        page = Page.destroy($routeParams.id)
        page.success ->
          $location.path "/pages/"
    return
  ]

  return)()