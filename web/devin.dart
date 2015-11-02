import 'dart:html';
import 'dart:math' show Random;

int myNumber = new Random().nextInt(100);

void main(){
	
	InputElement input = querySelector("#number_guessed");
	ButtonElement button = querySelector("#submit");
	SpanElement span = querySelector("span");

	button.onClick.listen((event){
		span.text = "";
		try {
			var num = int.parse(input.value);
			
			if(num > myNumber)
				display_result("C'est moins !");

			else if(num < myNumber)
				display_result("C'est plus !");

			else
				display_result("Bien joué !");
		} catch(e){
			display_result("Veuillez saisir un ENTIER !");
		}
		
	});
}

void display_result(message){
	SpanElement span = querySelector("span");
	span.text = message;
	querySelector("div").children.add(span);
}