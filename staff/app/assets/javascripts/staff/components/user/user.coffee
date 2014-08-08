"use strict"

app = angular.module("userComponent", [])

# ORM Page
app.factory "User", [ "$http", ($http) ->
  return(
    find   : (id) ->
      return unless id
      $http.get("/staff/users/#{id}")
    all    : () ->
      $http.get("/staff/users/")
    create : (obj) ->
      $http.post("/staff/users/", obj)
    update : (id, obj) ->
      $http.put("/staff/users/#{id}", obj)
    destroy: (id) ->
      $http.delete("/staff/users/#{id}")
  )
]


#routes
app.config ($routeProvider) ->
  $routeProvider
  .when('/users'
    controller : 'UsersIndexCtrl',
    templateUrl: '/assets/staff/components/user/views/index.html'
  )
  .when('/users/new'
    controller : 'UsersNewCtrl',
    templateUrl: '/assets/staff/components/user/views/form.html'
  )
  .when('/users/:id/edit'
    controller : 'UsersEditCtrl',
    templateUrl: '/assets/staff/components/user/views/form.html'
  )
  .when('/users/:id/destroy'
    controller : 'UsersDestroyCtrl',
    templateUrl: '/assets/staff/components/user/views/destroy.html'
  )


# controller
app.controller 'UsersIndexCtrl', ["$scope", "$routeParams", "User", UsersIndexCtrl = ($scope, $routeParams, User) ->
  User.all().success (res) ->
    $scope.users = res
    return
  return
]

app.controller 'UsersNewCtrl', ["$scope", "$location", "User", UsersNewCtrl = ($scope, $location, User) ->
  $scope.submit = ->
    User.create($scope.user).success (val) ->
      if val.errors
        $scope.errors = val.errors
        console.log val.errors
      else
        $location.path "/users/"
      return
  return
]

app.controller 'UsersEditCtrl', ["$scope", "$routeParams", "User", "$location",
  UsersEditCtrl = ($scope, $routeParams, User, $location) ->
    User.find($routeParams.id).success (val) ->
      $scope.user = val
    $scope.submit = ->
      User.update($routeParams.id, $scope.user).success ->
        $location.path "/users/"
        return
    return
]

app.controller 'UsersDestroyCtrl', ["$scope", "$routeParams", "User", "$location",
  UsersDestroyCtrl = ($scope, $routeParams, User, $location) ->
    $scope.destroy = () ->
      User.destroy($routeParams.id).success ->
        $location.path "/users/"
        return
    return
]
