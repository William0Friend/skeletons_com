using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace Skeletons_com.User
{
    public partial class Maps : System.Web.UI.Page
    {

        protected string SecondAddress { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLocationData();
            }
        }

        private void LoadLocationData()
        {
            // You can replace these two lines with the actual addresses you want to display on the maps.
            string address1 = "1600 Amphitheatre Parkway, Mountain View, CA";
            string address2 = "1 Infinite Loop, Cupertino, CA";

            // Set the SecondAddress property so that it can be used in the Maps.aspx file.
            SecondAddress = address2;

            LoadGoogleMap(address1);
        }

        private void LoadGoogleMap(string address)
        {
            string script = $@"
                function initMap2(address) {{
                    var geocoder = new google.maps.Geocoder();
                    geocoder.geocode({{ 'address': address }}, function (results, status) {{
                        if (status === 'OK') {{
                            var map = new google.maps.Map(document.getElementById('map2'), {{
                                zoom: 13,
                                center: results[0].geometry.location
                            }});
                            var marker = new google.maps.Marker({{
                                position: results[0].geometry.location,
                                map: map,
                                title: address
                            }});
                            var infowindow = new google.maps.InfoWindow({{
                                content: '<h3>' + address + '</h3>'
                            }});
                            marker.addListener('click', function () {{
                                infowindow.open(map, marker);
                            }});
                        }} else {{
                            alert('Geocode was not successful for the following reason: ' + status);
                        }}
                    }});
                }}
            ";
            ClientScript.RegisterStartupScript(this.GetType(), "GoogleMap", script, true);
        }
    }
}
