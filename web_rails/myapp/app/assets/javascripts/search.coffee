$(document).on 'change', '#pref', ->
  $.ajax(
    type: 'GET'
    url: '/search/get_cities'
    data: {
      pref: $(this).val()
    }
  ).done (data) ->
    $('label#city-area').html(data)

jQuery ->                                     # DOMが読み込まれたのを確認
  $('.auto-complete').autocomplete        # 対象となるinputタグのID
    source: "/search/auto_complete_product.json"