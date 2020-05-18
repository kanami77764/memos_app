$(function(){

  function buildFood(memo){
    let html_food = `<div class="list__foods__one">
                      <i class="fas fa-fish"></i>
                      ${memo.food}</div>`
    return html_food;
  }
  function buildLimit(memo){
    let html_limit = `<div class="list__limit__date">
                      <i class="fas fa-exclamation-triangle"></i>
                      ${memo.limit_date}</div>`
    return html_limit;
  }
  function buildEdit (memo){
    let html_edit = `<div class="list__edit__btn">
                    <a href="/memos/${memo.id}/edit">変更</a>
                    </div>`
    return html_edit;
  }
  function buildDelete (memo){
    let html_delete = `<div class="list__delete__btn">
                      <a rel="nofollow" data-method="delete" href="/memos/${memo.id}">終わり
                      </a></div>`
    return html_delete;
  }

  $('#new_memo').on('submit', function(e){
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(memo){
      let html_food = buildFood(memo);
      let html_limit = buildLimit(memo);
      let html_edit = buildEdit(memo);
      let html_delete = buildDelete(memo);
      $('.list__foods').append(html_food);
      $('.list__limit').append(html_limit);
      $('.list__edit').append(html_edit);
      $('.list__delete').append(html_delete);
      $('#memo_food').val('');
      $('#memo_limit_date_1i').val('');
      $('#memo_limit_date_2i').val('');
      $('#memo_limit_date_3i').val('');
      $('.submit-btn').prop('disabled', false);
      $('.submit-btn').removeAttr("data-disable-with");
    })
    .fail(function(){
      alert('メモを入力してください');
      $('.submit-btn').prop('disabled', false);
      $('.submit-btn').removeAttr("data-disable-with");
    })
  });
});