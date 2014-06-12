(->
  "use strict"

  ctrl = angular.module("JobsController", [])

  ctrl.controller 'JobsIndexCtrl', ["$scope", "$routeParams", "Job", JobsIndexCtrl = ($scope, $routeParams, Job) ->
    Job.all().success (res) ->
      $scope.jobs = res
      return
    return
  ]

  ctrl.controller 'JobsShowCtrl', ["$scope", "$routeParams", "Job", JobsShowCtrl = ($scope, $routeParams, Job) ->
    Job.find($routeParams.id).success (res) ->
      $scope.job = res
      return
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

  ctrl.controller 'JobsEditCtrl', ["$scope", "$routeParams", "Job", "$location", JobsEditCtrl = ($scope, $routeParams, Job, $location) ->
    Job.find($routeParams.id).success (res) ->
      $scope.job = res
      return
    $scope.jobSend = ->
      Job.edit($scope.job.id, $scope.job).success (res) ->
        $location.path "/jobs/"
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