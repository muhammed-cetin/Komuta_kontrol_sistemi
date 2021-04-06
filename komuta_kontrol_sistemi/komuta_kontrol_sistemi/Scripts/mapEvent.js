
setInterval(function () {
    $.ajax({
        url: '/Home/get_gpsData',
        type: 'POST',
        success: function (result) {
            var location = JSON.parse(result);
            gps_data_list(location);
        }
    });

    $.ajax({
        url: '/Home/get_person',
        type: 'POST',
        success: function (result) {
            var personel = JSON.parse(result);
            personel_list(personel)
        }
    });

}, 5000);

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