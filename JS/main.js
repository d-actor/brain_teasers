// ---palindrome checker--- \\

$('.palsubmit').click(function (){
  var palinput = document.getElementById('palinput').value.toLowerCase().replace(/[\s.\,\']/g, '')
  var reverse = document.getElementById('palinput').value.toLowerCase().split("").reverse().join("").replace(/[\s.\,\']/g, '')
  if(palinput === reverse){
    $('.palanswer').html("You done got yourself a palidrome there bud")
    palinput = 0
    reverse = 0
  } else{
    $('.palanswer').html("Nah my dude.")
    palinput = 0
    reverse = 0
  }
});

// ---all combinations of a string---\\
// parse array and return all possible outcomes to html

var parsedArray = []

$('.combosubmit').click(function (){
  var userInput = document.getElementById('comboinput').value.toLowerCase().replace(/[\s.\,\']/g, '').split("")
  for(var i = 0, j = 1 ; i < userInput.length; i++, j++){
    parsedArray[i] = userInput[i]
    if(i > 0){
      parsedArray[i] = (userInput[i] + userInput[j])
  }
}
  console.log(parsedArray)
});


// d[0] o[1] g[2]
// d[0] do[0,1] dog[0,1,2] o[1] og[1,2] g[2]

// ---alphabetical order--- \\

$('.alphSubmit').click( function(){
  var alphInput = document.getElementById('alphInput').value.toLowerCase().replace(/[\s.\,\']/g, '').split("")
  var a = 1
  var b = 2
  var c = 3
  var d = 4
  var e = 5
  var f = 6
  var g = 7
  var h = 8
  var i = 9
  var j = 10
  var k = 11
  var l = 12
  var m = 13
  var n = 14
  var o = 15
  var p = 16
  var q = 17
  var r = 18
  var s = 19
  var t = 20
  var u = 21
  var v = 22
  var w = 23
  var x = 24
  var y = 25
  var z = 26
  var alphOrder = [alphInput.sort().join("")]
  $('.alphAnswer').html(alphOrder)
});

// ---capitalizer--- \\

var capitalizedString = []

$('.capSubmit').click( function(){
  var capString1 = document.getElementById('capInput').value.split(" ")
  for( i = 0 ; i < capString1.length ; i++){
    var capitalize = capString1[i]
    capitalize = capitalize.toLowerCase().replace(/\b[a-z]/g, function(letter){
      return letter.toUpperCase();
    })
    capitalizedString.push(capitalize)
  }
  $('.capAnswer').html(capitalizedString.join(" "))
});

// ---longest word--- \\

var longest = ""

$('.longSubmit').click( function(){
  var longArray = document.getElementById('longInput').value.split(" ")
  for ( i = 0; i < longArray.length ; i++ ){
    if (longArray[i].length > longest.length){
      longest = longArray[i]
    }
  }
  $('.longAnswer').html("The longest word is: " + longest)
});

// ---vowel counter--- \\
var vowels = []

$('.vowelSubmit').click( function(){
  var varArray = document.getElementById('vowelInput').value.toLowerCase().split("")
  for ( i = 0 ; i < varArray.length ; i++){
      var letter = varArray[i];
      if(letter === "a"){
        vowels.push(letter)
      } else if (letter === "e"){
        vowels.push(letter)
      } else if (letter === "i"){
        vowels.push(letter)
      } else if (letter === "o"){
        vowels.push(letter)
      } else if (letter === "u"){
        vowels.push(letter)
      }
  }
  $('.vowelAnswer').html("There are " + vowels.length + " vowels in that word/phrase.")
});

// ---prime checker--- \\
// Write a script that accepts a number as a parameter and checks if the number is prime or not.
//**note : A prime number (or a prime) is a natural number greater than 1
//**that has no positive divisors other than 1 and itself.

// logic
// return answer to html

$('.primeSubmit').click( function(){
  var number = document.getElementById('primeInput').value
    for ( x = 2 ; x < number - 1 ; x++){
      if( number % x === 0 ){
        $('.primeAnswer').html("Not a prime.")
      } else {
        $('.primeAnswer').html("Truly prime!")
      }
    }
  }
});
