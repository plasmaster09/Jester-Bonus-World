if(levelupselections != null){
  if (levelupselections.indexOf("InitialEquipment:MegaQuest Deck") > -1){
	var tw = new motion.actuators.SimpleActuator(null|0.01|null);
	tw.repeat(1);
	var scriptvar = 
		"for (offers in Remix.offeronfloor){
			if (offers.length > 0){
				for (i in 0...offers.length){
					if(offers[i] == \"Frog\"){
						offers[i] = \"Marshmallow \";
					}
					if(offers[i] == \"Drain Monster\"){
						offers[i] = \"Robobot \";
					}
					if(offers[i] == \"Bully\"){
						offers[i] = \"Stereohead \";
					}
					if(offers[i] == \"Crystalina\"){
						offers[i] = \"Magician \";
					}
					if(offers[i] == \"Dire Wolf\"){
						offers[i] = \"Audrey \";
					}
					for (x in mqset){
						if(offers[i] == x){
							offers[i] = offers[i] + \" \";
						}
					}
				}
			}
		}";
	var fn = new hscript.Parser().parseString(scriptvar);
	var ip = new hscript.Interp();
	ip.variables.set("Remix",Remix);
	ip.variables.set("mqset", ["Wolf Puppy", "Sorceress", "Drake", "Scathach", "Loud Bird", "Buster", "Snowman", "Fireman", "Singer", "Vacuum", "Sticky Hands", "Mimic", "Baby Squid", "Haunted Jar", "Paper Knight", "Banshee", "Madison", "Skeleton", "Cornelius", "Cowboy", "Handyman", "Wizard", "Warlock", "Space Marine", "Bounty Hunter", "Rose", "Cactus", "Slime", "Wisp", "Sneezy", "Rat King", "Kraken", "Hothead", "Pirate", "Rotten Apple", "Keymaster", "Aurora", "Gargoyle", "Rhino Beetle", "Yeti", "Gardener", "Wicker Man", "Beatrice"]);
	tw.onRepeat(ip.execute,[fn]);
	tw.move();
  }
}