import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"


export default class extends Controller {
  static targets = ["map"]

  static values = {
    apiKey: String,
    markers: Array
  }

  display()  {
    console.log("coucou")
    if(this.mapTarget.style.position === 'absolute') {
      this.mapTarget.style.position = 'relative'
      this.mapTarget.style.top = 0
    } else {
      this.mapTarget.style.position = 'absolute'
      this.mapTarget.style.top = '-100vh'
    }
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style:"mapbox://styles/mapbox/streets-v10"
    });


    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    // this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
    //   mapboxgl: mapboxgl }))

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
