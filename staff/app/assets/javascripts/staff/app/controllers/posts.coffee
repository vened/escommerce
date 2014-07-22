(->
  "use strict"

  ctrl = angular.module("PostsController", [])

  ctrl.controller 'PostsIndexCtrl', ["$scope", "$routeParams", "Post", PostsIndexCtrl = ($scope, $routeParams, Post) ->
    Post.all().success (res) ->
      $scope.posts = res
      return
    return
  ]

  ctrl.controller 'PostsShowCtrl', ["$scope", "$routeParams", "Post", PostsShowCtrl = ($scope, $routeParams, Post) ->
    Post.find($routeParams.id).success (res) ->
      $scope.post = res
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

  ctrl.controller 'PostsEditCtrl', ["$scope", "$routeParams", "Job", "$location", PostsEditCtrl = ($scope, $routeParams, Job, $location) ->
    Job.find($routeParams.id).success (res) ->
      $scope.job = res
      return
    $scope.jobSend = ->
      Job.edit($scope.job.id, $scope.job).success (res) ->
        $location.path "/posts/"
        return
    return
  ]



  ctrl.controller 'PostsDestroyCtrl', ["$scope", "$routeParams", "Post", "$location", PostsDestroyCtrl = ($scope, $routeParams, Post, $location) ->
    $scope.destroy = () ->
      Post.destroy($routeParams.id).success ->
        $location.path "/posts/"
        return
    return
  ]

  return)()
