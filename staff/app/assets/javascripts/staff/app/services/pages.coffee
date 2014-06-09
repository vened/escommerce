cmn = angular.module("PagesCommon", [])


# ORM Page
cmn.factory "Page", [ "$http", ($http) ->
  return(

    find: (id, lang) ->
      return unless id
      lang = '' unless lang
      $http.get("/staff/pages/#{id}/#{lang}")

    all: () ->
      $http.get("/staff/pages/")

    new: (obj) ->
      $http.post("/staff/pages/", obj)

    edit: (id, lang, obj) ->
      $http.put("/staff/pages/#{id}/#{lang}", obj)

    destroy: (id) ->
      $http.delete("/staff/pages/#{id}")

  )
]