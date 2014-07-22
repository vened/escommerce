gandalf = angular.module 'gandalf', []

gandalf.service 'gandalfService',
  class Gandalf
    constructor: ->
      @color = 'grey'
    comeBack: ->
      @color = 'white'

injector = angular.injector ['gandalf', 'ng']

injector.invoke (gandalfService) ->
  console.log gandalfService.color
  gandalfService.comeBack()
  console.log gandalfService.color
