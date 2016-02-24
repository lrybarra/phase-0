// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:

var element = document.getElementById("release-0");
element.classList.add("done");

// Release 1:

var element2 = document.getElementById("release-1");
element2.style.display = "none";


// Release 2:

// Change the inner text of the <h1> tag to "I completed release 2."

var element3 = document.getElementsByTagName("h1")[0];
element3.innerHTML = "I completed release 2." // = "I completed release 2."


// Release 3:

// Add the background color #955251 to the #release-3 div. #955251 was Pantone's (Links to an external site.) color of the year for 2015!

var element4 = document.getElementById("release-3");
element4.style.color = "#955251";	

// Release 4:

var element5 = document.getElementsByClassName('release-4');
for(var i = 0; i < element5.length; i++) {
    element5[i].style.fontSize = '2em';
}
//element5.style.fontSize = "2em";

// Release 5:

var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

