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
    ["$scope", "$routeParams", "HtmlModule", HtmlModulesShowCtrl = ($scope, $routeParams, HtmlModule) ->
      $scope.setLang = (lang) ->
        $scope.lang = lang
        HtmlModuleLoad($routeParams.id, lang)
        return
      HtmlModuleLoad = (id, lang) ->
        HtmlModule.find(id, lang).success (res) ->
          $scope.htmlModule = res.module
          $scope.htmlModuleLanguage = res.html_module_language
          $scope.pages = res.pages
          $scope.linkedPages = res.linkedPages
          return
      $scope.setLang('ru')
      return
    ]


  ctrl.controller 'HtmlModulesNewCtrl',
    ["$scope", "$location", "HtmlModule", HtmlModulesNewCtrl = ($scope, $location, HtmlModule) ->
      $scope.title = "Создание модуля"
      $scope.lang_disabled = true
      $scope.obj = {}
      $scope.obj.html_module_language = {}
      $scope.obj.html_module_language.lang = 'ru'
      $scope.editorOptions = {
        height: "500px"
        lineNumbers: true
        lineWrapping: true
        mode: 'html'
      }
      $scope.moduleSent = ->
        HtmlModule.new($scope.obj)
        .success () ->
            $location.path "/html_modules/"
            return
        .error (res, head) ->
            $scope.error = head
            return
      return
    ]


  ctrl.controller 'HtmlModulesEditCtrl',
    ["$scope", "$routeParams", "HtmlModule", "$location", HtmlModulesEditCtrl = ($scope, $routeParams, HtmlModule, $location) ->
      $scope.editorOptions = {
        height: "500px"
        lineNumbers: true
        lineWrapping: true
        mode: 'html'
      }
      HtmlModule.findEdit($routeParams.id, 'ru').success (res) ->
        $scope.obj = res
        return
      $scope.findHtmlModule = (lang) ->
        HtmlModule.findEdit($routeParams.id, lang).success (res) ->
          $scope.obj = res
          return
      $scope.moduleSent = ->
        HtmlModule.edit($routeParams.id, $scope.obj)
        .success () ->
            $location.path "/html_modules/#{$routeParams.id}"
            return
        .error (res, head) ->
            $scope.error = head
            return
      return
    ]


  ctrl.controller 'HtmlModulesDestroyCtrl',
    ["$scope", "$routeParams", "$location", "HtmlModule", HtmlModulesDestroyCtrl = ($scope, $routeParams, $location, HtmlModule) ->
      $scope.destroy = ->
        HtmlModule.destroy($routeParams.id)
        .success () ->
            $location.path "/html_modules/"
            return
        .error (res, head) ->
            $scope.error = head
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