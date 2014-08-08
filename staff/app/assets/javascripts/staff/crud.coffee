#class CrudBase
#  constructor: (data) ->
#    @title = data.title
#    @link = data.link
#    @extras = data
#
#  toHtml: ->
#    "<a href='#{@link}'>#{@title}</a>"
#  toJson: ->
#    JSON.stringify @extras
#
# CoffeeScript
#app.factory "CrudDataService", [
#  "$http"
#  "$resource"
#  ($http, $resource) ->
#    return (type) ->
#      odataUrl = "/odata/Product";
#      $resource "", {},
#        getAll:
#          method: "GET"
#          url   : odataUrl
#
#]