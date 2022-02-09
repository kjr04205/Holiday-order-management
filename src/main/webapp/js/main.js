function filter(){
    var value, name, item, i;

    value = document.getElementById("value").value.toUpperCase();
    item = document.getElementsByClassName("item");

    for(i=0;i<item.length;i++){
      name = item[i].getElementsByClassName("name");
      
      if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
        item[i].style.display = "table-row";
      }else{
    	  item[i].style.display = "none";  
      }
   }
}

function onSelectBefore(){
	$(document).ready(function(){
		$('.before_list').addClass('texton');
		$('.after_list').removeClass('texton');
		$('.before').removeClass('none');
		$('.before').addClass('show');
		$('.after').removeClass('show');
		$('.after').addClass('none');
	});
	alert("성공");
}

function onSelectAfter(){
	$(document).ready(function(){
		$('.after_list').addClass('texton');
		$('.before_list').removeClass('texton');
		$('.after').removeClass('none');
		$('.after').addClass('show');
		$('.before').removeClass('show');
		$('.before').addClass('none');
	});

	alert("성공");
}