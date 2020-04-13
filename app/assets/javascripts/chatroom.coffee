# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chatrom = App.cable.subscriptions.create "ChatroomChannel"
    connected: ->

    disconnected: ->

    recieved: (data) ->
        $('#message-container').append data.mod_message
        scroll_bottom()