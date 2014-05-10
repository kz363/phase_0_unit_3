$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'});
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
var bodyElement = $('body');
var h1 = $('h1');
var mascot = $('.mascot');

//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
h1.css({'color' : 'green',
      'border' : '1px solid black',
      'visibility' : 'visible'});

$('div h1').html('Cicadas');

//RELEASE 3: Event Listener
  // Add the code for the event listener here 

$('img').on('mouseover', function(e){
  e.preventDefault();
  $(this).attr('src', 'http://cdn.theatlantic.com/static/mt/assets/business/800%20cicada.jpg');
});

$('img').on('mouseleave', function(e){
  e.preventDefault();
  $(this).attr('src', 'dbc_logo.jpg');
});

//RELEASE 4 : Experiment on your own

$('img').click(function() {
  $(this).animate({
    opacity: 0.4,
    "marginLeft": "+=500px" }, "slow");
});

});  // end of the document.ready function: do not remove or write DOM manipulation below this.
