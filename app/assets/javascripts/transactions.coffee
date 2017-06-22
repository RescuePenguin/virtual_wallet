$(document).on 'change', 'input[type=radio]', () ->
  if $(this).val() == 'credit_card'
    $('.credit-card-options').show()
  else
    $('.credit-card-options').hide()
