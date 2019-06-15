$(document).on('turbolinks:load',function(){
  $('#form1').on('change',function(e){
    e.preventDefault();
    $("#categoryAppend-1").css("display","block");
    $("#categoryAppend-size").css("height","240px");
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
});
