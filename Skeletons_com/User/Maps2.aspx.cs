using System;
using System.Web;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace Skeletons_com.User
{
    public partial class Maps2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            LoadLocationData();
        }

        private void LoadLocationData()
        {
            string address1 = TextBoxAddress1.Text;
            string address2 = TextBoxAddress2.Text;

            LoadGoogleMap(address1, "map1");
            LoadGoogleMap(address2, "map2");
        }

        private void LoadGoogleMap(string address, string mapDivId)
        {
            string script = $@"
                function initMap{mapDivId}(address) {{
                    var geocoder = new google.maps.Geocoder();
                    geocoder.geocode({{ 'address': address }}, function (results, status) {{
                        if (status === 'OK') {{
                            var map = new google.maps.Map(document.getElementById('{mapDivId}'), {{
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
                initMap{mapDivId}('{address}');
            ";
            ClientScript.RegisterStartupScript(this.GetType(), $"GoogleMap{mapDivId}", script, true);
        }
    }

}
