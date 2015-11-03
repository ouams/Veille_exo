import 'dart:html';
import 'dart:math' show Random;

int myNumber = new Random().nextInt(100);

void main(){
		
	//Get input button and span from the DOM

	button.onClick.listen((event){
		span.text = "";
		try {
			var num = int.parse(input.value);
			
			//Check the value of num and display the correct message
		} catch(e){
			display_result("Veuillez saisir un ENTIER !");
		}
		
	});
}

void display_result(message){
	//Create a span with the message and add it to the existing div 
	
}
