Rules.hpchangeonlevelup = 6;
Rules.playerhpmodifier *= 1.25;
if (self.level == 1){
  var packset = [];
  var diceset = [];
  var damageset = [];
  var specialset = [];
  var ballset = [];
  var dupeset = [];
  var cfbset = [];
  var choice = "uwu";
  if(levelupselections != null && Deck.getcards("all").length == 0){
	var starteq = levelupselections[0].split(":")[1];
	starteq = starteq.split(",");
	self.setvar("starteq", starteq);
  }
  
  if (levelupselections[0].split("Classic Deck").length > 1){
	Rules.substitutions.set("classic","yep");
	Rules.includerareenemies = false;
	for(x in ["Call for Backup Warrior", "Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor"]){cfbset.push("Equipment:" + x);}
	packset.push("normal");
	dupeset.push("InitialEquipment:Duplicate");
	dupeset.push("InitialEquipment:Duplicate");
	ballset.push("Juggling Ball");
	ballset.push("Juggling Ball");
	for(x in ["Nudge", "Spatula", "Bump", "Cauldron", "Bump"]){diceset.push(x);}
	for(x in ["Juggling Ball", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){damageset.push(x);}
	for(x in ["Illuminate", "Hall of Mirrors"]){specialset.push(x);}
  }

  if (levelupselections[0].split("Parallel Deck").length > 1){
	Rules.substitutions.set("parallel","yep");
	Rules.enemyhpadjust *= 1.1;
	for(x in ["poison","fire","ice","shock","thorns","fury","lock","blind","confuse","weaken","silence","shield","dodge","survive","reequipnext","reduce","dice_trigger_1","dice_trigger_2","dice_trigger_3","dice_trigger_4","dice_trigger_5","dice_trigger_6","counter_1","counter_2","counter_3","counter_4","counter_5","counter_6","curse","haunted","voodoo","vanish","ncr_vanish"]){
	  Rules.setalternate(x);
	}
	for(x in ["Call for Backup Warrior?", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("paralleluniverse");
	dupeset.push("InitialEquipment:Subdivide");
	dupeset.push("InitialEquipment:Subdivide");
	ballset.push("Gumball Machine");
	ballset.push("Gumball Machine");
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Lollipop"]){diceset.push(x);}
	for(x in ["Gumball Machine", "Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart"]){damageset.push(x);}
	for(x in ["Shadow Dice","Mirror Shard","Blood Let"]){specialset.push(x);}
  }

  if (levelupselections[0].split("Elemental Deck").length > 1){
	Rules.substitutions.set("elemental","yep");
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("elemental");
	for(x in ["Juggling Ball", "Gumball Machine"]){ballset.push(x);}
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
	for(x in ["Whip", "Lament", "Hammer", "Snowball", "Fireball", "Electric Shock", "Spark", "Snowflake", "Buzzer", "Ice Shatter", "High Voltage", "Flame Blast", "Freeze Spell", "Flame Spell", "Thunder Spell"]){damageset.push(x);}
	for(x in ["Shadow Dice","Mirror Shard","Illuminate","Hall of Mirrors"]){specialset.push(x);}
  }
  
  if (levelupselections[0].split("MegaQuest Deck").length > 1){
	Rules.substitutions.set("megaquest","yep");
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	packset.push("megaquest");
	dupeset.push("InitialEquipment:Duplicake");
	dupeset.push("InitialEquipment:Duplicake");
	ballset.push("Juggling Ball");
	ballset.push("Juggling Ball");
	for(x in ["Judgenudge", "Stunula", "Bumpspade", "Bumpspade", "Stew", "Grater", "Rigged Roll", "Hot Couple"]){
	  diceset.push(x);
	}
	for(x in ["Pew", "Shovel", "Lament", "Whip", "Hammer", "Lightsaber", "Blood Suck", "Shield of Cthulhu"]){
	  damageset.push(x);
	}
	for(x in ["Magician's Secret", "Shattered Mirror"]){
	  specialset.push(x);
	}
  }
  
  if (levelupselections[0].split("Alt Timeline Deck").length > 1){
    Rules.substitutions.set("alt timeline","yep");
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
    packset.push("bonusround");
	ballset.push("Spinning Ball");
	ballset.push("Spinning Ball");
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
	for(x in ["Chute", "Spatula", "Ladder", "Shiny Cauldron", "Rusty Cauldron", "Ladder"]){
	  diceset.push(x);
	}
	for(x in ["Spinning Ball", "Bang", "Trench Shovel", "Mourn", "Whip Crack", "H4mm3r", "Blood Suck"]){
	  damageset.push(x);
	}
	for(x in ["Illuminate", "Hall of Mirrors"]){
	  specialset.push(x);
	}
  }
  
  if (levelupselections[0].split("ClairVoyant Deck").length > 1){
	Rules.substitutions.set("clairvoyant","yep");
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
    ballset.push("Rewind Tape");
	ballset.push("Rewind Tape");
	packset.push("cv1");
    for(x in 0...2){dupeset.push(rand(["Boosterpack:Blender,Feather Arrow,Feather Arrow", "Boosterpack:Rainbow Crystal,Healing Crystal,Healing Crystal", "Boosterpack:Lojinx,Creep,Creep", "Boosterpack:Pollution,Pollution,Pollution", "Boosterpack:Sandstorm,Sandstorm,Sandstorm", "Boosterpack:Forecast,Forecast,Forecast", "Boosterpack:Acid Rain,Acid Rain,Acid Rain", "Boosterpack:Dense Fog,Dense Fog,Dense Fog", "Boosterpack:Hurricane,Hurricane,Hurricane", "Boosterpack:Thunder Storm,Thunder Storm,Thunder Storm", "Boosterpack:Heatwave,Heatwave,Heatwave", "Boosterpack:Snowstorm,Snowstorm,Snowstorm"]));}
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Cauldron", "Bump", "Gemini Geometry", "Gemini Geometry"]){
	  diceset.push(x);
	}
	for(x in ["Kapow", "Telephone", "Missing Score"]){
	  damageset.push(x);
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Blood Let"]){
	  specialset.push(x);
	}
  }
  
  if (levelupselections[0].split("Terrible Deck").length > 1){
	Rules.substitutions.set("terrible","yep");
	packset.push("terrible");
	for(x in ["Smuggling Ball", "Stuck Gumball"]){ballset.push(x);}
	for(x in ["Derplicate", "Snubdivide"]){dupeset.push("InitialEquipment:" + x);}
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	for(x in ["Vide Grip", "Spatulatesword", "Lollitwop", "Table Scam", "Fudge", "Spatulate", "Dump", "Cauldron't"]){diceset.push(x);}
	for(x in ["Boxed Gloves", "Coup de Grace", "Landline", "Missed Score", "Elastic Spleen", "Trowel", "Grieve", "Lash", "Mallet", "Blood Stuck"]){damageset.push(x);}
	for(x in ["Shady Dice", "Jagged Shard", "Mirror Shred", "Illuminadd", "Stall of Mirrors"]){specialset.push(x);}
  }
  
  if (levelupselections[0].split("Thief Deck").length > 1){
	Rules.substitutions.set("thief","yep");
	Rules.enemyhpadjust *= 1.4;
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
    packset.push("thief");
	for(x in ["Duplicate", "Subdivide"]){dupeset.push("InitialEquipment:" + x);}
	for(x in ["Paper Lantern", "Lantern", "Tetraphobia", "Chisel", "Lucky 7", "Grater", "Doppeltwice", "Ungeradedice", "Square Pair", "Lockpick", "Spatula"]){
	  diceset.push(x);
	}
	for(x in ["Cloak", "Kite Shield", "Leather Armor", "Pickpocket", "Snake Eye Charm", "First Aid Kit", "Iron Armor", "Poison Jab", "Poison Jab", "Toxic Ooze", "Blight", "Detonator", "Raw Ambition", "Hookshot", "Signal Jammer", "Determination", "Dodge", "Snake Eye Charm", "Midnight Charm"]){
	  damageset.push(x);
	}
	for(x in ["Splitula", "Broken Mirror", "Nudgeblade", "Hacksaw", "Glass Cauldron"]){
	  specialset.push(x);
	}
	for(x in ["Healing Crystal", "Thick Skin"]){ballset.push(x);}
  }
  
  if (levelupselections[0].split("Random Deck").length > 1){
	Rules.substitutions.set("random","yep");
	packset.push("random1");
	dupeset.push("Equipment:Jester[]");
	dupeset.push("Equipment:Jester[]");
	ballset.push("Call for Backup Inventor?");
	ballset.push("Call for Backup Inventor?");
	for(x in ["Vise Grip", "Spatulasword", "Table Slam", "Lollipop", "Nudge", "Spatula", "Bump", "Cauldron", "Shadow Dice", "Mirror Shard", "Blood Let", "Illuminate", "Hall of Mirrors"]){
	  diceset.push("Call for Backup Inventor?");
	}
	for(x in ["Mirror Shard", "Blood Let", "Illuminate", "Hall of Mirrors", "Shadow Dice"]){
	  specialset.push("Call for Backup Inventor");
	}
	for(x in ["Backfire", "Gumball Machine", "Kapow", "Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Juggling Ball", "Boop", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  damageset.push("Call for Backup Robot");
	}
	Rules.substitute("Bop,Bop,Bop", rand(["Call for Backup Inventor?,Call for Backup Inventor?,Call for Backup Inventor?", "Call for Backup Robot,Call for Backup Robot,Call for Backup Robot"]));
	for(x in["Call for Backup Robot", "Call for Backup Inventor", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
  }
  if (levelupselections[0].split("Spooky Deck").length > 1){
	Rules.substitutions.set("spooky","yep");
	for(x in["Call for Backup Thief", "Call for Backup Robot", "Call for Backup Witch", "Call for Backup Inventor", "Call for Backup Thief?", "Call for Backup Robot?", "Call for Backup Witch?", "Call for Backup Inventor?"]){cfbset.push("Equipment:" + x);}
	Rules.enemyhpadjust *= 1.25;
	packset.push("spooky");
	dupeset.push("InitialEquipment:Spooplicate");
	dupeset.push("InitialEquipment:Spooplicate");
	for(x in ["Vise Grip", "Spatulasword", "Table Slam", "Lollipop", "Grudgenudge", "Spatula", "Bump in the Night", "Cauldron"]){diceset.push(x);}
	ballset.push(rand(["Ball o' the Wisp", "Flying Ball", "Pin Ball"]));
	ballset.push(rand(["Ball o' the Wisp", "Flying Ball", "Pin Ball"]));
	for(x in ["Boo", "Trick", "Hitodama", "Attacktoplasm", "Shadow Ball", "Apparition", "Chocolate Spookie", "Treat", "Flying Skull", "Banish", "Spectral Strike", "Exorcise", "Fool's Errand", "Accursed Needle", "Voodoo Pin", "Hexed Needle", "Ominous Chant"]){
	  damageset.push(x);
	}
	for(x in ["Shadow Dice", "Mirror Shard", "Illuminate", "Hall of Mirrors", "Jack o' Lantern", "Magician's Secret", "Shattered Mirror"]){
	  specialset.push(x);
	}
	Rules.substitute("Scathach", "Pumpkin Spice");
	Rules.substitute("Fireman", "Demon");
	Rules.substitute("Crystalina", "Mummy");
  }
  
  if (levelupselections[0].split("NC Deck").length > 1){
	Rules.substitutions.set("ncr","yep");
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
	for(x in 0...2){ballset.push(rand(["Operator", "Mirror on a Stick", "Prod", rand(["Bad Damage", "Cheap Shot"]), "Tap", "Saving Throw", "Table Flip", "Luckpick", "Welder", "Slim Jim", "Innovate", "Dime", "Coldron", "Tootsie Pop"]));}
	for(x in ["Operator", "Mirror on a Stick", "Prod", rand(["Bad Damage", "Cheap Shot"]), "Tap", "Saving Throw", "Table Flip", "Luckpick", "Welder", "Slim Jim", "Innovate", "Dime", "Coldron", "Tootsie Pop"]){
	  diceset.push(x);
	}
	for(x in ["Bumpbomb", "Hijack", "Sharpened Rosary", "Smart Spike", "Breaking Point", "Magic Cyanide", "Throwing Axe", "Supervolcano", "Spin Attack", "Sharp Straw", "Bass Guitar", "Ouija Board", "Holy Water", "Ice Giant", "Spear"]){
	  damageset.push(x);
	}
	for(x in ["Swing Me Another 6", "Gas Lamp", "Mirrorang", "Doppeldfire", "Distort", "Hammer Up!", "Wonder Gummi", "Envy"]){
	  specialset.push(x);
	}
  }
  
  if(packset != [] && packset != null){
    var packs = [];
	for(x in packset){
	  for(y in loadtext("diceydungeons/jesterpacks/packs_" + x)){
		packs.push(y);
	  }
    }
    leveluprewards(2, "erase");
	leveluprewards(2, "", packs, 3);
  }
  
  if(dupeset != [] && dupeset != null){
	leveluprewards(3, "erase");
	leveluprewards(3, "", rand(dupeset), 2);
	leveluprewards(6, "erase");
	leveluprewards(6, "", rand(dupeset), 2);
  }
  
  if(cfbset != [] && cfbset != null){
	leveluprewards(4, "erase");
	leveluprewards(4, "", cfbset, 3);
	leveluprewards(5, "erase");
	leveluprewards(5, "", cfbset, 3);
  }
  
  if(ballset != [] && ballset != null){
    for(x in ["Juggling Ball", "Gumball Machine"]){
	  choice = rand(ballset);
	  if(choice != "uwu"){
		Rules.substitute(x, choice);
		Rules.substitute(x + "+", choice + "+");
	  }
	}
  }
  
  if(diceset != [] && diceset != null){
    for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Bump", "Cauldron"]){
	  diceset.remove(x);
	}
	for(x in ["Vise Grip", "Spatulasword", "Lollipop", "Table Slam", "Nudge", "Spatula", "Bump", "Cauldron"]){
	  choice = rand(diceset);
	  if(choice != "uwu"){
		Rules.substitute(x, choice);
		Rules.substitute(x + "+", choice + "+");
	  }
	}
  }
  
  if(damageset != [] && damageset != null){
    for(x in ["Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  damageset.remove(x);
	}
	for(x in ["Boxing Gloves", "Rusty Sword", "Telephone", "Missing Score", "Elastic Heart", "Shovel", "Lament", "Whip", "Hammer", "Blood Suck"]){
	  choice = rand(damageset);
	  if(choice != "uwu"){
		Rules.substitute(x, choice);
		Rules.substitute(x + "+", choice + "+");
	  }
	}
  }
  
  if(specialset != [] && specialset != null){
    for(x in ["Illuminate", "Hall of Mirrors", "Shadow Dice", "Mirror Shard", "Blood Let"]){
	  specialset.remove(x);
	}
	for(x in ["Illuminate", "Hall of Mirrors", "Shadow Dice", "Mirror Shard", "Blood Let"]){
	  choice = rand(specialset);
	  if(choice != "uwu"){
		Rules.substitute(x, choice);
		Rules.substitute(x + "+", choice + "+");
	  }
	}
  }
	
}
if(Rules.substitutions == null) Rules.substitutions = new elements.Equipment("Equipment That Does Nothing").gamevar;