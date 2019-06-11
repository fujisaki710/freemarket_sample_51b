$(function(){
  // カテゴリー部分のフォームの追加
  $("#categoryAppend").change(function(){
      $("#categoryAppend-1").css("display","block")
      $("#categoryAppend-size").css("height","240px")
  });
  $("#categoryAppend-1").change(function(){
      $("#categoryAppend-2").css("display","block")
      $("#categoryAppend-size").css("height","290px")

  });
  $("#categoryAppend-2").change(function(){
      $("#categoryAppend-size").css("display","block")
      
  });
  $("#categoryAppend-2").change(function(){
      $("#categoryAppend-any").css("display","block")
      $("#categoryAppend-size").css("height","400px")
  });

  // 配送方法フォームの追加
  $("#fee").change(function(){
    $("#appendBox-rule").css("display","block")
    $("#a").css("height","400px")
  });
});
