$(document).on 'change', '#pref', ->
  $.ajax(
    type: 'GET'
    url: '/search/get_cities'
    data: {
      pref: $(this).val()
    }
  ).done (data) ->
    $('label#city-area').html(data)