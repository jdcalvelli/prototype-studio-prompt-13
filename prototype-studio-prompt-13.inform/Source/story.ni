The story title is "viewfinder, I".
The story author is "jd calvelli".
The story headline is "an interactive reinterpretation".
The release number is 1.
The story creation year is 2023.

[---]

[IMPORTS]
Include Conversation Framework by Eric Eve.
Include Vorple by Juhana Leinonen.

[---]

[EXPORT OPTS]
[Release along with cover art ("NAME HERE.").]
Release along with the "Vorple" interpreter.

[---]

[VARS]
visitorPostBathroom is a truth state variable.
visitorPostBathroom is false.

[---]

The vestige is a room.
The description of the vestige is
"There used to be life here. On this sofa. Around that table. Once. Now it's just a vestige of what it once was. There used to be a happy family here. [line break][line break]These days, it's just you and the coffeemaker."

The sofa is an undescribed supporter in the vestige.
The description of the sofa is
"It had color at one point. It's all rubbed out now."

The table is an undescribed supporter in the vestige.
The description of the table is
"You rarely sit by it any longer. It's haunted by happier memories. Now it serves as the pedestal for your coffeemaker."

The coffeeMachine is an undescribed supporter on the table.
The printed name of the coffeeMachine is "coffeemaker".
Understand "coffeemaker" as coffeeMachine.
The description of the coffeeMachine is 
"An apparatus of chromium and silver. Below it rests a mug, into which it's depositing its contents."

The mug is an undescribed opaque container on the coffeeMachine.
The description of the mug is
"Printed around the mug in block letters: 'Number One Father'. Or at least, that's what used to be there. The glyphs are all faded well beyond their edges now.[line break][line break]Inside is midnight black coffee. You haven't bothered to get milk in a long time."

[The coffeeDrink is an undescribed object in the mug.
The coffee is fixed in place.
The printed name of the coffeeDrink is "coffee".
Understand "coffee" as coffeeDrink.
The description of the coffeeDrink is
"You really aren't feeling like coffee. You can never will yourself to drink it. Maybe this time will be different."]

Instead of drinking the mug:
	move mug to player;
	say "You put the coffee to your lips, in a vain attempt to take a sip. You don't make the coffee to drink it. You make it for the ritual. It's something to do - something to ground you to reality while the ghosts of anamnesis float around you. To drink it is to lose your peg.[line break][line break]The rapping of metal on your front door pulls you out of your internal soliloquy.[line break][line break]You open it to find a most unusual visitor, but at least a visitor nonetheless.";
	stop the action.
	
The visitor is an undescribed man in the vestige.
The description of the visitor is
"A man without hands has come to the door. Except for the chrome hooks, he is an ordinary-looking man of fifty or so. He holds an old Polaroid camera, big and black. He has it fastened to leather straps that looped over his shoulders and went around his back, and it was this that secured the camera to his chest."

After saying hello to the visitor:
	say "You open your mouth to speak, but before you can begin, the man states: 'I might use your toilet.'[line break][line break]You respond: 'Come in. I just made coffee'.[line break][line break]You want to see how he would hold a cup.[line break][line break]You motion off into the distance to suggest where your bathroom is, and in return, the visitor gestures, implicitly allowing you to take the picture. The visitor disappears into the faded edges of your home.";
	move polaroidPicture to player;
	move visitor to bathroom.

The hooks are an undescribed object in the vestige.
The hooks are fixed in place.
The description of the hooks is
"Chromium silver, like your coffee machine."

The polaroidCamera is an undescribed container in the vestige.
The polaroidCamera is fixed in place.
The printed name of the polaroidCamera is "Polaroid camera."
Understand "Polaroid camera", "camera" as polaroidCamera.
The description of the polaroidCamera is
"There's a Polaroid picture hanging from the camera. You surmise that he stood on the sidewalk in front of your house, located your house in the viewfinder, pushed down the lever with one of his hooks, and out popped your picture."

The polaroidPicture is an undescribed object in the polaroidCamera.
The polaroidPicture is fixed in place.
The printed name of the polaroidPicture is "Polaroid picture".
Understand "Polaroid picture", "picture", "Polaroid", "photograph" as polaroidPicture.
The description of the polaroidPicture is
"[if player has polaroidPicture]There is a little rectangle of lawn, the driveway, the carport, front steps, bay window...Why would I want a photograph of this tragedy? You look a little closer and see your head, [italic type]your head[roman type] in there inside the kitchen window. It makes you think, seeing yourself like that.[else]You squint to try to make out what the visitor saw through his viewfinder, but can't make anything out while it's still in the camera."

After examining the polaroidPicture:
	if player has polaroidPicture:
		say "...[line break][line break]";
		say "The visitor returns from his trip to the bathroom, smiling.";
		Now visitorPostBathroom is true;
		move visitor to vestige.

[need to have the asks]
After quizzing the visitor about the polaroidPicture:
	if visitorPostBathroom is true:	
		say "You gesture to the photograph, and the visitor nonchalantly replies: 'What do you think? All right? Personally, I think it turned out fine. Don't I know what I'm doing? Let's face it, it takes a professional.'".
	
After quizzing the visitor about the hooks:
	if visitorPostBathroom is true:
		say "You gesture towards his hooks. He responds: 'I keep a room downtown. It's okay. I take a bus out, and after I've worked the neighborhoods, I go to another downtown. You see what I'm saying? You're alone, right?' You don't reply. 'I had kids once. Just like you. They're what gave me this.' He lifts his hooks.[line break][line break]You hand him the coffee, and he sits down on the sofa, leans back with a sigh, and smiles as if he knew something he wasn't going to tell you.[line break][line break]'Drink your coffee.'";
		end the story.

[bathroom to hide visitor for a bit]
The bathroom is a room.