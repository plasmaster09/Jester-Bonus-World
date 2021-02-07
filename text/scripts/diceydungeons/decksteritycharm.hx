var packs = [];
for(y in loadtext("diceydungeons/jesterpacks/packs_all")){
	packs.push(y.split("Boosterpack:")[1]);
}
packs = rand(packs);
packs = packs.split(",");
var part = "";
for(x in 0...(packs[0] + " Pack!").length/2){part += " ";}
self.textparticle(part + packs[0] + " Pack!");
self.setvar("packstogive", packs);