function GetClock(){
d = new Date();
nhour  = d.getHours();
nmin   = d.getMinutes();
nsec   = d.getSeconds();

 if(nhour ==  0) {ap = "cam";nhour = 12;} 
else if(nhour <= 11) {ap = "cam";} 
else if(nhour == 12) {ap = "cpm";} 
else if(nhour >= 13) {ap = "cpm";nhour -= 12;}

if(nmin <= 9) {nmin = "0" +nmin;}
if(nsec <= 9) {nsec = "0" +nsec;}


document.getElementById('clockbox').innerHTML="<img src='../Images/clock/c"+Math.floor(nhour / 10)+".gif'>"+
											  "</img><img src='../Images/clock/c"+Math.floor(nhour % 10)+".gif'><img src='../Images/clock/colon.gif'></img>"+
											  "</img><img src='../Images/clock/c"+Math.floor(nmin / 10)+".gif'></img>"+
											  "<img src='../Images/clock/c"+Math.floor(nmin % 10)+".gif'>"+
											  "<img src='../Images/clock/"+ap+".gif'>"+"";
setTimeout("GetClock()", 1000);
}

$(document).ready(function(){
	window.onload=GetClock;
});