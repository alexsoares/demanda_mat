jQuery.fn.faq = function(settings) {

  var defaults = {
    questionTag: 'h3',
    answerTag: 'div',
    openClass: 'open'
  };

  var settings = $.extend(defaults,settings);
  var answer = '';

  this.find(settings.questionTag).next(settings.answerTag).hide();

  this.find(settings.questionTag).click(function(){
    $(this).next(settings.answerTag).slideToggle();
    $(this).toggleClass(settings.openClass);
  });

}; 
