cmn = angular.module("PagesCommon", [])


# ORM Page
cmn.factory "Page", [ "$http", ($http) ->
  return(

    find: (id) ->
      return unless id
      $http.get("/staff/pages/#{id}")

    all: () ->
      $http.get("/staff/pages/")

    new: (obj) ->
      $http.post("/staff/pages/", obj)

    edit: (id, obj) ->
      $http.put("/staff/pages/#{id}", obj)

    destroy: (id) ->
      $http.delete("/staff/pages/#{id}")

  )
]