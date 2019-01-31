# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'change', '#plan_plan_details_attributes_0_spot_name', ->
  $.ajax(
    type: 'GET'
    url: '/planning/add_text_form'
    data: {
      spot_value: $(this).val()
    }
  ).done (html) ->
    $('label#other').html(html)

$(document).on 'click', '#datetimepicker', ->
    $(this).datetimepicker()
    $(this).datetimepicker('show')