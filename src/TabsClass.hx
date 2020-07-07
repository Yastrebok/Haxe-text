package;

import lime.tools.Icon;
import openfl.display.Sprite;
import openfl.events.Event;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;


import haxe.ui.Toolkit;
import haxe.CallStack;
import haxe.ui.components.Button;
import haxe.ui.components.TextArea;
import haxe.ui.components.TextField;
import haxe.ui.containers.Box;
import haxe.ui.containers.VBox;
import openfl.events.Event;
import openfl.display.Sprite;
import haxe.ui.components.TabBar;
import haxe.ui.core.Screen;
import haxe.ui.containers.TabView;




class TabsClass extends TabView {

	public function new() {
		super();
		
		
		var tabsView:TabView = new TabView();
				tabsView.tabIndex = 2;
				

		var but11:Button = ButtonFactory.createButton("Button 11", 5, 30, 150, 150);
		var but12:Button = ButtonFactory.createButton("Button 12", 155, 30, 150, 150);
		var but13:Button = ButtonFactory.createButton("Button 13", 305, 30, 150, 150);
		var but14:Button = ButtonFactory.createButton("Button 14", 455, 30, 150, 150);
				
		var but21:Button = ButtonFactory.createButton("Button 23", 5, 180, 150, 150);
		var but22:Button = ButtonFactory.createButton("Button 22", 155, 180, 150, 150);
		var but23:Button = ButtonFactory.createButton("Button 23", 305, 180, 150, 150);
		var but24:Button = ButtonFactory.createButton("Button 24", 455, 180, 150, 150);

		var but31:Button = ButtonFactory.createButton("Button 33", 5, 330, 150, 150);
		var but32:Button = ButtonFactory.createButton("Button 32", 155, 330, 150, 150);
		var but33:Button = ButtonFactory.createButton("Button 33", 305, 330, 150, 150);
		var but34:Button = ButtonFactory.createButton("Button 34", 455, 330, 150, 150);
			
		var but41:Button = ButtonFactory.createButton("Button 43", 5, 480, 150, 150);
		var but42:Button = ButtonFactory.createButton("Button 42", 155, 480, 150, 150);
		var but43:Button = ButtonFactory.createButton("Button 43", 305, 480, 150, 150);
		var but44:Button = ButtonFactory.createButton("Button 44", 455, 480, 150, 150);

			
		tabsView.addChild(but11);
		tabsView.addChild(but12);
		tabsView.addChild(but13);
		tabsView.addChild(but14);
		tabsView.addChild(but21);
		tabsView.addChild(but22);
		tabsView.addChild(but23);
		tabsView.addChild(but24);
		tabsView.addChild(but31);
		tabsView.addChild(but32);
		tabsView.addChild(but33);
		tabsView.addChild(but34);
		tabsView.addChild(but41);
		tabsView.addChild(but42);
		tabsView.addChild(but43);
		tabsView.addChild(but44);
						
		addChild(tabsView);
	}	
}


class ButtonFactory {
	private static var button:Button;
	private static var x:Int;
	private static var y:Int;
	private static var width:Int;
	private static var height:Int;
	private static var icon:Icon;
	
	public static function createButton(name:String,x:Int,y:Int,widht:Int,height:Int): Button {
		button = new Button();
		button.text = name;
		button.icon = "assets/img/fav_16.png";
		button.x = x;
		button.y = y;
		button.width = widht;
		button.height = height;
		button.onClick = function(e){
			Screen.instance.messageBox(button.name, "Message");
		}
		return button;
	}

}

