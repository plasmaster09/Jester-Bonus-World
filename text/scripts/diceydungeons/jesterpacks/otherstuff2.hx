Rules.hpchangeonlevelup = 6;
Rules.playerhpmodifier *= 1.25;
var packset = [];
var cfbset = [];
var dupeset = [];
var packs = [];
var tw3 = new motion.actuators.SimpleActuator(null,0.01,null);
tw3.repeat(0);
var func3 = new hscript.Parser().parseString('trace(Rules.substitutions);
  if (Rules.substitutions.exists("reloaded")){
  if (Rules.substitutions.exists("classic")){
	Rules.includerareenemies = false;
	for(x in ["Call for Backup Warrior", "Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor"]){cfbset.push("Equipment:" + x);}
	packset.push("normal");
	dupeset.push("InitialEquipment:Duplicate");
	dupeset.push("InitialEquipment:Duplicate");
  }

  if (Rules.substitutions.exists("parallel")){
	Rules.enemyhpadjust *= 1.1;
	for(x in ["poison","fire","ice","shock","thorns","fury","lock","blind","confuse","weaken","silence","shield","dodge","survive","reequipnext","reduce","dice_trigger_1","dice_trigger_2","dice_trigger_3","dice_trigger_4","dice_trigger_5","dice_trigger_6","counter_1","counter_2","counter_3","counter_4","counter_5","counter_6","curse","haunted","voodoo"]){
	  Rules.setalternate(x);
	}
	for(x in ["Call for Backup Warrior?", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("paralleluniverse");
	dupeset.push("InitialEquipment:Subdivide");
	dupeset.push("InitialEquipment:Subdivide");
  }

  if (Rules.substitutions.exists("elemental")){
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("elemental");
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
  }
  
  if (Rules.substitutions.exists("megaquest")){
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("megaquest");
	dupeset.push("InitialEquipment:Duplicake");
	dupeset.push("InitialEquipment:Duplicake");
  }
  
  if (Rules.substitutions.exists("alt timeline")){
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
    packset.push("bonusround");
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
  }
  
  if (Rules.substitutions.exists("clairvoyant")){
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("cv1");
    for(x in 0...2){dupeset.push(rand(["Boosterpack:Blender,Feather Arrow,Feather Arrow", "Boosterpack:Rainbow Crystal,Healing Crystal,Healing Crystal", "Boosterpack:Lojinx,Creep,Creep", "Boosterpack:Pollution,Pollution,Pollution", "Boosterpack:Sandstorm,Sandstorm,Sandstorm", "Boosterpack:Forecast,Forecast,Forecast", "Boosterpack:Acid Rain,Acid Rain,Acid Rain", "Boosterpack:Dense Fog,Dense Fog,Dense Fog", "Boosterpack:Hurricane,Hurricane,Hurricane", "Boosterpack:Thunder Storm,Thunder Storm,Thunder Storm", "Boosterpack:Heatwave,Heatwave,Heatwave", "Boosterpack:Snowstorm,Snowstorm,Snowstorm"]));}
  }
  
  if (Rules.substitutions.exists("terrible")){
	packset.push("terrible");
	for(x in ["Derplicate", "Snubdivide"]){dupeset.push("InitialEquipment:" + x);}
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
  }
  
  if (Rules.substitutions.exists("thief")){
	Rules.enemyhpadjust *= 1.4;
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
    packset.push("thief");
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
  }
  
  if (Rules.substitutions.exists("random")){
	packset.push("random1");
	dupeset.push("Dice");
	dupeset.push("Dice");
	Rules.substitute("Bop,Bop,Bop", rand(["Call for Backup Inventor?,Call for Backup Inventor?,Call for Backup Inventor?", "Call for Backup Robot,Call for Backup Robot,Call for Backup Robot"]));
	for(x in["Call for Backup Robot", "Call for Backup Inventor", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
  }
  
  if (Rules.substitutions.exists("spooky")){
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	Rules.enemyhpadjust *= 1.25;
	packset.push("spooky");
	dupeset.push("InitialEquipment:Spooplicate");
	dupeset.push("InitialEquipment:Spooplicate");
	Rules.substitute("Scathach", "Pumpkin Spice");
	Rules.substitute("Fireman", "Demon");
	Rules.substitute("Crystalina", "Mummy");
  }
  
  if (Rules.substitutions.exists("ncr")){
	for(x in ["Wolf Puppy", "Wisp", "Alchemist", "Cactus", "Haunted Jar", "Robobot", "Aoife", "Gardener", "Wicker Man"]){
	  if(rand([0, 1]) == 1){
	    cfbset.push("Equipment:" + x + "?");
	  }
	  else{
	    cfbset.push("Equipment:" + x + "[]");
	  }
	}
    packset.push("ncr");
	dupeset.push("InitialEquipment:Smoke Signal");
	dupeset.push("InitialEquipment:Smoke Signal");
  }
  
  if(packset != [] && packset != null){
	for(x in packset){
	  for(y in loadtext("diceydungeons/jesterpacks/packs_" + x)){
		packs.push(y);
	  }
    }
    if(self.level == 1){
	  leveluprewards(2, "erase");
	  leveluprewards(2, "", packs, 3);
	}
  }
  
  if(dupeset != [] && dupeset != null){
	if(self.level < 3){
	  leveluprewards(3, "erase");
	  leveluprewards(3, "", rand(dupeset), 2);
	}
	if(self.level < 6){
	  leveluprewards(6, "erase");
	  leveluprewards(6, "", rand(dupeset), 2);
	}
  }
  
  if(cfbset != [] && cfbset != null){
	if(self.level < 4){
	  leveluprewards(4, "erase");
	  leveluprewards(4, "", cfbset, 3);
	}
	if(self.level < 5){
	  leveluprewards(5, "erase");
	  leveluprewards(5, "", cfbset, 3);
	}
  }
}
if(Rules.substitutions == null){Rules.substitutions = new elements.Equipment("Equipment That Does Nothing").gamevar;}
Rules.substitutions.set("reloaded","yep");');

var interp3 = new hscript.Interp();
interp3.variables.set("leveluprewards", leveluprewards);
interp3.variables.set("self", self);
interp3.variables.set("loadtext", loadtext);
interp3.variables.set("Rules", Rules);
interp3.variables.set("dupeset", dupeset);
interp3.variables.set("cfbset", cfbset);
interp3.variables.set("packset", packset);
interp3.variables.set("packs", packs);
interp3.variables.set("trace", trace);
interp3.variables.set("rand", rand);
tw3.onComplete(interp3.execute, [func3]);
tw3.move();