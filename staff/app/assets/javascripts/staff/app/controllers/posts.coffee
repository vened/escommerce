(->
  "use strict"

  ctrl = angular.module("PostsController", [])

  ctrl.controller 'PostsIndexCtrl', ["$scope", "$routeParams", "Post", PostsIndexCtrl = ($scope, $routeParams, Post) ->
    Post.all().success (res) ->
      $scope.posts = res
      return
    return
  ]

  ctrl.controller 'JobsShowCtrl', ["$scope", "$routeParams", "Job", JobsShowCtrl = ($scope, $routeParams, Job) ->
    Job.find($routeParams.id).success (res) ->
      $scope.job = res
      return
    return
  ]

  ctrl.controller 'PostsNewCtrl', ["$scope", "$location", "Post", PostsNewCtrl = ($scope, $location, Post) ->
    $scope.Create = ->
      Post.create($scope.post).success () ->
        $location.path "/posts/"
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
