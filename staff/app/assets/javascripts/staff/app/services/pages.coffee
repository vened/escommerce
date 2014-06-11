cmn = angular.module("PagesCommon", [])


# ORM Page
cmn.factory "Page", [ "$http", ($http) ->
  return(

    find: (id, lang) ->
      return unless id
      lang = '' unless lang
      $http.get("/staff/pages/#{id}/#{lang}")

    findEdit: (id, lang) ->
      return unless id
      lang = '' unless lang
      $http.get("/staff/pages/#{id}/#{lang}/edit")

    all: () ->
      $http.get("/staff/pages/")

    new: () ->
      $http.get("/staff/pages/new")

    create: (obj) ->
      $http.post("/staff/pages/", obj)

    edit: (id, obj) ->
      $http.put("/staff/pages/#{id}", obj)

    destroy: (id) ->
      $http.delete("/staff/pages/#{id}")

  )
]