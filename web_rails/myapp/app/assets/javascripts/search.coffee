$(document).on 'change', '#pref', ->
  $.ajax(
    type: 'GET'
    url: '/search/get_cities'
    data: {
      pref: $(this).val()
    }
  ).done (data) ->
    $('label#city-area').html(data)

jQuery ->                                     # viewが読まれ終わった後に実行
  $('.auto-complete').autocomplete            # 対象となるinputタグのクラス
    source: "/search/auto_complete_product.json"