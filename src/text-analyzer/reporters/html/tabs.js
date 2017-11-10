$(() => {
  $('.tabs a').click((e) => {
    $('section.tab-section').hide();
    var target = $(e.target);
    $(`#${target.data('target')}`).show();
    $('li.is-active').removeClass('is-active');
    target.parent('li').addClass('is-active');
  })
  $('.tabs a').first().click();
})
