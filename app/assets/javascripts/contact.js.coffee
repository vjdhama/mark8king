initialize = ->
  handler = undefined
  handler = undefined
  handler = Gmaps.build("Google")
  handler.buildMap
    provider:
      maxZoom: 15
      minZoom: 10

    internal:
      id: "map"
  , ->
    markers = undefined
    markers = handler.addMarkers([
      lat: 28.467310
      lng: 76.995987
      infowindow: "We are here!!"
    ])
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
    return

  return

google.maps.event.addDomListener window, "load", initialize
# Next line is for fixing turbolinks bug
google.maps.event.addDomListener window, 'page:load', initialize

$(document).ready ->
  $('.contact_form').on 'ajax:before', ->
    $('#loader').removeClass('hide')
    $(this).addClass('hide')

  $('.contact_form').on 'ajax:success', ->
    $('#loader').addClass('hide')
    $(this).removeClass('hide')
