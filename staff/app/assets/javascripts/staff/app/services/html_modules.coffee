cmn = angular.module("HtmlModulesCommon", [])


# ORM Page
cmn.factory "HtmlModule", [ "$http", ($http) ->
  return(

    find: (id) ->
      return unless id
      $http.get("/staff/html_modules/#{id}")

    all: () ->
      $http.get("/staff/html_modules/")

    new: (obj) ->
      $http.post("/staff/html_modules/", obj)

    edit: (id, obj) ->
      $http.put("/staff/html_modules/#{id}", obj)

    link: (id, pageId) ->
      $http.put("/staff/html_modules/link/#{id}/#{pageId}")

    unlink: (id, pageId) ->
      $http.put("/staff/html_modules/unlink/#{id}/#{pageId}")

    destroy: (id) ->
      $http.delete("/staff/html_modules/#{id}")

  )
]