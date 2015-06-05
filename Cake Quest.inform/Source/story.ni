"Cake Quest" by Jordan Hyman and Francisco Perez

understand "upstairs" as up.
understand "downstairs" as down.
Make is an action applying to nothing.

Every turn:
	say "[time of day]";
	if the time of day is 10:00 AM:
		end the story saying "You took too long finding the ingredients! The customer won't be happy."

When play begins:
	say "You are Pat the Baker, a humble baker with a rather odd habit. In your sleep, it seems you occasionally sleepwalk. Not only that, but in your slumbering stride you seem to hide various ingredients throughout the house! It seems last night was one of those nights. How unlucky, considering you need to bake a cake today. You better search the house for everything you'll need! You only have until 10:00 AM to find everything!".

The Kitchen is a room.  The counter is a supporter in the Kitchen. The ingredients list is a thing on the counter. The description of the ingredients list is "A note which reads: FLOUR, SUGAR, VANILLA, BUTTER, BAKING POWDER, SALT, EGGS. With all these items, you'll be able to >>MAKE<< the cake.". "An ordinary kitchen, just like any other. Inside are all the tools necessary to bake a cake. Too bad the necessary ingredients aren't here as well. To the south is the Living Room."
A refrigerator is an openable and closed container in the kitchen. The description is "Very common item in kitchens."
An egg carton is an openable and closed container in the refrigerator. The description is "[If closed]You found the eggs![otherwise]The eggs have been replaced with golf balls!?[end if]".
Golf balls are a thing inside the egg carton. The description is "The golf balls you use when playing golf. Can't believe you replaced the eggs with them."

Carry out make:
	if the player is in the kitchen:
		if the player is carrying a bag of flour and the player is carrying a bag of sugar and the player is carrying a bag of salt and the player is carrying eggs and the player is carrying baking powder and the player is carrying a bottle of vanilla and the player is carrying a stick of butter:
			end the story saying "You found all the ingredients and made the cake in time! The customer will be very pleased!";
		otherwise:
			say "You need all the ingredients to make the cake!";
	otherwise:
		say "You need to be in the kitchen to make the cake!"

After opening the refrigerator:
	say "[if the player is carrying eggs]You see a pack of bread, juice, milk, ham, cheese, and a bunch of other items usually stocked in refrigerators. There also appear to be an egg carton in here but you already have eggs.[otherwise]You see a pack of bread, juice, milk, ham, cheese, and a bunch of other items usually stocked in refrigerators. There also appear to be an egg carton in here!";
	
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
	say "You can go golfing later.";
	stop the action
	
Before taking the refrigerator:
	say "This is too heavy to take!";
	stop the action
	
The Living Room is south of the Kitchen.  "The Living Room is a place of relaxation for you. Within you can see your comfortable couch and your big-screen TV. To the north is the Kitchen, to the east is the Bathroom, to the west is the Bedroom, to the south is the Backyard, upstairs is the Attic, and downstairs is the Basement."
The couch is a supporter in the Living Room.

A bag of flour is a thing.
The left throw pillow is a thing on the couch. The description is "This isn't a throw pillow [if the player is carrying a bag of sugar] either![otherwise]at all![end if] It's actually a bag of flour!"
After examining the left throw pillow:
	now the left throw pillow is nowhere;
	now a bag of flour is on the couch;
Before taking the left throw pillow:
	say "You don't need a pillow to make a cake!";
	stop the action;

A bag of sugar is a thing.
The right throw pillow is a thing on the couch. The description is "This isn't a throw pillow [if the player is carrying a bag of flour] either![otherwise]at all![end if] It's actually a bag of sugar!"
After examining the right throw pillow:
	now the right throw pillow is nowhere;
	now a bag of sugar is on the couch;
Before taking the right throw pillow:
	say "You don't need a pillow to make a cake!";
	stop the action;

The Bedroom is west of the Living Room. "The Bedroom: a place to rest your head after a long day's work. To the east is the Living Room."
The nightstand is a supporter in the Bedroom.

A bottle of vanilla extract is a thing.
The bottle of eyedrops is a thing on the nightstand. The description is "Upon closer inspection, you realized this is actually a bottle of vanilla extract!"
After examining the bottle of eyedrops:
	now the bottle of eyedrops is nowhere;
	now a bottle of vanilla extract is on the nightstand;
Before taking the bottle of eyedrops:
	say "You don't need eyedrops in your cake batter!";
	stop the action;

The Bathroom is east of the Living Room. "The bathroom where you wash up and other bodily functions. To the west is the Living Room."
The shower is a open container in the Bathroom.

A stick of butter is a thing.
The bar of soap is a thing in the shower. The description is "This is really a stick of butter!"
After examining the bar of soap:
	now the bar of soap is nowhere;
	now a stick of butter is in the shower;
Before taking the bar of soap:
	say "Soap tastes awful. It has no place in your cake.";
	stop the action;

[Backyard]

The Backyard is south of the Living Room. "Nothing going on here. Maybe an ingredient will be here later. To the north is the Living Room." 
Bag of salt is a thing in the backyard. The description is "One of the ingredients needed to make the cake (that's what Google said)."

[End Backyard]

[Attic]

The Attic is up from the Living Room. "Nothing going on here. Maybe an ingredient will be here later. Downstairs is the Living Room."
Eggs is a thing in the Attic. The description is "One of the ingredients needed to make the cake."

[End Attic]

[Basement]

The Basement is down from the Living Room. "Not much going on here. Basically, your laundry room. You see an empty hamper in front the washing machine and dryer. Upstairs is the Living Room."
The washing machine is a closed, openable and enterable container. The washing machine is in the basement.
The dryer is a closed, openable and enterable container. The dryer is in the basement.
The powdered detergent is a thing in the washing machine. The description is "This is really a box of baking powder!"
The baking powder is a thing. The description is "One of the ingredients needed to make the cake."
A pile of clothes is a thing inside the dryer.
Understand "clothes" as pile of clothes.
A table is a supporter in the basement.
A box is an openable and closed container on the table. The description is "[if the player is carrying baking powder]A normal box you use to store items in. [Otherwise] A normal box you use to store items in. Maybe one of the ingredients is inside.[end if]".
The dryer sheets are in the box. The description is "You should use these when you use the dryer."
The fabric softener is in the box. The description is "You should use this when you use the washing machine."
The bottle of bleach is in the box. The description is "You should use this when washing white clothes only."


Before taking the dryer sheets:
	say "Now is not time for laundry.";
	stop the action
	
Before taking the fabric softener:
	say "Now is not time for laundry.";
	stop the action
	
Before taking the bottle of bleach:
	say "Now is not time for laundry.";
	stop the action
	
Before taking the box:
	say "[if the box is closed]Maybe what you need is inside. [end if]You don't need to take the whole box.";
	stop the action

After examining the powdered detergent:
	now the powdered detergent is nowhere;
	now the baking powder is in the washing machine;
Before taking the powdered detergent:
	say "Now is not the time to do laundry.";
	stop the action
	
Before taking the washing machine:
	say "It is too heavy to take!";
	stop the action
	
Before taking the dryer:
	say "It is too heavy to take!";
	stop the action
	
Before entering the washing machine:		
	say "[if the player is carrying baking powder]There doesn't seem to be any ingredients in this uncomfortable, tight space...[otherwise]Oh look a box of [end if][if the powdered detergent is in the washing machine]powdered detergent[otherwise if the baking powder is in the washing machine]baking powder. [end if]";
	stop the action
	
Before entering the dryer:
	say "No room for you in there!";
	stop the action
	
Before taking a pile of clothes:
	say "You should be more worried about finding the ingredients right now.";
	stop the action
	
[End Basement]
	
