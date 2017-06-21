# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('form#new_credit_card').submit (e) ->
  date = $('#expiration_month').val() + '/1/' + $('#expiration_year').val()
  $('#credit_card_expiration_date').val(dates)
