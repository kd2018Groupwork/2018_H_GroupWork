# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $("#spot_postcode").jpostal({
    postcode : [ 
      "#spot_postcode1",
      "#spot_postcode2"
     ],
    address  : {
      "#spot_prefecture_code"         : "%3",
      "#spot_address_city"            : "%4",
      "#spot_address_street"          : "%5%6%7"
    }
  })