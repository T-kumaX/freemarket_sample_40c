$(document).ready(function(){
  var buyerIdGain = $('.buyer-id').val();
  var buyBtn = ('.item-buy-btn');
  if (buyerIdGain){
    $(buyBtn).text('売り切れました');
    $(buyBtn).addClass('disabled').removeClass('sell').on('click',function(){
      return false;
    });
  }
});
