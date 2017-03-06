function validateRegistration(event){
  $('.form-error').hide();
  $('.input').css('border','');

  // check if input blank
  if($('#name').val()==''){
    return showFormError('name', 'name-error');
  }
  else if($('#email-field').val()==''){
    return showFormError('email-field', 'email-error');
  }
  else if(!validEmail($('#email-field').val())){
    return showFormError('email-field', 'invalid-email-error');
  }
  else if($('#pass_field').val().length < 8){
    return showFormError('pass_field', 'pass-error');
  }
  else if($('#conf_pass').val() != $('#pass_field').val()){
    return showFormError('conf_pass', 'conf_pass_error');
  }

}

// check if valid password
function validEmail(email) {
  var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  return regex.test(email);
}
// show error while validating form
function showFormError(inputId, errorClassId){
  event.preventDefault();
  $('#' + inputId).css('border', '1px solid #a25656');
  $('#' + errorClassId).slideDown();
  return false;
}