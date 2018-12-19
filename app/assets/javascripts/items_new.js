// 販売価格部分のアクション
$(function(){
  $('#selling-price').on('keyup', function(){
  var pri = String($('#selling-price').val());
    if ((pri >= 300) && (pri <= 999999)){
      $('.l-right-commission').text(Math.floor(pri * 0.1))
      var com = String($('.l-right-commission').text())
      $('.l-right-gain').text(parseInt(pri) - parseInt(com))
    } else{
      $('.l-right-commission').text('-')
      $('.l-right-gain').text('-')
    }
  });
});
