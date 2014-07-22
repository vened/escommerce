"use strict"

routes = angular.module("RootRoutes", [])


routes.config ($routeProvider) ->
  $routeProvider
  .when('/'
    controller: 'DashboardCtrl',
    templateUrl: '/assets/staff/app/views/dashboard.html'
  )

  .when('/pages'
    controller: 'PagesIndexCtrl',
    templateUrl: '/assets/staff/app/views/pages/index.html'
  )
  .when('/pages/new'
    controller: 'PagesNewCtrl',
    templateUrl: '/assets/staff/app/views/pages/form.html'
  )
  .when('/pages/:id'
    controller: 'PagesShowCtrl',
    templateUrl: '/assets/staff/app/views/pages/show.html'
  )
  .when('/pages/:id/edit'
    controller: 'PagesEditCtrl',
    templateUrl: '/assets/staff/app/views/pages/form.html'
  )
  .when('/pages/:id/destroy'
    controller: 'PagesDestroyCtrl',
    templateUrl: '/assets/staff/app/views/pages/destroy.html'
  )


  .when('/html_modules'
    controller: 'HtmlModulesIndexCtrl',
    templateUrl: '/assets/staff/app/views/html_modules/index.html'
  )
  .when('/html_modules/new'
    controller: 'HtmlModulesNewCtrl',
    templateUrl: '/assets/staff/app/views/html_modules/form.html'
  )
  .when('/html_modules/:id'
    controller: 'HtmlModulesShowCtrl',
    templateUrl: '/assets/staff/app/views/html_modules/show.html'
  )
  .when('/html_modules/:id/edit'
    controller: 'HtmlModulesEditCtrl',
    templateUrl: '/assets/staff/app/views/html_modules/form.html'
  )
  .when('/html_modules/:id/destroy'
    controller: 'HtmlModulesDestroyCtrl',
    templateUrl: '/assets/staff/app/views/html_modules/destroy.html'
  )


  .when('/posts'
    controller: 'PostsIndexCtrl',
    templateUrl: '/assets/staff/app/views/posts/index.html'
  )
  .when('/posts/new'
    controller: 'PostsNewCtrl',
    templateUrl: '/assets/staff/app/views/posts/form.html'
  )
  .when('/posts/:id'
    controller: 'PostsShowCtrl',
    templateUrl: '/assets/staff/app/views/posts/show.html'
  )
  .when('/posts/:id/edit'
    controller: 'PostsEditCtrl',
    templateUrl: '/assets/staff/app/views/posts/form.html'
  )
  .when('/posts/:id/destroy'
    controller: 'PostsDestroyCtrl',
    templateUrl: '/assets/staff/app/views/posts/destroy.html'
  )


  .otherwise(
    redirectTo: '/'
  )
