#県の値変更を受けて市町村を変更
$(document).on 'change', '#pref', ->
  $.ajax(
    type: 'GET'
    url: '/search/get_cities'
    data: {
      pref: $(this).val()
    }
  ).done (data) ->
    $('label#city-area').html(data)

#作品名オートコンプリート
$(document).on 'turbolinks:load', ->
  $('.auto-complete').autocomplete
    source: "/search/auto_complete_product.json"