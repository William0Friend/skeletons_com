using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Skeletons_com
{
    public partial class Maps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLocationData();
            }
        }

        private void LoadLocationData()
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["DefaultConnection2"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT [User_Address] FROM [User]";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string address = reader.GetString(0);
                            LoadGoogleMap(address);
                        }
                    }
                }
            }
        }

        private void LoadGoogleMap(string address)
        {
            string script = $@"
                function initMap() {{
                    var geocoder = new google.maps.Geocoder();
                    geocoder.geocode({{ 'address': '{address}' }}, function (results, status) {{
                        if (status === 'OK') {{
                            var map = new google.maps.Map(document.getElementById('map'), {{
                                zoom: 13,
                                center: results[0].geometry.location
                            }});
                            var marker = new google.maps.Marker({{
                                position: results[0].geometry.location,
                                map: map,
                                title: '{address}'
                            }});
                            var infowindow = new google.maps.InfoWindow({{
                                content: '<h3>{address}</h3>'
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
