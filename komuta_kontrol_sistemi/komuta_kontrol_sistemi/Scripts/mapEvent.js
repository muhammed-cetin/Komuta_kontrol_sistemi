(function (exports) {


    exports.markers = [];

    $.ajax({
        url: '/Home/get_person',
        type: 'POST',
        success: function (result) {
            var personel = JSON.parse(result);
            personel_list(personel)

        }
    });

    function initMap() {
        var location = [];

        exports.map = new google.maps.Map(document.getElementById('map'), {
            zoom: 6,
            center: new google.maps.LatLng(39.3572151, 34.8096763),
            mapTypeControl: false,
            fullscreenControl: false,
            zoomControl: false,
            disableDoubleClickZoom: true,
            mapTypeId: google.maps.MapTypeId.HYBRID
        });

        setInterval(function () {
            $.ajax({
                url: '/Home/get_gpsData',
                type: 'POST',
                success: function (result) {
                    location = JSON.parse(result);

                    gps_data_list(location);

                    for (i = 0; i < location.length; i++) {
                        addMarker(location[i]);
                    }

                }
            });
        }, 5000);

    }
    //***********************************************************************************
    function addMarker(location) {
        var marker_map = new google.maps.Marker({
            position: new google.maps.LatLng(location.lat, location.lng),
            map: exports.map,
        });
        exports.markers.push(marker_map);
    }

    function personel_list(person) {
        $("#personel").empty();
        for (i = 0; i < person.length; i++) {
            $("#personel").
                append($("<li><a>ID: " + person[i].person_id + " --> " + person[i].person + "  /Team: " + person[i].cluster
                    + "  /Cihaz ID: " + person[i].cihaz_id + "</a></li>"))
        }
    }

    function gps_data_list(location) {
        $("#gps_data").empty();
        for (i = 0; i < location.length; i++) {
            $("#gps_data").
                append($("<li><a>" + location[i].signal_id
                    + " / Signal Time: " + location[i].signal_time
                    + " / lat: " + location[i].lat + " / lng:" + location[i].lng
                    + "</a></li>"))
        }
    }

    exports.initMap = initMap;

})((this.window = this || {}));