//To do: document this properly, complete this guide.
//
//When this script starts, an empty Dungeon is created with zero floors.
//
//  addfloor(template) 
//    Creates a new floor - this becomes the new "top floor" of the dungeon. returns a "floor" object.
//    Layout is based on the template, loaded from the data/text/levels/ folder.
//    Matches any level file that contains the string "template", so "tiny" will match "graph_tiny1", "graph_tiny2", etc
//
//  floor.additems(normallist, goodlist)
//    Items that can be found on this floor, as an array of strings.
//    (In general, the normal list is close to where the player starts, and the good list is near the staircase.)
//
//  floor.addenemies(normallist, hardlist)
//    Enemies that can be found on this floor, as an array of strings. If you set usestandardenemies(true), then
//    you shouldn't need to do this - the game will automatically distribute enemies throughout a normal dungeon layout.
//    (In general, the normal list is close to where the player starts, and the good list is near the staircase.)

usestandardenemies(false);

var items = [];
var gooditems = [];
var otherstuff = [];
var goodotherstuff = [];
var enemies = [];
var hardenemies = [];

var jester_dice_pool = ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Lollipop", "Nudge", "Spatula", "Bump", "Cauldron", "Bump", "Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Lollipop", "Nudge", "Spatula", "Bump", "Cauldron", "Bump"];
var jester_damage_pool = ["Gumball Machine", "Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Juggling Ball", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck", "Gumball Machine", "Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Juggling Ball", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"];

var dontreplaceinstore = jester_dice_pool.copy();

jester_dice_pool = shuffle(jester_dice_pool);
jester_damage_pool = shuffle(jester_damage_pool);

//Floor 1:
enemies = [];
hardenemies = [level1enemies.pop(), level1enemies.pop()];
addfloor("tiny")
  .additems(["Juggling Ball,Gumball Machine"], [])
  .addenemies(enemies, hardenemies)
  .generate();
  
//Floor 2:
items = [];
gooditems = [jester_dice_pool.pop() + "," + jester_dice_pool.pop()];
enemies = [];
hardenemies = [level1enemies.pop(), level2enemies.pop(), level2enemies.pop()];
otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop(["Delete", "Backfire", "Delete"], [2, 3, 2]),
  upgrade()
];

var floor2 = addfloor("normal")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 3:
items = [jester_dice_pool.pop() + "," + jester_dice_pool.pop()];
gooditems = [];
enemies = [level2enemies.pop()];
hardenemies = [level2enemies.pop(), level3enemies.pop()];
otherstuff = [
  health(), 
  health()
];
goodotherstuff = [
  shop([jester_dice_pool.pop(), jester_damage_pool.pop(), "Delete"])
];

var floor3 = addfloor("normal")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 4
items = [];
gooditems = ["Bop,Bop,Bop"];
enemies = [level3enemies.pop()];
hardenemies = [level3enemies.pop(), level4enemies.pop()];

jester_dice_pool.push("Shadow Dice");
jester_dice_pool.push("Mirror Shard");
jester_dice_pool.push("Blood Let");
jester_dice_pool.push("Illuminate");
jester_dice_pool.push("Hall of Mirrors");
jester_dice_pool.push("Shadow Dice");
jester_dice_pool.push("Mirror Shard");
jester_dice_pool.push("Blood Let");
jester_dice_pool.push("Illuminate");
jester_dice_pool.push("Hall of Mirrors");
jester_dice_pool = shuffle(jester_dice_pool);

otherstuff = [
  health(), 
  upgrade()
];
goodotherstuff = [
  shop([jester_dice_pool.pop(), jester_damage_pool.pop(), jester_dice_pool.pop()]),
  copyshop()
];

var floor4 = addfloor("big")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();
  
//Floor 5
items = [];
gooditems = [];
enemies = [level4enemies.pop(), level4enemies.pop()];
hardenemies = [level5enemies.pop()];
otherstuff = [health(), health()];
goodotherstuff = [rand([upgrade(), copyshop()])];

var floor5 = addfloor("normal")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 6
items = [jester_dice_pool.pop() + "," + jester_dice_pool.pop()];
gooditems = [jester_damage_pool.pop() + "," + jester_damage_pool.pop()];
enemies = [level4enemies.pop()];
hardenemies = [level5enemies.pop(), "Super" + level5enemies.pop()];
otherstuff = [health(), health()];
goodotherstuff = [shop(["Delete", "Backfire", "Delete"])];

var floor6 = addfloor("big")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

//Floor 7
items = [jester_dice_pool.pop() + "," + jester_damage_pool.pop()];
gooditems = ["Bop,Bop,Bop"];
enemies = [level5enemies.pop()];
hardenemies = ["Super" + level5enemies.pop(), "Super" + level5enemies.pop()];
otherstuff = [health(), health()];
goodotherstuff = [rand([upgrade(), copyshop()]), rand([upgrade(), copyshop()])];

var floor7 = addfloor("big")
  .additems(items, gooditems)
  .addenemies(enemies, hardenemies)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

// Floor 8:			
items = [];
gooditems = [];
otherstuff = [];
goodotherstuff = [];

usestandardenemies(false);
var finalboss:String = level6enemies.pop();
if (finalboss == "Drake"){
  items.push("Wooden Stake,Wooden Stake");
}

addfloor("boss")
  .addenemies([], [finalboss])
  .setlocation('BOSS')
  .additems(items, gooditems)
  .addotherstuff(otherstuff, goodotherstuff)
  .generate();

var floors = [floor2, floor3, floor4, floor5, floor6, floor7];

/*for(floor in floors) {
	trace("inspecting a floor...");
	for(node in floor.nodes) { trace(node.item); if(node.item != " " && node.item.indexOf(",") == -1 && finals.indexOf(node.item) == -1) { node.item = "IC Chip"; } }
}*/

var chiplist = loadtext("diceydungeons/doublechips");
chiplist = shuffle(chiplist);
//the script which replaces items with chips should ignore items which already are chips, just in case
dontreplaceinstore = dontreplaceinstore.concat(chiplist);

//uncomment this if i change my mind about finales not being replaced when chip pack is active. then get rid of the finals kludge and have a dontreplaceonfloor thing
//finals = [];

var itemreplacestomake = [];
var storereplacestomake = [];
var thingy = [];
for(floor in floors) {
	for(node in floor.nodes) {
		if(node.item.toString().length > 0) {
			thingy = [];
			for(x in node.item.split(",")){
				thingy.push(chiplist.pop());
			}
			thingy = thingy.join(",");
		itemreplacestomake = itemreplacestomake.concat([node.item, thingy]);
		}
	}
	if(floor.shops.length > 0) { for(shop in floor.shops) { if(shop.contents.length > 0) { for(stock in shop.contents) { if(stock.type == "equipment" && dontreplaceinstore.indexOf(stock.equipment.name) == -1) { storereplacestomake = storereplacestomake.concat([stock.equipment.name, chiplist.pop()]); /*trace("following shop: " + storereplacestomake);*/ } } } } } // why the fuck didn't i indent this
}

//consequently, if the same item appears twice then it gets replaced with the same chip twice. that's fine for jester since they like snapping and discarding - and is why i let duplicates more freely appear for them in the first place

var actfloorthing = new motion.actuators.SimpleActuator(null,0,null); //larrytech!
actfloorthing.repeat(-1);
var funcfloorthing = new hscript.Parser().parseString("
	if(getplayername() != \"Jester\" || floors == null || floors.length == 0 || floors[0] == null) { trace(\"exiting jester's actuator\"); actfloorthing._repeat = 0; }
	else {
		if(Rules.substitutions.exists(\"replacewithchips\")) {
			trace(\"replacing items w/ chips\");
			var i = 2;
			for(floor in floors) {
				trace(\"inspecting a floor...\");
				if(i != 9) { /*don't replace floor 3 dice manip. makes it easier on player since the chips have such different requirements*/ for(node in floor.nodes) { if(itemreplacestomake.indexOf(node.item) != -1) { node.item = itemreplacestomake[itemreplacestomake.indexOf(node.item) + 1]; } } }
				if(floor.shops.length > 0) { for(shop in floor.shops) { if(shop.contents.length > 0) { for(stock in shop.contents) { if(stock.type == \"equipment\" && storereplacestomake.indexOf(stock.equipment.name) != -1) { /*trace(\"old: \" + stock.equipment.name);*/ stock.equipment = new elements.Equipment(storereplacestomake[storereplacestomake.indexOf(stock.equipment.name) + 1]); stock.equipment.resize(2); } } } } }
				i++;
			}
			trace(\"finished chip replacement\");
			actfloorthing._repeat = 0; /*stop actuator when it is done*/
		}
		if(Rules.substitutions.exists(\"stopchipactuator\")) {
			actfloorthing._repeat = 0; trace(\"did not take chips pack! stopping jester actuator\");
		}
	}
");

if(Rules.substitutions == null) Rules.substitutions = new elements.Equipment("Equipment That Does Nothing").gamevar;

var interp = new hscript.Interp();
interp.variables.set("getplayername", getplayername);
interp.variables.set("floors", floors);
interp.variables.set("Rules", Rules);
interp.variables.set("actfloorthing", actfloorthing);
interp.variables.set("trace", trace);
interp.variables.set("storereplacestomake", storereplacestomake);
interp.variables.set("itemreplacestomake", itemreplacestomake);
actfloorthing.onRepeat(interp.execute, [funcfloorthing]);
actfloorthing.move();