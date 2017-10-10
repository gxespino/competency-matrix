//= require rails-ujs
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

var completedComps    = document.getElementsByClassName('completed');
var workingComps      = document.getElementsByClassName('working');
var ProgressBarLoader = new ProgressBarLoader();

document.addEventListener("DOMContentLoaded", function(){
  ProgressBarLoader.load(completedComps);
  ProgressBarLoader.load(workingComps);
})
