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
  .when('/pages/new'
    controller : 'PagesNewCtrl',
    templateUrl: '/assets/staff/app/views/pages/form.html'
  )
  .when('/pages/:id/edit'
    controller : 'PagesEditCtrl',
    templateUrl: '/assets/staff/app/views/pages/form.html'
  )
  .when('/pages/:id/destroy'
    controller : 'PagesDestroyCtrl',
    templateUrl: '/assets/staff/app/views/pages/delete.html'
  )
  .otherwise(
    redirectTo: '/'
  )