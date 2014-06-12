(->
  "use strict"

  ctrl = angular.module("JobsController", [])

  ctrl.controller 'JobsIndexCtrl', ["$scope", "$routeParams", "Job", JobsIndexCtrl = ($scope, $routeParams, Job) ->
    Job.all().success (res) ->
      $scope.jobs = res
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

  ctrl.controller 'JobsNewCtrl', ["$scope", "$location", "Job", "TransliterateService", JobsNewCtrl = ($scope, $location, Job, TransliterateService) ->
    $scope.$watch "job.tag_text", (val) ->
      return if val is undefined
      $scope.job.tag_path = TransliterateService(val)
      return
    $scope.jobSend = ->
      Job.create($scope.job).success () ->
        $location.path "/jobs/"
        return
    return
  ]

  ctrl.controller 'PagesEditCtrl', ["$scope", "$routeParams", "Page", "$location", PagesEditCtrl = ($scope, $routeParams, Page, $location) ->
    Page.findEdit($routeParams.id, 'ru').success (res) ->
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



  ctrl.controller 'JobsDestroyCtrl', ["$scope", "$routeParams", "Job", "$location", JobsDestroyCtrl = ($scope, $routeParams, Job, $location) ->
    $scope.destroy = () ->
      Job.destroy($routeParams.id).success ->
        $location.path "/jobs/"
        return
    return
  ]

  return)()