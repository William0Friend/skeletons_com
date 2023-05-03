<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="Skeletons_com.User.Maps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

         <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB7A7fEyF4N-_8x0VdC9hU7ipzSGN8wH8Q"></script>
    <script>
        function initMap1() {
            var location = { lat: 40.7128, lng: -74.0060 }; // Replace with your desired location
            var map = new google.maps.Map(document.getElementById("map1"), {
                zoom: 13,
                center: location
            });
            var marker = new google.maps.Marker({
                position: location,
                map: map,
                title: "My Enterprise"
            });
            var infowindow = new google.maps.InfoWindow({
                content: "<h3>My Enterprise</h3><p>Contact info: (123) 456-7890</p>"
            });
            marker.addListener("click", function () {
                infowindow.open(map, marker);
            });
        }

        function initMap2(address) {
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status === 'OK') {
                    var map = new google.maps.Map(document.getElementById('map2'), {
                        zoom: 13,
                        center: results[0].geometry.location
                    });
                    var marker = new google.maps.Marker({
                        position: results[0].geometry.location,
                        map: map,
                        title: address
                    });
                    var infowindow = new google.maps.InfoWindow({
                        content: '<h3>' + address + '</h3>'
                    });
                    marker.addListener('click', function () {
                        infowindow.open(map, marker);
                    });
                } else {
                    alert('Geocode was not successful for the following reason: ' + status);
                }
            });
        }

        window.onload = function () {
            initMap1();
            <% if (!string.IsNullOrEmpty(SecondAddress)) { %>
            initMap2('<%= SecondAddress %>');
            <% } %>
        };
    </script>

    <h2>Google Maps 1</h2>
    <div id="map1" style="width: 100%; height: 400px;"></div>

    <h2>Google Maps 2</h2>
    <div id="map2" style="width: 100%; height: 400px;"></div
</asp:Content>
