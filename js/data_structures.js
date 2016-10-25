var colors = ["blue", "pink", "yellow", "green"];
var names = ["Ed", "Jose", "Mark", "Chloe"];

colors.push("purple");
names.push("Molly"); 

var horses = {} 

if (colors.length == names.length) {

	for (i = 0; i < colors.length; i++) {
		hname = names[i];
		color = colors[i];
		horses.hname = color;
		console.log(horses.hname);
	}
}

// Cars

function Cars(make, model, mileage) {
	console.log("Our new car:", this);
	
	this.make = make;
	this.model = model;
	this.mileage = mileage;

	this.drive = function() { console.log("I'm driving!"); };
	
	console.log("CAR INITIALIZATION COMPLETE \n" + this.make + " " + this.model + " " + this.mileage);
}

var newCar1 = new Cars("Toyota", "Prius", "2500"); 
console.log(newCar1); 

var newCar2 = new Cars("Toyota", "Camery", "45500"); 
console.log(newCar2); 

var newCar3 = new Cars("Toyota", "Corolla", "500"); 
console.log(newCar3); 
newCar3.drive(); 
