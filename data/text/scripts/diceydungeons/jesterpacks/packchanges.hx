trace(levelupselections);
if (levelupselections.indexOf("boosterpack:Shield Bash,Deflect,Deflect") > -1){ 
  Rules.substitute("Backfire", "Iron Shield"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Sweets,Deflect,Sweets", "Sweets,Shield Bash,Deflect", "Deflect,Deflect,Deflect"])); 
} 

if (levelupselections.indexOf("boosterpack:Ice Shatter,Snowflake,Snowflake") > -1){ 
  Rules.substitute("Backfire", "Lament"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Snowflake,Buzzer,Snowflake", "Boop,Snowball,Boop", "Boop,Lament,Boop"])); 
}

if (levelupselections.indexOf("boosterpack:Detonator,Liquorice,Liquorice") > -1){ 
  Rules.substitute("Backfire", "Claw"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Liquorice,Liquorice,Liquorice", "Liquorice,Claw,Sweets", "Sweets,Liquorice,Sweets"])); 
}

if (levelupselections.indexOf("boosterpack:High Voltage,Buzzer,Buzzer") > -1){ 
  Rules.substitute("Backfire", "Hammer"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Buzzer,Hammer,Buzzer", "High Voltage,Spark,High Voltage"])); 
}

if (levelupselections.indexOf("boosterpack:Flame Blast,Spark,Spark") > -1){ 
  Rules.substitute("Backfire", "Whip"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Spark,Spark,Spark", "Buzzer,Whip,Buzzer", "Snowflake,Spark,Snowflake"])); 
}

if (levelupselections.indexOf("boosterpack:Resonance,Whisper,Whisper") > -1){ 
  Rules.substitute("Backfire", "Resonance"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Boop,Sonic Wave,Boop", "Boop,Resonance,Boop"])); 
}

if (levelupselections.indexOf("boosterpack:Hijinx,Slapsies,Slapsies") > -1){ 
  Rules.substitute("Backfire", "Concentration"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Hijinx,Mercy,Concentration", "Slapsies,Lojinx,Slapsies"])); 
}

if (levelupselections.indexOf("boosterpack:Flying Skull,Evil Laugh,Evil Laugh") > -1){ 
  Rules.substitute("Backfire", "Evil Laugh"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Evil Laugh,Evil Laugh,Evil Laugh", "Manic Laugh,Infestation,Manic Laugh"])); 
}

if (levelupselections.indexOf("boosterpack:Woof Woof Woof,Ruff Ruff Ruff,Ruff Ruff Ruff") > -1){ 
  Rules.substitute("Backfire", "Yip Yip Yip"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Ruff Ruff Ruff,Arf Arf Arf,Ruff Ruff Ruff", "Ruff Ruff Ruff,Bow Wow Wow,Ruff Ruff Ruff"]));
}

if (levelupselections.indexOf("boosterpack:Harmony,Melody,Melody") > -1){ 
  Rules.substitute("Backfire", "Chorus"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Melody,Harmony,Melody", "Melody,Harmony,Melody"])); 
}

if (levelupselections.indexOf("boosterpack:Battering Ram,Front Line,Front Line") > -1){ 
  Rules.substitute("Backfire", "Upkeep"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Front Line,Fortify,Front Line","Thick Skin,Fortify,Thick Skin"])); 
}

if (levelupselections.indexOf("boosterpack:Repeater,Laser,Laser") > -1) {
  Rules.substitute("Backfire", "Stew");
  Rules.substitute("Bop,Bop,Bop", rand(["Spike,Wind Up Fist,Spike", "Spike,Tetraphobia,Spike", "Wind Up Fist,Wind Up Fist,Wind Up Fist"]));
}

if (levelupselections.indexOf("boosterpack:Void Cannon,Antimatter,Antimatter") > -1) {
  Rules.substitute("Backfire", "Illuminate"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Magnet,Duplicake,Magnet", "Magnet,Lights Out,Magnet", "Duplicake,Duplicake,Duplicake"]));
}

if (levelupselections.indexOf("boosterpack:Plasma Cannon,Thruster,Thruster") > -1) {
  Rules.substitute("Backfire", "Wrecking Ball");
  Rules.substitute("Bop,Bop,Bop", rand(["Reload,Meteor,Reload", "Reload,Nightmare,Reload", "Meteor,Meteor,Meteor"]));
}

if (levelupselections.indexOf("boosterpack:Energy Drink,Accumulator,Accumulator") > -1) {
  Rules.substitute("Backfire", "Shadow Dice"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Accumulator,Special Attack,Accumulator", "Accumulator,Shadow Dice,Accumulator", "Special Attack,Special Attack,Special Attack"]));
}

if (levelupselections.indexOf("boosterpack:Armor Shard,Sweets,Sweets") > -1) {
  Rules.substitute("Backfire", "Healing Crystal");
  Rules.substitute("Bop,Bop,Bop", rand(["Spiky Armor,Gumball Machine,Spiky Armor", "Spiky Armor,Sweets,Spiky Armor", "Gumball Machine,Gumball Machine,Gumball Machine"]));
}

if (levelupselections.indexOf("boosterpack:Lament,Ice Shatter,Ice Shatter") > -1){ 
  Rules.substitute("Backfire", "Ice Shatter"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Snowflake,Whip,Snowflake", "Snowflake,Hammer,Snowflake", "Snowball,Snowflake,Snowball"])); 
}

if (levelupselections.indexOf("boosterpack:Hammer,High Voltage,High Voltage") > -1){ 
  Rules.substitute("Backfire", "High Voltage"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Buzzer,Whip,Buzzer", "Buzzer,Lament,Buzzer", "Electric Shock,Buzzer,Electric Shock"])); 
}

if (levelupselections.indexOf("boosterpack:Whip,Flame Blast,Flame Blast") > -1){ 
  Rules.substitute("Backfire", "Flame Blast"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Spark,Lament,Spark", "Spark,Hammer,Spark", "Fireball,Spark,Fireball"])); 
}

if (levelupselections.indexOf("boosterpack:Рocket Knife,Master Key,Master Key") > -1){ 
  Rules.substitute("Backfire", "Hacksaw"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Lockpick,Hacksaw,Lockpick", "Lockpick,Duplicate,Lockpick", "Subdivide,Hacksaw,Subdivide"])); 
}

if (levelupselections.indexOf("boosterpack:Call for Backup Thief?,Pickpocket,Pickpocket") > -1){ 
  Rules.substitute("Backfire", "Pickpocket"); 
  Rules.substitute("Bop,Bop,Bop", "Lockpick,Call for Backup Thief?,Lockpick");
}

if (levelupselections.indexOf("boosterpack:Poison Needle,Lockpick,Lockpick") > -1){ 
  Rules.substitute("Backfire", "Detonator"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Poison Needle,Detonator,Poison Needle", "Spatula,Toxic Ooze,Spatula", "Subdivide,Poison Needle,Subdivide"]));
}

if (levelupselections.indexOf("boosterpack:Six Shooter,Spatula,Spatula") > -1){ 
  Rules.substitute("Backfire", "Ungeradedice"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Doppeldice,Bump,Doppeldice", "Wrecking Ball,Midnight Charm,Wrecking Ball", "Candy,Six Shooter,Candy"]));
}

if (levelupselections.indexOf("boosterpack:Grater,Poison Needle,Poison Needle") > -1){ 
  Rules.substitute("Backfire", "Grater"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Hacksaw,Detonator,Hacksaw", "Poison Jab,Detonator,Poison Jab", "Subdivide,Toxic Ooze,Subdivide"]));
}

if (levelupselections.indexOf("boosterpack:Boolin Key,Jack o' Lantern,Jack o' Lantern") > -1){ 
  Rules.substitute("Backfire", "Boolin Key"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Illuminate,Jack o' Lantern,Illuminate", "Spectral Strike,Boo,Spectral Strike", "Boo,Spook,Boo"]));
}

if (levelupselections.indexOf("boosterpack:Banish,Hitodama,Hitodama") > -1){ 
  Rules.substitute("Backfire", "Wispene Gas"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Hitodama,Exorcise,Hitodama", "Banish,Hitodama,Banish", "Poof,Banish,Poof"]));
}

if (levelupselections.indexOf("boosterpack:Soul Fade,Spectral Strike,Spectral Strike") > -1){ 
  Rules.substitute("Backfire", "Spook"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Spook,Boo,Spook", "Attacktoplasm,Spook,Attacktoplasm", "Boo,Spectral Strike,Boo"]));
}

if (levelupselections.indexOf("boosterpack:Exorcise,Blurse,Blurse") > -1){ 
  Rules.substitute("Backfire", "Flying Skull"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Evil Laugh,Blurse,Evil Laugh", "Flying Skull,Soul Fade,Flying Skull", "Shadow Ball,Flying Skull,Shadow Ball"]));
}

if (levelupselections.indexOf("boosterpack:Wispene Gas,Pester,Pester") > -1){ 
  Rules.substitute("Backfire", "Chocolate Spookie"); 
  Rules.substitute("Bop,Bop,Bop", rand(["Treat,Pester,Treat", "Treat,Ectocookie,Treat", "Pester,Treat,Pester"]));
}