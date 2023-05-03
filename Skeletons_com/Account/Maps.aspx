<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="Skeletons_com.Account.Maps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB7A7fEyF4N-_8x0VdC9hU7ipzSGN8wH8Q&callback=initMap"></script>
     <script>
        function initMap() {
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
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Google Maps</h2>
    <div id="map1" style="width: 100%; height: 400px;"></div>
   
    <h2>Google Maps 2</h2>
    <div id="map" style="width: 100%; height: 400px;"></div>

</asp:Content>