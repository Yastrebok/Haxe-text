package ;

import haxe.ui.Toolkit;
import haxe.CallStack;
import haxe.ui.components.Button;
import haxe.ui.components.TextArea;
import openfl.display.Sprite;
import haxe.ui.components.TabBar;
import flash.events.MouseEvent;
import haxe.ui.containers.TabView;


class Main extends Sprite {
	public function new() {
		super();
		try {
			Toolkit.init();
			var sometext:String = "Embedded text 
				Панель показывает разный статический текст при выборе вкладки. Если содержимое панели превышает размер панели – появляется полоса прокрутки (вертикальная и горизонтальная). Оценка задания: 3 очка.
				Дополнительные задания(выбрать одно из трех):
				1.	Содержимое панелей загружается из текстовых файлов. (+3 очка)
				2.	Содержимое панелей загружается из XML файла. (+5 очков). Количество  панелей  и содержимое панелей загружается из XML файла. (+3 очка)
				3.	Содержимое панелей выглядит в виде грида 4х4. Каждая ячейка грида это кнопка с названием. По нажатию на кнопку показывается Message Box с названием кнопки(+8 очков). Ячейка грида выглядит в виде кнопки с картинкой.(+3 очка). По нажатию на ячейку грида открывается такого же вида скрин (заменяющий содержимое выбранной вкладки) который использует свои значения из XML файла (+8 очков)
				Дополнительные задания выполняются по возможности и увеличивают ";
			
			var content:String = sys.io.File.getContent('assets/text1.txt');
			
			var tabs:TabBar = new TabBar();
				tabs.tabCount = 3;
			
			var tabsView:TabView = new TabsClass();
				tabsView.hidden = true;
				
			var button:Button = new Button();
				button.text = "Tab 1";
			var button2:Button = new Button();
				button2.text = "Tab 2";
			var button3:Button = new Button();
				button3.text = "Buttons";
				
			var textArea:TextArea = TextAreaFactory.createTextArea(content);
				textArea.hidden = false;
			var textArea2:TextArea = TextAreaFactory.createTextArea(sometext);	
				
			tabs.addComponent(button);	
			tabs.addComponent(button2);	
			tabs.addComponent(button3);	
			
			tabs.addEventListener(MouseEvent.CLICK, function(e){
				if (tabs.selectedIndex == 0) {
						textArea.hidden = false;
						textArea2.hidden = true;
						tabsView.hidden = true;
					 }
				if (tabs.selectedIndex == 1) {
						textArea.hidden = true;
						textArea2.hidden = false;
						tabsView.hidden = true;
					 }	 
				if (tabs.selectedIndex == 2) {
						textArea.hidden = true;
						textArea2.hidden = true;
						tabsView.hidden = false;
					 }	
			});
			
			addChild(tabsView);				
			addChild(tabs);	
            addChild(textArea);	
			addChild(textArea2);	
			
		} catch (e:Any) {
			trace('$e');
			var items = CallStack.exceptionStack();
			for (item in items) {
				trace(item);
			}
		}
	}
}

class TextAreaFactory	{
	public static var textArea:TextArea;
		
		public static function createTextArea(text:String):TextArea {
			textArea  = new TextArea();
			textArea.width = 600;
			textArea.height = 600;
			textArea.x = 5;
			textArea.y = 30;
			textArea.text = text;
			textArea.hidden = true;
			
			return textArea;
		}
}	


