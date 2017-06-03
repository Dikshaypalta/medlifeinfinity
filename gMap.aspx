<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gMap.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script src="js/gMap.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Show Google Map with Latitude and Longitude in asp.net website</title>
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
    height:23px; 
    width: 275px; 
  } 
    </style>
    <script "text/javascript">
        var pointer = 0;
        var directionsDisplay = new google.maps.DirectionsRenderer();
        var map, currentLat, currentLang,currentTitle, latitude, longitude, marker1, marker2, currentLatLang,postcode,title,currentMarker ;
        //if (navigator.geolocation) {
        //    navigator.geolocation.getCurrentPosition(function (p) {
        //        currentLatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
        //         currentLat = p.coords.latitude;
        //currentLang = p.coords.longitude;

        //        var geocoder = new google.maps.Geocoder();
        //        geocoder.geocode({ 'latLng': currentLatLng }, function (results, status) {
        //            if (status == google.maps.GeocoderStatus.OK) {
        //                if (results[1]) {
        //                     currentMarker = new google.maps.Marker({
        //                        position: currentLatLng,
        //                        map: map,
        //                        title: "Your location:" + results[1].formatted_address,
        //                        icon: "/images/gmap-green-marker.png"
        //                    });
        //                }
        //            }
        //        });
        //        var mapProp = {
        //            center: currentLatLng,
        //            zoom: 6,
        //            mapTypeId: google.maps.MapTypeId.ROADMAP
        //        };
        //        map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
        //        google.maps.event.addListener(currentMarker, "click", function (e) {
        //            var infoWindow = new google.maps.InfoWindow();
        //            infoWindow.setContent(currentMarker.title);
        //            infoWindow.open(map, currentMarker);
        //        });
               
            
        //    });
        //}
        //else {
        //    alert('Geo Location feature is not supported in this browser.');
        //}

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
                            currentTitle= results[1].formatted_address
                            currentMarker.setTitle("Your Location: "+currentTitle)
                        }
                    }
                });
           
               map = new google.maps.Map(document.getElementById("googleMap"), mapOptions);
                currentMarker= new google.maps.Marker({
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
            postcode = $('#txtSearch').val() +" "+ postcode;
            title = postcode;
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({'address': postcode }, function (results, status) {
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

            alert("Distance is: " + d.toFixed(2) + " Km");// returns the distance in meter

        }

        var rad = function (x) {
            return x * Math.PI / 180;
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods = "true">
</asp:ScriptManager>
    <div id="listPlacement"></div>
        <asp:TextBox ID="txtSearch" runat="server" CssClass="textbox"></asp:TextBox>
<cc1:AutoCompleteExtender ServiceMethod="SearchCustomers"
    MinimumPrefixLength="1"
    CompletionListCssClass="AutoExtender" CompletionListItemCssClass="AutoExtenderList"
     CompletionListHighlightedItemCssClass="AutoExtenderHighlight"
    CompletionInterval="100" EnableCaching="false" CompletionSetCount="10"
    CompletionListElementID="listPlacement"
    TargetControlID="txtSearch"
    ID="AutoCompleteExtender1" runat="server" FirstRowSelected = "true"
    OnClientItemSelected="ExtenderSelectedValue">
    </cc1:AutoCompleteExtender>
         <asp:HiddenField ID="hfCustomerId" runat="server" />
        <input type="button" id="btnSearch" value="Search" onclick="search()" class="btn-primary" />       
        <input type="button" id="btnTrace" value="trace" onclick="trace()"  class="btn-primary"/>  
        <input type="button" id="btnDistance" value="distance" onclick="distanceCalculate()" class="btn-primary"/>      
        <div id="googleMap" style="width: 100%; height: 600px;"></div>
    </form>
</body>
</html>
