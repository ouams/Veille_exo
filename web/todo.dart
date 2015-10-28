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

	buttons.addEventListener('click',
    	(event) => print('click!'), false);;

}

void append_to_list(message){
	ButtonElement button = new ButtonElement()..text = 'X';
	LIElement li = new LIElement()..text = message + '  '
								  ..append(new ButtonElement()..text = 'X');
	ul.children.add(li);
	input.value = "";
}