<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GoogleMaps.aspx.cs" Inherits="Skeletons_com.GoogleMaps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Google Maps</h1>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB7A7fEyF4N-_8x0VdC9hU7ipzSGN8wH8Q"></script>
    <script>
        var map, directionsService, directionsRenderer;

        function initMap() {
            directionsService = new google.maps.DirectionsService();
            directionsRenderer = new google.maps.DirectionsRenderer();

            map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16,
            });

            directionsRenderer.setMap(map);

            // Get user's location
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var location = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude,
                    };
                    map.setCenter(location);
                    calculateAndDisplayRoute(location);
                });
            } else {
                alert("Geolocation is not supported by this browser.");
            }
        }

        function calculateAndDisplayRoute(userLocation) {
            // Replace with the destination location
            var destination = { lat: DESTINATION_LATITUDE, lng: DESTINATION_LONGITUDE };

            directionsService.route(
                {
                    origin: userLocation,
                    destination: destination,
                    travelMode: google.maps.TravelMode.DRIVING,
                },
                function (response, status) {
                    if (status === "OK") {
                        directionsRenderer.setDirections(response);
                    } else {
                        window.alert("Directions request failed due to " + status);
                    }
                }
            );
        }

        window.onload = function () {
            initMap();
        };
    </script>
    <style>
        #map {
            height: 500px;
            width: 100%;
        }
    </style>
    <div id="map"></div>
</asp:Content>
