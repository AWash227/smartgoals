// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require activestorage
//= require turbolinks
//= require_tree .

/*
document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }
  */
  /*
  // Get all "add-child-task" buttons on page
  const $childTasks = Array.prototype.slice.call(document.querySelectorAll('.add-child-task'), 0);

  // Check if there are any childTaskButtons
  if ($childTasks.length > 0) {
      //Add click event on each childtaskbutton
      $childTasks.forEach( el => {
          el.addEventListener('click', () => {
              //toggle on that form
                
          })
      })
  }



}); */

/*
$(document).ready(function(){
  const $taskChecks = Array.prototype.slice.call(document.querySelectorAll('.task-submit'), 0);

  if ($taskChecks.length > 0){
    $taskChecks.forEach( el => {
      el.addEventListener('click', () => {
        $(this).parents('form:first').submit();
      })
    })
  }
})
*/
document.addEventListener("turbolinks:load", function(){
  
    $('.task-submit').change(function() {
        $(this).parents('form:first').submit();
    });

}); 
