// app/javascript/plugins/init_mapbox.js
import mapboxgl from 'mapbox-gl';

const initMapbox = () => {
    console.log("initMapbox started");
    const mapElement = document.getElementById('map');

    if (mapElement) { // only build a map if there's a div#map to inject into
        console.log("mapElement is present");
        mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10'
        });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
        new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
    }
};

const fitMapToMarkers = (map, markers) => {
    console.log("fitMaptoMarkers is working");
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };
  

export { initMapbox };