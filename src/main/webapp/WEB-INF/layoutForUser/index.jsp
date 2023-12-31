<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Fashi Template">
    <meta name="keywords" content="Fashi, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fashi | Template</title>
	<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    
    
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
    <!-- Css Styles -->
    <link rel="stylesheet" href="/forUser/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/style.css" type="text/css">
    <link rel="stylesheet" href="/forUser/css/image.css" type="text/css">
    
    <script>
	$(function() {
		$("#slider-range").slider({
			range : true,
			min : 0,
			max : 200,
			values : [0, 0],
			slide : function(event, ui) {
				$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
				$("#amount_start").val(ui.values[0]);
				$("#amount_end").val(ui.values[1]);
			}
		});
		/* $("#amount").val(
				"$" + $("#slider-range").slider("values", 0) + " - $"
						+ $("#slider-range").slider("values", 1)); */
	});
	
	function readURL(input) {
		  if (input.files && input.files[0]) {

		    var reader = new FileReader();

		    reader.onload = function(e) {
		      $('.image-upload-wrap').hide();

		      $('.file-upload-image').attr('src', e.target.result);
		      $('.file-upload-content').show();

		      $('.image-title').html(input.files[0].name);
		    };

		    reader.readAsDataURL(input.files[0]);

		  } else {
		    removeUpload();
		  }
		}

		function removeUpload() {
		  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
		  $('.file-upload-content').hide();
		  $('.image-upload-wrap').show();
		}
		$('.image-upload-wrap').bind('dragover', function () {
		        $('.image-upload-wrap').addClass('image-dropping');
		    });
		    $('.image-upload-wrap').bind('dragleave', function () {
		        $('.image-upload-wrap').removeClass('image-dropping');
		});
	</script>
    
</head><!--/head-->

<body>
	<tiles:insertAttribute name="header"/>
	<tiles:insertAttribute name="adver"/>
	<tiles:insertAttribute name="body"/>
	<tiles:insertAttribute name="footer"/>

    <!-- Js Plugins -->
    <script src="/forUser/js/jquery-3.3.1.min.js"></script>
    <script src="/forUser/js/bootstrap.min.js"></script>
    <script src="/forUser/js/jquery-ui.min.js"></script>
    <script src="/forUser/js/jquery.countdown.min.js"></script>
    <script src="/forUser/js/jquery.nice-select.min.js"></script>
    <script src="/forUser/js/jquery.zoom.min.js"></script>
    <script src="/forUser/js/jquery.dd.min.js"></script>
    <script src="/forUser/js/jquery.slicknav.js"></script>
    <script src="/forUser/js/owl.carousel.min.js"></script>
    <script src="/forUser/js/main.js"></script>
</body>
</html>