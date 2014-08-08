"use strict"

app = angular.module("userComponent", [])

# ORM Page
app.factory "User", [ "$http", ($http) ->
  return(

    find: (id) ->
      return unless id
      $http.get("/staff/admins/#{id}")

    all: () ->
      $http.get("/staff/users/")

    new: () ->
      $http.get("/staff/users/new")

    create: (obj) ->
      $http.post("/staff/users/", obj)

    edit: (id, obj) ->
      $http.put("/staff/admins/#{id}", obj)

    destroy: (id) ->
      $http.delete("/staff/admins/#{id}")

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
    templateUrl: '/assets/staff/components/user/views/new.html'
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
