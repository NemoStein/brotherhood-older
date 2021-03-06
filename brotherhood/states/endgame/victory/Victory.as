package brotherhood.states.endgame.victory 
{
	import brotherhood.states.startmenu.StartMenu;
	import brotherhood.states.State;
	import brotherhood.system.SystemService;
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import nemostein.framework.dragonfly.AnchorAlign;
	import nemostein.framework.dragonfly.Core;
	import nemostein.io.Keys;
	
	public class Victory extends State 
	{
		override protected function initialize():void 
		{
			super.initialize();
			
			draw(Bitmap(new Assets.ImageStatesEndGameVictory).bitmapData);
			//draw( new BitmapData(1280, 720, false, 0xFFCCCCCC));
			//
			//var screenTitle:Core = new Core( new BitmapData(900,100,false,0xFF000080));
			//var leftStats:Core = new Core(new BitmapData(300,300,false,0xFF000080));
			//var rightStats:Core = new Core(new BitmapData(300,300,false,0xFF000080));
			//var returnButton:Core = new Core(new BitmapData(100,100,false,0xFF000080));
			//
			//screenTitle.alignAnchor(AnchorAlign.TOP, AnchorAlign.CENTER);
			//returnButton.alignAnchor(AnchorAlign.TOP, AnchorAlign.CENTER);
			//
			//screenTitle.x = 1280 / 2;
			//screenTitle.y = 50;
			//
			//leftStats.x = 226;
			//leftStats.y = 200;
			//
			//rightStats.x = 752;
			//rightStats.y = 200;
			//
			//returnButton.x = 1280 / 2;
			//returnButton.y = 600;
			//
			//add(screenTitle);
			//add(leftStats);
			//add(rightStats);
			//add(returnButton);
			//
			//setCurrentDescendentsAsRelative();
		}
		
		override protected function stateUpdate():void 
		{
			if (input.justPressed(Keys.ANY))
			{
				SystemService.changeState(StartMenu);
			}
			
			super.stateUpdate();
		}
	}
}