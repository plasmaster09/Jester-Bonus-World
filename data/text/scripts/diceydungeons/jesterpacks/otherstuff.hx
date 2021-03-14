var tw2 = new motion.actuators.SimpleActuator(null,0.01,null);
tw2.repeat(1);
var func2 = new hscript.Parser().parseString('
  trace(Rules.substitutions);
  if (Rules.substitutions.exists("classic")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_normal"), 2);
	}
  }
  if (Rules.substitutions.exists("parallel")){
    for(x in ["poison","fire","ice","shock","thorns","fury","lock","blind","confuse","weaken","silence","shield","dodge","survive","reequipnext","reduce","dice_trigger_1","dice_trigger_2","dice_trigger_3","dice_trigger_4","dice_trigger_5","dice_trigger_6","counter_1","counter_2","counter_3","counter_4","counter_5","counter_6","curse","haunted","voodoo"]){
    Rules.setalternate(x);
    }
    Rules.enemyhpadjust = 1.1;
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_paralleluniverse"), 2);
	}
  }
  if (Rules.substitutions.exists("elemental")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_elemental"), 2);
	}
  }
  if (Rules.substitutions.exists("megaquest")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_megaquest"), 2);
	}
  }
  if (Rules.substitutions.exists("clairvoyant")){
    if(self.level < 6){
	  leveluprewards(6, "erase");
	  leveluprewards(6, "", loadtext("diceydungeons/jesterpacks/packs_cv3"), 3);
	  if(self.level < 3){
		leveluprewards(3, "erase");
		leveluprewards(3, "", loadtext("diceydungeons/jesterpacks/packs_cv2"), 3);
		if(self.level < 2){
		  leveluprewards(2, "erase");
		  leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_cv1"), 3);
		}
	  }
	}
  }
  if (Rules.substitutions.exists("terrible")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_terrible"), 2);
	}
  }
  if (Rules.substitutions.exists("thief")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_thief"), 2);
    }
	Rules.enemyhpadjust = 1.25;
  }
  if (Rules.substitutions.exists("random")){
    if(self.level < 6){
	  leveluprewards(6, "erase");
      leveluprewards(6, "Dice");
	  if(self.level < 5){
		leveluprewards(5, loadtext("diceydungeons/jesterpacks/packs_random1"), 2);
		leveluprewards(5, "erase");
		if(self.level < 4){
		  leveluprewards(4, "erase");
		  leveluprewards(4, loadtext("diceydungeons/jesterpacks/packs_random2"), 2);
		  if(self.level < 3){
			leveluprewards(3, "erase");
			leveluprewards(3, "Dice");
			if(self.level < 2){
			  leveluprewards(2, "erase");
			  leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_random3"), 2);
			}
		  }
		}
	  }
	}
  }
  if (Rules.substitutions.exists("spooky")){
    if(self.level == 1){
	  leveluprewards(2, "erase");
      leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_spooky"), 2);
	}
	Rules.enemyhpadjust = 1.25;
  }
  if (Rules.substitutions.exists("ncr")){
    leveluprewards(2, "erase");
	leveluprewards(2, "", loadtext("diceydungeons/jesterpacks/packs_ncr"), 2);
  }
');

var interp2 = new hscript.Interp();
interp2.variables.set("Rules", Rules);
interp2.variables.set("leveluprewards", leveluprewards);
interp2.variables.set("self", self);
interp2.variables.set("loadtext", loadtext);
interp2.variables.set("trace", trace);
tw2.onComplete(interp2.execute, [func2]);
tw2.move();