$(document).on('turbolinks:load', function() {
  $(document).on('hidden.bs.modal', function() {
    $(this).modal('hide');
    $('body').removeClass('modal-open');
    $('.modal-backdrop').remove();
  });
});
