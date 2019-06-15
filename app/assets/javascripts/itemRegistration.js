$(document).on('turbolinks:load',function() {
  var $children1 = $('.children1');
  var $children2 = $('.children2');
  var original1 = $children1.html();
  var original2 = $children2.html();

  $('#form1').change(function() {
    var val1 = $(this).val();
    $("#categoryAppend-1").css("display","block");
    $("#categoryAppend-size").css("height","240px");

    $children1.html(original1).find('option').each(function() {
      var val2 = $(this).data('val');
      if (val1 != val2) {
        $(this).not('.msg').remove();
      }
    });

    if ($(this).val() === '') {
      $children1.attr('disabled', 'disabled');
      $children2.attr('disabled', 'disabled');
      $("#categoryAppend-1").css("display","none");
      $("#categoryAppend-2").css("display","none");
      $("#categoryAppend-any").css("display","none");
      $("#categoryAppend-sizeform").css("display","none");
      $("#categoryAppend-size").css("height","180px");
    } else {
      $children1.removeAttr('disabled');
      $children2.removeAttr('disabled');
    }
  });


  $('#form2').change(function() {
    var val1 = $(this).val();
    $("#categoryAppend-2").css("display","block")
    $("#categoryAppend-size").css("height","290px")

    $children2.html(original2).find('option').each(function() {
      var val2 = $(this).data('val');
      if (val1 != val2) {
        $(this).not('.msg').remove();
      }
    });

    if ($(this).val() === '') {
      $children2.attr('disabled', 'disabled');
      $("#categoryAppend-2").css("display","none");
    } else {
      $children2.removeAttr('disabled');
    }
  });

  $('#form3').change(function() {
    var val1 = $(this).val();
    $("#categoryAppend-sizeform").css("display","block")
    $("#categoryAppend-any").css("display","block")
    $("#categoryAppend-size").css("height","500px")

    if ($(this).val() === '') {
      $children2.attr('disabled', 'disabled');
    } else {
      $children2.removeAttr('disabled');
    }
  });

  // 配送方法フォームの追加
  $("#fee").change(function(){
    $("#appendBox-rule").css("display","block")
    $("#a").css("height","400px")
  });
});
