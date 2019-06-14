$(document).on('turbolinks:load', function() {

	// 「カテゴリーから探す」にカーソル合わせた時の動き
	$(".left-btn--category").on('mouseenter', function(){
		$('.accordion').css('display', 'block');
	});

	var parentList = document.getElementsByClassName('parent__name');
	var childLists = document.getElementsByClassName('child');
	var childList = document.getElementsByClassName('child__name');
	var grandchildList = document.getElementsByClassName('grandchild');
	var parentLength = parentList.length;
	var childLength = childList.length;

	if (parentList[0]) {
  
    function openList(list) {
      return function (){
      list.style.display = 'block';
      }
    };

    function closeList(list) {
      return function (){
      list.style.display = 'none';
      }
    };
    
    for (i = 0; i < parentLength; i++ ) {
      parentList[i].addEventListener('mouseover', openList(childLists[i]), false);
      parentList[i].addEventListener('mouseleave', closeList(childLists[i]), false);
    };

    for (i = 0; i < childLength; i++ ) {
      childList[i].addEventListener('mouseover', openList(grandchildList[i]), false);
      childList[i].addEventListener('mouseleave', closeList(grandchildList[i]), false);
    };

    $('.left-btn--category').on('mouseleave', function(){
      $(this).children('.accordion').css('display', 'none');
    });

    $('.parent_box').on('mouseover', function() {
      $(this).css('background-color', '#ea352d');
      $(this).children('.parent-link').css('color', '#fff');
    }).on('mouseout', function(){
      $(this).css('background-color', '#fff');
      $(this).children('.parent-link').css('color', '#000');
    });

    $('.child_box').on('mouseover', function() {
      $(this).css('background-color', '#f0f0f0');
    }).on('mouseout', function(){
      $(this).css('background-color', '#fff');
    });

    $('.grandchild-link').on('mouseover', function() {
      $(this).css('background-color', '#f0f0f0');
    }).on('mouseout', function(){
      $(this).css('background-color', '#fff');
    });
    
    $('.grandparent-name').on('mouseover', function() {
      $(this).css('background-color', '#ea352d');
      $(this).children('.name').css('color', '#fff');
    }).on('mouseout', function(){
      $(this).css('background-color', '#fff');
      $(this).children('.name').css('color', '#000');
		});
	}
});