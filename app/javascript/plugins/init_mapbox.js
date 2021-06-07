import mapboxgl from 'mapbox-gl';
// require("script!mapbox-gl/dist/mapbox-gl.js");
// import * as mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.long, marker.lat ]));
  console.log(markers)
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

  const addMarkersToMap = (map, markers) => {
    markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window); // add this

    new mapboxgl.Marker()
      .setLngLat([ marker.long, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
    });
  };
const initMapbox = () => {
  const mapElement = document.getElementById('map');


  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
  const markers = JSON.parse(mapElement.dataset.markers);
  addMarkersToMap(map, markers);
  fitMapToMarkers(map, markers);
  }
};

export { initMapbox };
