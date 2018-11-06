$(document).on('turbolinks:load', function(){
  
  $("[data-do='select_currency']").change(function() {
    window.location.href = '/currencies/' + this.value
  })

})

