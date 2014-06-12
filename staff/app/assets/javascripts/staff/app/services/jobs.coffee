cmn = angular.module("JobsCommon", [])


# ORM Page
cmn.factory "Job", [ "$http", ($http) ->
  return(

    find: (id) ->
      return unless id
      $http.get("/staff/jobs/#{id}")

    all: () ->
      $http.get("/staff/jobs/")

    new: () ->
      $http.get("/staff/jobs/new")

    create: (obj) ->
      $http.post("/staff/jobs/", obj)

    edit: (id, obj) ->
      $http.put("/staff/jobs/#{id}", obj)

    destroy: (id) ->
      $http.delete("/staff/jobs/#{id}")

  )
]