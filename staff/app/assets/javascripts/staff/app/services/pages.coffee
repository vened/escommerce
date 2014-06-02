cmn = angular.module("PagesCommon", [])


# ORM Page
cmn.factory "Page", [ "$http", ($http) ->
  return(
    
    find: (id) ->
      unless id
        return
      prom = $http.get("/staff/pages/#{id}")
      return prom
      
    all: () ->
      prom = $http.get("/staff/pages/")
      return prom
      
      
  )
]


#return $http.get("/staff/pages/#{id}")