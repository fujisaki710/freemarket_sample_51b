$(document).on('turbolinks:load',function(){
  // カテゴリー セレクトボックス部分の実装
  $('#form1').on('change',function(e){
    e.preventDefault();
    $("#categoryAppend-1").css("display","block");
    $("#categoryAppend-size").css("height","240px");
    $("#categoryAppend-2").css("display","none");
    $("#categoryAppend-sizeform").css("display","none")
    $("#categoryAppend-any").css("display","none")
    $('#form2').html('');
    $('#form3').html('');
    var val = $('#form1').val();
    
    if (val == 1) {
      // レディース
      var select =` <option>---</option>
                    <option value="4">トップス</option>
                    <option value="5">パンツ</option>`
      $('#form2').append(select)
    } else if (val == 2) {
      // メンズ
      var select =` <option>---</option>
                    <option value="6">バック</option>
                    <option value="7">スーツ</option>`
      $('#form2').append(select)
    } else if (val == 3) {
      // インテリア・住まい・小物
      var select =` <option>---</option>
                    <option value="8">キッチン/食器</option>
                    <option value="9">ベッド/マットレス</option>`
      $('#form2').append(select)
    } else {
      $("#categoryAppend-1").css("display","none");
      $("#categoryAppend-2").css("display","none");
      $("#categoryAppend-sizeform").css("display","none")
      $("#categoryAppend-any").css("display","none")
      $("#categoryAppend-size").css("height","180px");
    }

    $('#form2').on('change',function(){
      $('#form3').html('');
      $("#categoryAppend-2").css("display","block")
      $("#categoryAppend-size").css("height","290px")
      $("#categoryAppend-sizeform").css("display","none")
      $("#categoryAppend-any").css("display","none")
      var val = $('#form2').val();
      // レディース/トップス
      if (val == 4) {
        var select =`<option>---</option>
                <option value="10">ポロシャツ</option>
                <option value="11">キャミソール</option>`
        $('#form3').append(select)
      } else if (val == 5) {
        // レディース/パンツ
        var select =` <option>---</option>
                      <option value="12">デニム/ジーンズ</option>
                      <option value="13">ショートパンツ</option>`
        $('#form3').append(select)
      } else if (val == 6) {
        // メンズ/バック
        var select =` <option>---</option>
                      <option value="14">ショルダーバッグ</option>
                      <option value="15">トートバック</option>`
        $('#form3').append(select)
      } else if (val == 7) {
        // メンズ/スーツ
        var select =` <option>---</option>
                      <option value="16">スーツジャケット</option>
                      <option value="17">スラックス</option>`
        $('#form3').append(select)
      } else if (val == 8) {
        // インテリア・住まい・小物/（キッチン/食器）
        var select =` <option>---</option>
                      <option value="18">食器</option>
                      <option value="19">調理器具</option>`
        $('#form3').append(select)
      } else if (val == 9) {
        // インテリア・住まい・小物/（ベッド/マットレス）
        var select =` <option>---</option>
                      <option value="20">シングルベッド</option>
                      <option value="21">マットレス</option>`
        $('#form3').append(select)
      } else {
        $("#categoryAppend-2").css("display","none");
        $("#categoryAppend-sizeform").css("display","none")
        $("#categoryAppend-any").css("display","none")  
        $("#categoryAppend-size").css("height","240px");
      }
    });
    $('#form3').on('change',function(){
      $("#categoryAppend-sizeform").css("display","block")
      $("#categoryAppend-any").css("display","block")
      $("#categoryAppend-size").css("height","500px")
    })
  });

  $('#delivery-fee').on('change',function(){
    $('#appendBox-rule').css("display","block");
    $('.item-contents__shipping').css("height","400px")
  })

  // 価格部分（販売手数料・販売利益）の実装
  $('#price').on('keyup',function(e){
    e.preventDefault();
    $(this).html('');
    var price = $(this).val();
    // console.log(price);

    var fee = (price * 1.1) - price;
    var profit = price - fee;
    console.log(profit)
    if (price >= 300) {
      $('#fee-').html('');
      $('#fee-js').html('');
      $('#profit-js').html('');

      var response_fee = `<p>¥ ${(Math.round(fee))}</p>`
      var response_profit = `<p>¥${(Math.round(profit))}</p>`
      $('#fee-js').append(response_fee);
      $('#profit-js').append(response_profit);
      $('.right').css("font-size","34px")
    } else {
      $('#fee-js').html('');
      $('#profit-js').html('');
      $('#fee-js').append('<p>-</p>');
      $('#profit-js').append('<p>-</p>');
    }
  })
});
function previewFiles() {

  var preview = document.querySelector('#preview');
  var files   = document.querySelector('input[type=file]').files;

  function readAndPreview(file) {
    if ( /\.(jpe?g|png|gif)$/i.test(file.name) ) {
      var reader = new FileReader();
      reader.addEventListener("load", function () {
        var image = new Image();
        image.title = file.name;
        image.src = this.result;
        preview.appendChild( image );
        $('#itemtext').html("");
        $('#itemtextP1').css("display","none");
        $('#itemtextP2').css("display","none");
        $('#preview').css("height","100px")
        $('#preview').css("width","560px")
      }, false);
      reader.readAsDataURL(file);
    }
  }
  if (files) {
    [].forEach.call(files, readAndPreview);
  }
}
