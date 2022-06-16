import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox.com/styles/v1/adele2022/cl4fyfjvm000q14qhpt96tflc.html?title=false&access_token=pk.eyJ1IjoiYWRlbGUyMDIyIiwiYSI6ImNsM213ZXp1MzA4eWgza285bG03Z3dhcDIifQ.-NlrSUj7E2La_oXaohkzcQ&zoomwheel=false#6.81/47.915/-122.685mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cybmapbox.com/styles/v1/adele2022/cl4fyfjvm000q14qhpt96tflc.html?title=false&access_token=pk.eyJ1IjoiYWRlbGUyMDIyIiwiYSI6ImNsM213ZXp1MzA4eWgza285bG03Z3dhcDIifQ.-NlrSUj7E2La_oXaohkzcQ&zoomwheel=false#6.81/47.915/-122.685" // <-- use your own!
    });
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)

        const customMarker = document.createElement("div")
        customMarker.className = "marker"
        customMarker.style.backgroundImage = `url('${marker.image_url}')`
        customMarker.style.backgroundSize = "contain"
        customMarker.style.width = "40px"
        customMarker.style.height = "40px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()

    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
