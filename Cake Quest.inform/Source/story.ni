"Cake Quest" by Jordan Hyman and Francisco Perez

understand "upstairs" as up.
understand "downstairs" as down.

When play begins:
	say "You are Pat the Baker, a humble baker with a rather odd habit. In your sleep, it seems you occasionally sleepwalk. Not only that, but in your slumbering stride you seem to hide various ingredients throughout the house! It seems last night was one of those nights. How unlucky, considering you need to bake a cake today. You better search the house for everything you'll need!".

The Kitchen is a room.  The counter is a supporter in the Kitchen. The ingredients list is a thing on the counter. The description of the ingredients list is "A note which reads: FLOUR, SUGAR, VANILLA, BUTTER, BAKING POWDER, SALT, EGGS". "An ordinary kitchen, just like any other. Inside are all the tools necessary to bake a cake. Too bad the necessary ingredients aren't here as well. To the south is the Living Room."

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

The Backyard is south of the Living Room. "Nothing going on here. Maybe an ingredient will be here later. To the north is the Living Room." 

The Attic is up from the Living Room. "Nothing going on here. Maybe an ingredient will be here later. Downstairs is the Living Room."

The Basement is down from the Living Room. "Not much going on here. Basically, the laundry room for you. Upstairs is the Living Room."
The washing machine is a closed, openable and enterable container. The washing machine is in the basement.
The dryer is a closed, openable and enterable container. The dryer is in the basement.
The powdered detergent is a thing in the basement. The description is "This is really a box of baking powder!"
The baking powder is a thing.

After examining the powdered detergent:
	now the powdered detergent is nowhere;
	now the baking powder is in the basement;
Before taking the powdered detergent:
	say "Now is not the time to do laundry...";
	stop the action
	
Before taking the washing machine:
	say "It is too heavy to pick up!";
	stop the action
	
Before taking the dryer:
	say "It is too heavy to pick up!";
	stop the action
	
After entering the washing machine:
	say "There doesn't seem to be any ingredients in this uncomfortable, tight space...";
	now the player is in the basement
	
After entering the dryer:
	say "There doesn't seem to be any ingredients in this uncomfortable, tight space...";
	now the player is in the basement
	
