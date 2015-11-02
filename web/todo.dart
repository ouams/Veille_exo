import 'dart:html';


InputElement input = querySelector("input[name='todo']");
UListElement ul = querySelector('.elements');
List buttons = querySelectorAll('button');


void main(){

	input.onKeyPress.listen((KeyboardEvent e){
		buttons = querySelector('button');

		if(e.keyCode == KeyCode.ENTER)
			append_to_list(input.value);
	});
}

void append_to_list(message){
	ButtonElement button = new ButtonElement()..text = 'X';
	button.addEventListener('click',  (event) => delete_element(event.target), false);

	LIElement li = new LIElement() ..text = message + '  '
					..append(button);
	ul.children.add(li);
	input.value = "";
}

void delete_element(element){
	element.parent.remove();

}