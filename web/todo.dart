import 'dart:html';


InputElement input = querySelector("input[name='todo']");
UListElement ul = //ToDO
List buttons = //ToDO


void main(){

	input.onKeyPress.listen((KeyboardEvent e){
		buttons = querySelector('button');

		if(e.keyCode == KeyCode.ENTER)
			append_to_list(input.value);
	});
}

void append_to_list(message){
	ButtonElement button = new ButtonElement()..text = 'X';
	//Event 'click'
	button.addEventListener();

	
	LIElement li = new LIElement() //Append message with a new button

	ul.children.add(li);
	input.value = "";
}

void delete_element(element){
	//Delete element parent
}
