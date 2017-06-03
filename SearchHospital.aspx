<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDoctor.master" AutoEventWireup="true" CodeFile="SearchHospital.aspx.cs" Inherits="Default3" %>


<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder6" Runat="Server">
  
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="js/gmap.js"></script>

    <style type="text/css">
         .AutoExtender {
             font-family: Verdana, Helvetica, sans-serif;
             font-size: .8em;
             font-weight: normal;
             border: solid 1px #006699;
             line-height: 20px;
             padding: 10px;
             background-color: White;
             margin-left: 10px;
             height: auto;
         }

         .AutoExtenderList {
             border-bottom: dotted 1px #006699;
             cursor: pointer;
             color: Maroon;
         }

         .AutoExtenderHighlight {
             color: White;
             background-color: #006699;
             cursor: pointer;
         }

         #listPlacement {
             width: auto !important;
             height:auto !important;
         }
         .textbox { 
   
    background: white; 
    border: 1px solid #6495ED; 
    border-radius: 5px; 
    box-shadow: 0 0 5px 3px #6495ED; 
    color: #666; 
    outline: none; 
    height:40px; 
    width: 275px; 
  } 
    </style>
    <script "text/javascript">
        var pointer = 0;
        var directionsDisplay = new google.maps.DirectionsRenderer();
        var map, currentLat, currentLang, latitude, longitude, marker1, marker2, currentLatLang, postcode, title;
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (p) {
                currentLatLang = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
                currentLat = p.coords.latitude;
                currentLang = p.coords.longitude;
                var mapOptions = {
                    center: currentLatLang,
                    zoom: 6,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var geocoder = new google.maps.Geocoder();
                geocoder.geocode({ 'latLng': currentLatLang }, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        if (results[1]) {
                            currentTitle = results[1].formatted_address
                            currentMarker.setTitle("Your Location: " + currentTitle)
                        }
                    }
                });

                map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
                currentMarker = new google.maps.Marker({
                    position: currentLatLang,
                    map: map,
                    icon: "/images/gmap-green-marker.png",

                });
                google.maps.event.addListener(currentMarker, "click", function (e) {
                    var infoWindow = new google.maps.InfoWindow();
                    infoWindow.setContent(currentMarker.title);
                    infoWindow.open(map, currentMarker);
                });
            });
        } else {
            alert('Geo Location feature is not supported in this browser.');
        }
        function search() {
            var o = $('#<%= txtSearch.ClientID %>').val();
            var param = '{"name":"'+o+'"}';
            $.ajax({
                type: "POST",
                url: "/SearchHospital.aspx/GetAddress",
                data: param,
                //data: "{$('#txtSearch').val()}",
                contentType: "application/json",
                dataType: "json",
                success: function (data) {
                    postcode = data.d;
                }
            });
            postcode = $('#<%= txtSearch.ClientID %>').val() + " " + postcode;
            title = postcode;
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'address': postcode }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (pointer != 0) {
                        marker1.setMap(null);
                        latitude = results[0].geometry.location.lat();
                        longitude = results[0].geometry.location.lng();
                        marker2 = new google.maps.Marker({
                            position: new google.maps.LatLng(latitude, longitude),
                            map: map,
                            title: title
                        });
                        marker2.setMap(map);
                        google.maps.event.addListener(marker2, "click", function (e) {
                            var infoWindow = new google.maps.InfoWindow();
                            infoWindow.setContent(marker2.title);
                            infoWindow.open(map, marker2);
                        });
                        pointer--;
                    }
                    else {
                        latitude = results[0].geometry.location.lat();
                        longitude = results[0].geometry.location.lng();
                        if (marker2 != null) {
                            marker2.setMap(null);
                        }
                        marker1 = new google.maps.Marker({
                            position: new google.maps.LatLng(latitude, longitude),
                            map: map,
                            title: title
                        });
                        marker1.setMap(map);
                        google.maps.event.addListener(marker1, "click", function (e) {
                            var infoWindow = new google.maps.InfoWindow();
                            infoWindow.setContent(marker1.title);
                            infoWindow.open(map, marker1);
                        });
                        pointer++;
                    }
                }
            });
            directionsDisplay.setDirections({ routes: [] });
            postcode = "";
        }
        function trace() {
            var directionsService = new google.maps.DirectionsService();
            directionsDisplay.setMap(map);

            var start = currentLat + "," + currentLang
            var end = latitude + "," + longitude
            var request = {
                origin: start,
                destination: end,
                travelMode: google.maps.TravelMode.DRIVING
            };
            directionsService.route(request, function (response, status) {
                if (status == google.maps.DirectionsStatus.OK) {
                    directionsDisplay.setDirections(response);
                }
            });

        }
        function ExtenderSelectedValue(source, eventArgs) {
            PageMethods.GetAddress($('#txtSearch').val(), OnSuccess);
            function OnSuccess(response, userContext, methodName) {
                postcode = response;
            }

        }
        function distanceCalculate() {

            //var start = currentLat + "," + currentLang
            //var end = latitude + "," + longitude
            var R = 6378137; // Earth’s mean radius in meter
            var dLat = rad(latitude - currentLat);
            var dLong = rad(longitude - currentLang);
            var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
              Math.cos(rad(currentLat)) * Math.cos(rad(latitude)) *
              Math.sin(dLong / 2) * Math.sin(dLong / 2);
            var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
            var d = (R * c) / 1000;
            if (postcode == "")
                d = 0;
            alert("Distance is: " + d.toFixed(2) + " Km");// returns the distance in meter

        }

        var rad = function (x) {
            return x * Math.PI / 180;
        };
    </script>
    <div  style="margin-left:50px;margin-right:50px;">


        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">
</asp:ScriptManager>
    <div id="listPlacement"></div>
        <asp:TextBox ID="txtSearch" runat="server" CssClass="textbox" placeholder="Enter Hospital Name"></asp:TextBox>
<cc1:AutoCompleteExtender ServiceMethod="SearchHospitals"
    MinimumPrefixLength="1"
    CompletionListCssClass="AutoExtender" CompletionListItemCssClass="AutoExtenderList"
     CompletionListHighlightedItemCssClass="AutoExtenderHighlight"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
    CompletionListElementID="listPlacement"
    TargetControlID="txtSearch"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "true"
   >
    </cc1:AutoCompleteExtender><br /><br />
         <asp:HiddenField ID="hfCustomerId" runat="server" />
        <input type="button" id="btnSearch" value="Search" onclick="search()" class="btn btn-primary " />       
        <input type="button" id="btnTrace" value="Trace" onclick="trace()"  class="btn btn-primary"/>       
        <input type="button" id="btnDistance" value="Distance" onclick="distanceCalculate()" class="btn btn-primary"/> <br /><br />
          <div id="googleMap" style="width: 100%; height: 600px;"></div>
  <%--OnClientItemSelected="ExtenderSelectedValue"--%>
    </div>

</asp:Content>

