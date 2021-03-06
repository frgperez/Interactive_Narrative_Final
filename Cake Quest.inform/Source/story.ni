"Cake Quest" by Jordan Hyman and Francisco Perez

The story description is "An IF7 game where you play as Pat the baker. Today you need to bake a cake. Unfortunately, your ingredients have gone missing. You have 1 hour to find all ingredients or suffer a dent into your culinary reputation."

understand "upstairs" as up.
understand "downstairs" as down.
Make is an action applying to nothing.
Sammich is an action applying to nothing.
understand "make the cake", "make cake" as make.
Understand "make sandwich" as sammich.

Every turn:
	say "[time of day]";
	if the time of day is 10:00 AM:
		end the story saying "You took too long finding the ingredients! The customer won't be happy."

The Kitchen is a room.  The counter is a supporter in the Kitchen. The ingredients list is a thing on the counter. The description of the ingredients list is "A note which reads: FLOUR, SUGAR, VANILLA, BUTTER, BAKING POWDER, SALT, EGGS. With all these items, you'll be able to >>MAKE THE CAKE<<.". "[if didReadIntro is switched off]You are Pat the Baker, a humble baker with a rather odd habit. In your sleep, it seems you occasionally sleepwalk. Not only that, but in your slumbering stride you seem to hide various ingredients throughout the house! It seems last night was one of those nights. How unlucky, considering you need to bake a cake today. You better search the house for everything you'll need! You only have until 10:00 AM to find everything! [end if]An ordinary kitchen, just like any other. Inside are all the tools necessary to bake a cake. Too bad the necessary ingredients aren't here as well. To the south is the Living Room."
A refrigerator is an openable and closed container in the kitchen. The description is "Very common item in kitchens."
An egg carton is an openable and closed container in the refrigerator. The description is "[If closed]It's an egg carton![otherwise]The eggs have been replaced with golf balls!?[end if]".
Golf balls are a thing in the egg carton.
didReadIntro is a device. It is switched off.

Before going south:
	if didReadIntro is switched off:
		now didReadIntro is switched on;

Carry out make:
	if the player is in the kitchen:
		if the player is carrying a bag of flour and the player is carrying a bag of sugar and the player is carrying a bag of salt and the player is carrying eggs and the player is carrying baking powder and the player is carrying a bottle of vanilla and the player is carrying a stick of butter:
			end the story saying "You found all the ingredients and made the cake in time! The customer will be very pleased!";
		otherwise:
			say "You need all the ingredients to make the cake!";
	otherwise:
		say "You need to be in the kitchen to make the cake!"

Bread is an edible thing in the refrigerator. The description is "Regular bread. Won't need it for the cake though."
Juice carton is a thing in the refrigerator. The juice carton can be full, partly drained, or empty. The juice carton is full. The description is "Standard orange juice. Label says to drink by today!"
Milk carton is a thing in the refrigerator. The milk carton can be full, partly drained, or empty. The milk is full. The description is "Low fat milk."
Ham is an edible thing in the refrigerator. The description is "Can be used for a sandwich!"
Cheese is an edible thing in the refrigerator. The description is "Can be used for a sandwich!"
Understand "fridge" as refrigerator.
Understand "juice" as juice carton.
Understand "milk" as milk carton.
Sandwich is an edible thing. The description is "Ham and cheese sandwich. Perfect for a good lunch."

After opening the refrigerator:
	say "[if the player is carrying eggs]You see a pack of bread, juice, milk, ham, cheese, and a bunch of other items usually stocked in refrigerators. There also appear to be an egg carton in here but you already have eggs.[otherwise]You see a pack of bread, juice, milk, ham, cheese, and a bunch of other items usually stocked in refrigerators. There also appear to be an egg carton in here!";
	
Carry out sammich:
	if ham is nowhere or cheese is nowhere or bread is nowhere:
		say "You don't have the ingredients to make a sandwich.";
	otherwise:
		now ham is nowhere;
		now cheese is nowhere;
		now bread is nowhere;
		now the player is carrying a sandwich;
		say "You have successfully made a sandwich!";
	
Instead of drinking the juice carton:
	if the juice carton is partly drained: 
		now the juice carton is empty; 
		say "You drank some juice. The carton is now empty.";
	otherwise if the juice carton is full: 
		now the juice carton is partly drained; 
		say "You drank some juice. It is now partly drained.";
	otherwise if the juice carton is empty:
		say "No more juice.";
		stop the action;
		
Instead of drinking the milk carton:
	if the milk carton is partly drained: 
		now the milk carton is empty; 
		say "You drank some milk. The carton is now empty.";
	otherwise if the milk carton is full: 
		now the milk carton is partly drained; 
		say "You drank some milk. It is now partly drained.";
	otherwise if the milk carton is empty:
		say "No more milk.";
		stop the action;
	
Before taking the egg carton:
	if the egg carton is closed:
		say "You found the eggs. That almost seemed too easy.";
	otherwise:
		say "Maybe you shouldn't waste more time by taking it.";
		stop the action
		
After opening the egg carton:
	if the player is carrying eggs:
		say "You already found the eggs. No surprise they're not in here.";
	otherwise:
		say "Of course the eggs aren't here! Instead you find golf balls. What? You think it'd be that easy?"
		
Before taking the golf balls:
	say "You can play golf later.";
	stop the action
	
Before taking the refrigerator:
	say "This is too heavy to take!";
	stop the action
	
The Living Room is south of the Kitchen.  "The Living Room is a place of relaxation for you. Within you can see your comfortable couch and your big-screen TV. To the north is the Kitchen, to the east is the Bathroom, to the west is the Bedroom, to the south is the Backyard, upstairs is the Attic, and downstairs is the Basement."
The couch is an enterable supporter in the Living Room.

TV is a device in the living room. The TV is switched off. 

Instead of taking the TV:
	say "You don't need to take the TV!."

After switching on the TV:
	say "Cooking show on the Food Network is on. Maybe you shouldn't be watching TV right now."

A bag of flour is an edible thing.
The left throw pillow is a thing on the couch. The description is "This isn't a throw pillow [if the player is carrying a bag of sugar] either![otherwise]at all![end if] It's actually a bag of flour!"
After examining the left throw pillow:
	now the left throw pillow is nowhere;
	now a bag of flour is on the couch;
Before taking the left throw pillow:
	say "You don't need a pillow to make a cake!";
	stop the action;

A bag of sugar is an edible thing.
The right throw pillow is a thing on the couch. The description is "This isn't a throw pillow [if the player is carrying a bag of flour] either![otherwise]at all![end if] It's actually a bag of sugar!"
After examining the right throw pillow:
	now the right throw pillow is nowhere;
	now a bag of sugar is on the couch;
Before taking the right throw pillow:
	say "You don't need a pillow to make a cake!";
	stop the action;

The Bedroom is west of the Living Room. "The Bedroom: a place to rest your head after a long day's work. To the east is the Living Room."
The nightstand is a supporter in the Bedroom.

A bottle of vanilla extract is an edible thing.
The bottle of eyedrops is a thing on the nightstand. The description is "Upon closer inspection, you realized this is actually a bottle of vanilla extract!"
After examining the bottle of eyedrops:
	now the bottle of eyedrops is nowhere;
	now a bottle of vanilla extract is on the nightstand;
Before taking the bottle of eyedrops:
	say "You don't need eyedrops in your cake batter!";
	stop the action;

The Bathroom is east of the Living Room. "The bathroom where you wash up and other bodily functions. To the west is the Living Room."
The shower is a open container in the Bathroom.

A stick of butter is an edible thing.
The bar of soap is a thing in the shower. The description is "This is really a stick of butter!"
After examining the bar of soap:
	now the bar of soap is nowhere;
	now a stick of butter is in the shower;
Before taking the bar of soap:
	say "Soap tastes awful. It has no place in your cake.";
	stop the action;
	
Instead of taking shower:
	say "You can't take that!"

[Backyard]

The Backyard is south of the Living Room. "There's nothing special about your backyard. Sometimes in your free time you enjoy practicing putting with your golf balls though. To the north is the Living Room." 
A golf ball container is a closed, openable container in the backyard. The description is "This is where you hold your golf balls. [if the egg carton is open]You did find golf balls in the egg carton...[end if]".
Eggs are an edible thing in the golf ball container. The description is "One of the ingredients needed to make the cake."
A grill is an enterable supporter in the backyard. The description is "A grill. Very useful during those backyard BBQs! You can put things in the grill container."
A container called grill container is a part of the grill. The description is "Put items in here in order to turn on grill."
A burnt sandwich is an edible a thing. The description is "Burnt ham and cheese sandwich. How did you manage to make this?!"
Charcoal is a thing in the backyard. The description is "You can use this to turn on the grill."
Lighter fluid is a thing in the backyard. The description is "You can use this to turn on the grill."
Matches is a device on the grill. Matches are switched off. The description is "You can use this to turn on the grill."
Button is a device. It is switched off.

After opening the golf ball container:
	if egg carton is open:
		say "You found the eggs! Turns out you moved switched the eggs with the golf balls.";
	otherwise:
		say "You found the eggs!"
		
Instead of taking the grill:
	if the grill is switched on:
		say "Ouch! You burned yourself!";
	otherwise:
		say "It is too heavy to take!"
		
Understand "match" as matches.
		
After inserting into grill container:
	if charcoal:
		say "You put the charcoal in. [if the player is carrying lighter fluid or the lighter fluid is in the backyard and the player is carrying matches or the matches are on the grill]All you need now is the lighter fluid and a lit up match![otherwise if the player is carrying lighter fluid or the lighter fluid is in the backyard]Now all you need is lighter fluid![otherwise if the player is carrying matches or the matches are on the grill]Now all you need is a lit up match![end if]";
	if lighter fluid:
		say "You put the lighter fluid in. [if the player is carrying charcoal or the charcoal is in the backyard and the player is carrying matches or the matches are on the grill]All you need now is the lighter fluid and a lit up match![otherwise if the player is carrying charcoal or the charcoal is in the backyard]Now all you need is charcoal![otherwise if the player is carrying matches or the matches are on the grill]Now all you need is a lit up match![end if]";
	if switched off matches:
		say "You put in a non lit up match. Maybe you should light it up.";
	otherwise if switched on matches:
		say "You put a lit up match in. [if the player is carrying charcoal or the charcoal is in the backyard and the player is carrying lighter fluid or the lighter fluid is in the backyard]All you need now is the charcoal and lighter fluid![otherwise if the player is carrying lighter fluid or the lighter fluid is in the backyard]Now all you need is lighter fluid![otherwise if the player is carrying charcoal or the charcoal is in the backyard]Now all you need is charcoal![end if]";
	if lighter fluid is in the grill container and the charcoal is in the grill container and the matches are in the grill container and the matches are switched on:
		say "The grill is now on!";
		now the button is switched on;

Before taking matches:
	if matches are in the grill container and the matches are switched on:
		say "You can't take them back.";
		stop the action;
		
Before taking charcoal:
	if charcoal is in the grill container:
		say "You can't take it back.";
		stop the action;
		
Before taking lighter fluid:
	if the lighter fluid is in the grill container:
		say "You can't take it back.";
		stop the action
		
After putting sandwich on the grill:
	if button is switched on:
		say "You burned your sandwich!";
		now the sandwich is nowhere;
		now the player is carrying burnt sandwich.
		
After eating burnt sandwich:
	say "You ate the sandwich even though it was burned. Weirdo."

[End Backyard]

[Attic]

The Attic is up from the Living Room. "Nothing going on here. Downstairs is the Living Room."
A bag of rat poison is a thing in the attic. The description is "Wait a minute, this is salt! You nearly forgot you buy the stuff in bulk.". A bag of salt is an edible thing.
After examining the bag of rat poison:
	now the bag of rat poison is nowhere;
	now a bag of salt is in the attic;
Before taking the bag of rat poison:
	say "That's the LAST thing you want in a cake!";
	stop the action;

[End Attic]

[Basement]

The Basement is down from the Living Room. "Not much going on here. Basically, your laundry room. You see an empty hamper in front the washing machine and dryer. Upstairs is the Living Room."
The washing machine is a closed, openable and enterable container. The washing machine is in the basement.
The dryer is a closed, openable and enterable container. The dryer is in the basement.
The powdered detergent is a thing in the washing machine. The description is "This is really a box of baking powder!"
The baking powder is an edible thing. The description is "One of the ingredients needed to make the cake."
A pile of clothes is a thing inside the dryer.
Understand "clothes" as pile of clothes.
A table is a supporter in the basement.
A box is an openable and closed container on the table. The description is "[if the player is carrying baking powder]A normal box you use to store items in. [Otherwise] A normal box you use to store items in. Maybe one of the ingredients is inside.[end if]".
The dryer sheets are in the box. The description is "You should use these when you use the dryer."
The fabric softener is in the box. The description is "You should use this when you use the washing machine."
The bottle of bleach is in the box. The description is "You should use this when washing white clothes only."

Instead of taking the dryer sheets:
	say "Now is not time for laundry.";
	
Instead of taking the fabric softener:
	say "Now is not time for laundry.";
	
Instead of taking the bottle of bleach:
	say "Now is not time for laundry.";
		
Instead of taking the box:
	say "[if the box is closed]Maybe what you need is inside. [end if]You don't need to take the whole box.";

After examining the powdered detergent:
	now the powdered detergent is nowhere;
	now the baking powder is in the washing machine;
	
Instead of taking the powdered detergent:
	say "Now is not the time to do laundry.";
	
Instead of taking the washing machine:
	say "It is too heavy to take!";
	
Instead of taking the dryer:
	say "It is too heavy to take!";
	
Before entering the washing machine:		
	say "[if the player is carrying baking powder]There doesn't seem to be any ingredients in this uncomfortable, tight space...[otherwise]Oh look a box of [end if][if the powdered detergent is in the washing machine]powdered detergent[otherwise if the baking powder is in the washing machine]baking powder. [end if]";
	stop the action
	
Before entering the dryer:
	say "No room for you in there!";
	stop the action
	
Instead of taking a pile of clothes:
	say "You should be more worried about finding the ingredients right now.";
	
[End Basement]

Release along with cover art, the source text, an interpreter, and a website.