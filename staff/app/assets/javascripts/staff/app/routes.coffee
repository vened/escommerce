"use strict"

routes = angular.module("RootRoutes", [])


routes.config ($routeProvider) ->
  $routeProvider
  .when('/'
    controller : 'DashboardCtrl',
    templateUrl: '/assets/staff/app/views/dashboard.html'
  )
  .when('/pages'
    controller : 'PagesIndexCtrl',
    templateUrl: '/assets/staff/app/views/pages/index.html'
  )
  .otherwise(
    redirectTo: '/'
  )