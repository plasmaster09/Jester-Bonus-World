var packs = [];
for(y in loadtext("diceydungeons/jesterpacks/packs_all")){
	packs.push(y.split("Boosterpack:")[1]);
}
var packs1 = rand(packs);
var packs2 = rand(packs);
packs1 = packs1.split(",")[0];
packs2 = packs2.split(",")[0];
var part = "";
var packstring = packs1 + " + " + packs2 + "!";
for(x in 0...(packstring).length/2){part += " ";}
self.textparticle(part + packstring);
self.setvar("packstogive", [packs1, packs2]);