var tw3 = new motion.actuators.SimpleActuator(null,0.01,null);
tw3.repeat(1);
var func3 = new hscript.Parser().parseString('if (Rules.substitutions.exists("megaquest")){
	for (offers in Remix.offeronfloor){
		if (offers.length > 0){
			for (i in 0...offers.length){
				if(offers[i] == "Frog"){
					offers[i] = "Marshmallow ";
				}
				if(offers[i] == "Drain Monster"){
					offers[i] = "Robobot ";
				}
				if(offers[i] == "Bully"){
					offers[i] = "Stereohead ";
				}
				if(offers[i] == "Crystalina"){
					offers[i] = "Magician ";
				}
				if(offers[i] == "Dire Wolf"){
					offers[i] = "Audrey ";
				}
				for (x in ["Wolf Puppy", "Sorceress", "Drake", "Scathach", "Loud Bird", "Buster", "Snowman", "Fireman", "Singer", "Vacuum", "Sticky Hands", "Mimic", "Baby Squid", "Haunted Jar", "Paper Knight", "Banshee", "Madison", "Skeleton", "Cornelius", "Cowboy", "Handyman", "Wizard", "Warlock", "Space Marine", "Bounty Hunter", "Rose", "Cactus", "Slime", "Wisp", "Sneezy", "Rat King", "Kraken", "Hothead", "Pirate", "Rotten Apple", "Keymaster", "Aurora", "Gargoyle", "Rhino Beetle", "Yeti", "Gardener", "Wicker Man", "Beatrice"]){
					if(offers[i] == x){
						offers[i] = offers[i] + " ";
					}
				}
			}
		}
	}
}
if (Rules.substitutions.exists("spooky")){
	for (offers in Remix.offeronfloor){
		if (offers.length > 0){
			for (i in 0...offers.length){
				if(offers[i] == "Scathach"){
					offers[i] = "Pumpkin Spice";
				}
				if(offers[i] == "Fireman"){
					offers[i] = "Demon";
				}
				if(offers[i] == "Crystalina"){
					offers[i] = "Mummy";
				}
			}
		}
	}
}');

var interp3 = new hscript.Interp();
interp3.variables.set("Rules", Rules);
interp3.variables.set("Remix", Remix);
interp3.variables.set("trace", trace);
tw3.onComplete(interp3.execute, [func3]);
tw3.move();