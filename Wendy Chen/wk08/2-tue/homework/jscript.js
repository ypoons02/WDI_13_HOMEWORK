var cityList = [{City: "Select a City", image:"default_BG"},
                {City: "NYC", image:"nyc"},
                {City: "SF", image:"sf"},
                {City: "LA", image:"la"},
                {City: "Austin", image:"austin"},
                {City: "Sydney", image:"sydney"}];

$(function() {
  $("#city-type option").remove();
  for (var city in cityList) {
    $("#city-type").prepend("<option>"+cityList[city].City+"</option>");
  }
});

var removeClassImage = "";

$('#city-type').on('change', function(event) {
 var selectedCity =  $('#city-type option:selected').text();
  for (var city in cityList) {
    if (cityList[city].City === selectedCity) {
        var displayImage = cityList[city].image;
        var changeImage = $('body');
        changeImage.addClass(displayImage);
        changeImage.removeClass(removeClassImage);
        removeClassImage = displayImage;
    }
  }
});
