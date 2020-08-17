//Put the rule you want to change everything to here

var newrule = "Gardener";

for (offers in Remix.offeronfloor){
  if (offers.length > 0){
    for (i in 0...offers.length){
      offers[i] = newrule;
    }
  }
}