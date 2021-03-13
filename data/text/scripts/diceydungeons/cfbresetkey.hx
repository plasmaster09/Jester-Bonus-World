if(!Rules.substitutions.exists("doubledecker")){var packs = [];
for(y in loadtext("diceydungeons/initialequipment/jester")){
	packs.push(y.split("InitialEquipment:")[1]);
}
packs = rand(packs);
var part = "";
for(x in 0...(packs + "!").length/2){part += " ";}
self.textparticle(part + packs + "!");
self.setvar("packstogive", packs);
self.setvar("doubledecker", "yep");}
else{var packs = [];
for(y in loadtext("diceydungeons/initialequipment/jester2")){
	packs.push(y.split("Boosterpack:")[1]);
}
packs = rand(packs);
packs = packs.split(",");
var part = "";
for(x in 0...(packs[0] + " + " + packs[2] + "!").length/2){part += " ";}
self.textparticle(part + packs[0] + " + " + packs[2] + "!");
self.setvar("packstogive", packs);}