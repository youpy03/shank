// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require jquery.turbolinks

//= require turbolinks
//= require_tree .
//= require masonry/jquery.masonry

$(function(){

	var intervalId;
	setTimer();

	function setTimer(){
		intervalId = setInterval(autoClick, 3000);
	}

	function autoClick(){
		$('.slide').children('a.next').click();
	}




function changeImage($click){
		
	var $current = $click.siblings('.container').children('.current');
	var $new;
	var findSelector = '';
	
	if($click.hasClass('next')){
		$new = $current.next();
		findSelector = ':first-child';
	} else {
		$new = $current.prev();
		findSelector = ':last-child';
	}

	if($new.length == 0){
		$new = $current.siblings(findSelector);
	}
	$current.removeClass('current');
	$new.addClass('current');
	setTimer();
 }


	$('.slide').on('click', '> a',function(event){
		event.preventDefault();
		clearInterval(intervalId);
		changeImage($(this));
	});
});



