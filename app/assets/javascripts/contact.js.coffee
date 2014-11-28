initialize = ->
  handler = undefined
  handler = Gmaps.build("Google")
  handler.buildMap
    provider: {
      maxZoom: 15
      minZoom: 10
    }
    internal:
      id: "map"
  , ->
    markers = handler.addMarkers([
      lat: 28.467310
      lng: 76.995987

      infowindow: "hello!"
    ])
    handler.bounds.extendWith markers
    handler.fitMapToBounds()
    return

  return

google.maps.event.addDomListener window, "load", initialize