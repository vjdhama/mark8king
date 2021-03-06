# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery_ujs
#= require bootstrap-sprockets
#= require turbolinks
#= require skrollr
#= require nprogress
#= require nprogress-turbolinks
#= require underscore
#= require gmaps/google
#= require_tree .

NProgress.configure
  showSpinner: false
  ease: "ease"
  speed: 500

$ ->
	flashCallback = ->
    	$(".flash-message").fadeOut()
  	$(".flash-message").bind 'click', (ev) =>
    	$(".flash-message").fadeOut()
  	setTimeout flashCallback, 3000