cmn = angular.module("PostsCommon", [])


# ORM Page
cmn.factory "Post", [ "$http", ($http) ->
  return(

    find: (id) ->
      return unless id
      $http.get("/staff/posts/#{id}")

    all: () ->
      $http.get("/staff/posts/")

    new: () ->
      $http.get("/staff/posts/new")

    create: (obj) ->
      $http.post("/staff/posts/", obj)

    edit: (id, obj) ->
      $http.put("/staff/posts/#{id}", obj)

    destroy: (id) ->
      $http.delete("/staff/posts/#{id}")

  )
]
