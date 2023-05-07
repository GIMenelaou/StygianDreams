"Stygian Dreams" by GJM

The story headline is "Self discovery, acceptance, and the difficulty of letting go."
The story genre is "Tragedy".
The story description is "Loss affects everyone, be it king or pawn. And when the queen is lost, the king is willing to do anything to bring her back.
You don't really need to do much; Look at the sky, smell the flowers. Or simply trudge through the underworld, having lost sight of why you went there in the first place. 
The current state of the game is a 'first release' with further implementations expected later down the line. All images were created with AI, and maybe some of the text as well;
See if you can find what was written by machine, what was written purely by hand, and what is an amalgamation of both!

*Note that a few conversation nodes are only half-implemented, hence being in the back garden. Only one ending is achievable as it stands, further implementations will be available soon™".
Release along with the “Vorple” interpreter.
Release along with the file "bg.jpg".
Release along with the style sheet "style.css".
Release along with the file "caveint.png".
The release number is 122.
Release along with the file "wisp1.png".
Release along with the file "Peaceful_grove.png".
Release along with the file "Lethargos.png".
Release along with the file "Lotoi.png".
Release along with the file "patrons.png".
Release along with the file "sculpture.png".
Release along with the file "Amelia.png".
Release along with the file "narcissus.png".
Release along with the file "Phaedra.png".
Release along with the file "walkout.png".
Release along with cover art ("An ancient greek man wading in stygian waters."). 
Use the serial comma. 








[Argonauts, Cyprus, Orpheus, Asclepius, Hercules, Jason, Castor and Polydeukis,.. Aphrodite? Apollo]

Part 0 - Inclusion

Definition: a room is backdropless if it has no backdrop.

A room can be interior or not interior. Rooms are usually not interior.


Include Vorple by Juhana Leinonen.
Include Vorple Tooltips by Juhana Leinonen.
Include Vorple Status Line by Juhana Leinonen.
Include Vorple Screen Effects by Juhana Leinonen.
Include Vorple Notifications by Juhana Leinonen.
Include Vorple Multimedia by Juhana Leinonen.
Include Vorple Modal Windows by Juhana Leinonen.
Include Vorple Hyperlinks by Juhana Leinonen.
Include Vorple Element Manipulation by Juhana Leinonen.
Include Vorple Command Prompt Control by Juhana Leinonen.
Include Menus by Emily Short.
Include Approaches by Emily Short.
Include Reactable Quips by Michael Martin.
Include Quip-Based Conversation by Michael Martin.
Include Room Description Control by Emily Short.
[Include Conversation Responses by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Conversation Package by Eric Eve.
Include Conversational Defaults by Eric Eve.}]
Include Epistemology by Eric Eve.


Showing an image is an action applying to nothing.
Understand "show image" as showing an image.

The player has a number called anamnesis. The anamnesis is usually 0.

Tastesense and smellsense are truth states that vary. Tastesense and smellsense are usually false.

Rooms have a number called revisitcounter. The revisitcounter is usually 0. [visited amount of locations for quips]

Trueform is a truth state that varies. Trueform is false. 

 


[Place a left aligned header3 element called "conversation" reading "Talk to the wisp".}]



[
unused
A thing has some text called the definition.

	
Rule for printing the name of something (called the item) when the item provides the property definition and the definition of item is not empty:
		place text "[printed name of the item]" with a tooltip reading "[definition of item]".



]


shiddin is an action applying to nothing.

Understand "χέσε" as shidding.


Part 0.0.1 Stolen stuff


[Thanks a lot Chin kee yong]

Definition: a person is other if it is not the player.
Does the player mean doing something with the player: it is unlikely.
Understand "person" as a person. Understand "people" as the plural of a person. Understand "man" as a male person. Understand "men" as the plural of a male person. Understand "woman" as a female person. Understand "women" as the plural of a female person.


Understand "wave hello" or "wave hello [text]" or "wave goodbye" or "wave goodbye [text]" as a mistake ("[ TALK TO tutorial]"). 


To say TALK TO tutorial:
	say "(Use the command 'talk to' or 't' to initiate a conversation with other characters.) "
	
PART TALK TO EXPRIMENT

	
Part - Smell and Sound - this is great

A room has some text called the sound.
A thing has some text called the sound.
A room has some text called the scent.
A thing has some text called the scent.
A thing can be recollecting, forgetting or plain. A thing is usually plain. [for the anamnesis brownie points]

The report listening rule is not listed in the report listening to rulebook.
The report smelling rule is not listed in the report smelling rulebook. [EDIT]
	
Report listening (this is the new report listening rule):
	if the sound of the noun is not empty:
		say "[sound of the noun][line break]";
	otherwise:
		say "No sound reaches you."

Report smelling (this is the new report smelling rule):
	if the scent of the noun is not empty:
		say "[scent of the noun][line break]";
	otherwise:
		say "No scent reaches you."
		
Part Unavailable things

A thing can be faraway or non-faraway. A thing is usually non-faraway.

Last instead of doing something (this is the can't  interact with faraway things rule):
	let N be an object;
	if action requires a touchable noun:
		if the noun is part of a faraway thing (called the parent):
			now N is the parent;
		otherwise if the noun is faraway:
			now N is the noun;
	otherwise if action requires a touchable second noun:
		if the second noun is part of a faraway thing (called the parent):
			now N is the parent;
		otherwise if the second noun is faraway:
			now N is the second noun;
	if N is a thing:
		if we are listening to N, continue the action;
		if we are smelling N and the scent of N is not empty, continue the action;
		if N provides the property faraway response:
			say "[faraway response of N][line break]";
		otherwise:
			say "[They're] too far away.";
	otherwise:
		continue the action.


Part formatting  - Command Prompt
		
To say standard command prompt:
	say "[>]".
	
To say >:
	say ">".
		
To say begincmd:
	say "[>][begincmdstyle]".
	
To say begincmdstyle:
	say bold type.
	
To say endcmd:
	say roman type.
			
Part 1.7.3 - Formatting Variations

To say begin prompt-emphasis:
	say roman type.
		
To say end prompt-emphasis:
	say italic type.


Part Still stolen actions, populating with options - fill and edit
	


Bribing is an action applying to one thing. Understand "bribe [something]" or "pay [something]" as bribing. 

Check bribing:
	if Charon's obol is carried:
		now the noun is nowhere;
	otherwise:
		say "Can't bribe the ferryman without his toll.";
	stop the action.
	

		

Combing your hair is an action applying to nothing. Understand "comb my/-- hair" or "brush my/-- hair" as combing your hair. [The logical next step.]

Carry out combing your hair (this is the standard combing your hair rule):
		say "You have nothing with which to comb your hair."
		

Crying is an action applying to nothing. Understand "cry" or "panic" as crying. [EDIT]

Check crying (this is the block crying rule): say "Your eyes have no more tears to shed."; stop the action.
		
Descending is an action applying to nothing. Understand "descend" as descending. 
Check descending: try going down instead.
		

Extinguishing is an action applying to one thing. Understand "blow out/on/-- [something]" or "extinguish [something]" or "put out [something]" or "snuff [something]" as extinguishing. 
Check extinguishing: say "[regarding the noun][They're] not something that can be extinguished."; stop the action.


To say anamnesisup:
	increment anamnesis of the player.

To say anamnesisdown:
	decrement the anamnesis of the player.

		

Knocking on is an action applying to one thing. Understand "knock on/-- [something]" or "tap [something]" as knocking on. 
Check knocking on an openable door: say "There is no response."; stop the action.
Check knocking on: say "Nothing happens."; stop the action.


Scaring is an action applying to one visible thing. Understand "chase away/-- [something]" or "scare away/-- [something]" or "shoo away/-- [something]" or "frighten away-- [something]" as scaring. 
Check scaring when the noun is not a mortal person: say "That is unlikely to elicit a response."; stop the action. [EDIT]



Screaming is an action applying to nothing. Understand "yell" or "holler for/-- the/-- guard/guards/--" or "shout" or "scream" or "call out" or "cry out" as screaming. 
Check screaming: say "Only the taste of blood reaches your tongue. "; stop the action. [EDIT]
 
Singing is an action applying to nothing. Understand "sing" or "hum" as singing. [EDIT]
Check singing: say "You murmur the first few lines in praise to the human god, Heracles, your patron and brother."; stop the action.

Swimming is an action applying to nothing. Understand "swim" or "dive" as swimming. 

Check swimming (this is the block swimming rule):
		say "Swimming in any of the underworld's rivers is not a very good idea.";
	stop the action.
	


Tickling is an action applying to one thing. Understand "tickle [something]" or "fondle [something]" as tickling.
Check tickling when the noun is not a mortal person: say "That is unlikely to elicit a response."; stop the action.


[https://intfiction.org/t/silly-commands-you-try-in-parser-games/54838/41?u=gjmen]



[CLIMB IF APPLICABLE - sit in chairs ? - pick? - touch TOADD]



Check jumping: instead say "You are not in the mood for callisthenics."


Understand "sleep" or "sleep [text]" or "rest" or "nap" or "shut eyes" as a mistake ("You are far too restless. The erynies hound you.")




Understand "approach [text]" or "follow" or "follow [text]" or "go after [text]" as a mistake ("(You'll have to specify which cardinal direction you want to go in. For example, [italic type]go west[roman type].)").

Understand "blush" as a mistake ("Nothing has happened to cause you to blush.").
Understand "bow" as a mistake ("Respect is earned, not given.").
Understand "cook" or "cook [text]" as a mistake (" The wisp chirps up at your odd traing of thought. 'I'd like to see you try! Think you can cook underworld fish? Spiced by lament and torment..' the entire blorb of light trembles with delight at the notion.").
Understand "die" as a mistake ("You quite recently did.").
Understand "chuckle" or "grin" or "laugh" or "smile" as a mistake ("What reason is there for that?").
Understand "dance" or "dance [text]" or "do a dance/jig" as a mistake ("What reason is there for that?").[EDIT - happy vibes with wife eventually? perhaps]
Understand "fall down/over/--" or "misstep" or "trip" or "trip [text]" as a mistake ("Even in the depths of despair you are not that unbalanced.").
Understand "find [text]" or "look for [text]" or "search for [text]" as a mistake ("(You'll have to be more specific about where you look. For example, [italic type]examine - or x- wisp[roman type].)").
Understand "go behind [text]" or "go in front [text]" as a mistake ("(You don't need to be specific about where you're standing. Just [begincmd]examine[endcmd] or [begincmd]search[endcmd] what you'd like to interact with.)").
Understand "hide" or "hide [text]" or "sneak [text]" or "stealth [text]" or "creep [text]" as a mistake ("Death will not diminish your pride. No.").
Understand "kneel" or "kneel [text]" or "sink to my/-- knees" or "fall to my/-- knees" as a mistake ("No.").

Understand "put [other things] under [something]" as putting it on.

Prayingtox is an action applying to one thing.

Understand "pray to [something]" as prayingtox.

Prayerflag is a truth state that varies. Prayerflag is false.

Carry out prayingtox:
	  if the topic understood is a topic listed in the Table of Prayerlines:
		say "You take a moment to recall your mother's teachings. [line break]
[line entry]";
	otherwise:
		say "You don't remember a prayer for that divinity."
		


Understand "pray" as a mistake ("You murmur a small prayer to a minor divinity, "). 


Table of Prayerlines
god	line
"Zeus"	"'Zeus, mighty ruler of the sky, grant me the strength to face the trials that lie ahead.'"
"Hera"	"'Hera, queen of the gods, bestow upon me the wisdom to lead with fairness and grace.'"
"Poseidon"	"'Poseidon, lord of the seas, guide me through turbulent waters to find safe harbor.'"
"Demeter"	"'Demeter, mother of harvests, nourish my spirit and help me grow in times of adversity.'"
"Athena"	"'Athena, goddess of wisdom, may your insight light my path through darkness and uncertainty.'"
"Apollo"	"'Apollo, god of light and arts, illuminate my journey with hope and inspiration.'"
"Artemis"	"'Artemis, huntress of the wild, lend me your aim to strike true in the face of adversity.'"
"Ares"	"'Ares, god of war, instill in me the courage to stand firm against my fears and foes.'"
"Aphrodite"	"'Aphrodite, Mother, enchantress of love, remind me that your gift endures, even in the darkest moments'."
"Hephaestus"	"'Hephaestus, master of the forge, temper my spirit with resilience and determination'."
"Hermes"	"'Hermes, messenger of the gods, guide me swiftly to the end of my journey, wherever it may lead'."
"Hestia"	"'Hestia, goddess of the hearth, grant me the warmth of your embrace to find solace in my darkest hours'."








Understand "curse" or "cuss" or "swear an/-- oath/--" as a mistake ("You mutter a string of curses. Something about radishes.").
Understand "remember" or "remember [text]" or "recall" or "recall [text]" or "think about" or "think about [text]" as a mistake ( "[if anamnesis of the player is less than 5] Struggle as you might, your memory is hazy at best. [otherwise] You remember. Her."). [add]


Understand "roll my/-- eyes" as a mistake ("You roll your eyes.").
Understand "sigh" as a mistake ("You sigh.").
Understand "throw up" or "retch" or "vomit" or "barf" or "lose my/-- lunch" as a mistake ("You haven't eaten since. Not much to heave out.").
Understand "undress" or "strip" as a mistake ("You would much rather keep on your modest attire."). [TODO FIGURE OUT CLOTHES nonvital]
Understand "use [text]" as a mistake ("You'll have to use a more specific verb than that.").
Understand "whistle" as a mistake ("You don't know how to whistle.").
Understand "xyzzy" or "plugh" or "plover" as a mistake ("The words sound barbaric to your ears. The wisp appears suddenly in front of your face out of nowhere at the thought of them, however.").
Understand "taste" or "taste [text]" as a mistake ("Your senses are dulled."). [TODO EDIT FOR STATE]

Understand the commands "punch" and "hit" and "kill" and "murder" as something new. Understand "punch [something]" or "hit [something]" as violencing. Violencing is an action applying to one thing.

Instead of  attacking, cutting, knocking on, pushing, or violencing yourself, say "That won't do much."
		


The can't reach inside rooms rule response (A) is "That's too far away."

The sound of a person is usually "[regarding the item described][They] [are][if the item described is divine] silent.[otherwise]n't saying anything."

		
Instead of drinking, switching on, switching off, or wearing someone (this is the can't do that to a person rule): say "That doesn't make any sense."
Instead of setting someone to something (this is the can't set people rule): say "That doesn't make any sense."

Instead of looking under something carried by an other mortal person (called the carrier), say "[regarding the noun][They're] what [the carrier] [are] carrying."
Instead of looking under something worn by an other mortal person (called the wearer), say "[regarding the noun][They're] what [the wearer] [are] wearing."

Instead of eating a shade person, say "What a strange notion."

Instead of taking an other mortal non-faraway person (this is the new can't take people response rule): say "[regarding the noun]You lack the tangibility, even if [they] allowed you to."

Instead of attacking, cutting, knocking on, pushing, or violencing an other non-faraway mortal person (this is the can't hurt friendly people rule): say "This is a challenge that your usual solution is worthless against."


Instead of knocking on, pulling, pushing, smelling, squeezing, touching, or turning an other  non-faraway mortal person: say "You doubt that would go over well with [the noun]."
Instead of kissing, rubbing, or searching an other  non-faraway mortal person, say "You doubt [the noun] will let you do that."

Instead of eating a shade person, say "A challenging prospect."
Instead of eating something that is part of a shade person, say "A challenging prospect".
Instead of giving something to a shade person, say "You won't get much of a response."
Instead of pushing, pulling, or turning a shade non-faraway person, say "That won't accomplish anything."
Instead of swinging or taking a shade non-faraway person, say "You lack the strength."
Instead of searching a non-faraway shade person, say "You find nothing of interest."
Instead of knocking on, squeezing, or touching a non-faraway shade person, say "[regarding the noun][They] [are] still."
Instead of kissing a shade person, say "An ill-advised, if romantic, notion."
Instead of waking a shade non-faraway person, say "[regarding the noun][Theirs] is a sleep from which there is no awakening."
Instead of eating something that is part of a shade person, say "Unlikely."
Instead of giving something to a shade person, say "The dead cannot accept gifts."
Instead of knocking on, pushing, pulling, squeezing, swinging, taking, touching, or turning a shade non-faraway person, say "You grasp nothing but air."
Instead of searching a shade person, say "You won't find anything for the living."
Instead of waking a shade person, say "[regarding the noun][Theirs] is a sleep from which there is no awakening."









Hades' Castle is a faraway backdrop."Awe-inspiring and foreboding, the fortress of the Tyrant, the infamous, the one who enriches his kingdom from mortal lament and tears, floats overhead. Yet despite all the presumed fear around this god, he is a god to you, like any other. [line break] Though the sight of a floating castle does serve as a grounding reminder of where you are."

Limbic sun is a faraway backdrop. "The sun hovers at the horizon, its position constant and unchanging. Is it setting or rising? Time is stood still, at least as far as you understand it." 

Undersky is a backdrop. Undersky is everywhere. "Gazing upwards, you struggle to accept the reality of the strange sky above, that seems to persist regardless of your location. "







	

Part 0.1 Continuing declarations

Violenttendencies is a number which varies. 

Charon's obol is a kind of thing. The indefinite article is "it". Understand "coin" or "obol" as Charon's obol.

A person is either mortal,shade or divine, A person is usually mortal.

A thing can be smokeable or not-smokeable. A thing is usually not-smokeable.

Understand "ghost" or "spirit"  or "shade" as a shade person. 

PhysState is a kind of value. The physstates are thirsty, hungry and ok. A person has a physstate. The physstate of a person is usually ok.

PART character init

Persephone is a divine woman. The description of Persephone is " She sure exists."
Hades is a divine man. The description of Hades is "Raw dread oozes from every part of this being."




Part 1 - Text

Chapter 1 Introduction - Tutorial



[Νymph Lethe or Old man with chalice and hydria.]



Chapter 4 "Cocytus" or "Phlegethon"

Chapter 5 "Phlegethon" or "Cocytus"

Chapter 6  "Acheron"

Chapter 7  Finale







Book 1 - the intro sequence

Interlocutor is a text that varies.
		
Lethe,Styx,Cocytus,Phlegethon and Acheron are regions.

Before talking to someone :
	now interlocutor is printed name of the noun.

The left hand Vorple status line is "Location: [the player's surroundings]".
The right hand Vorple status line is "Exits: [exitlist]".
[The right hand Vorple status line is "Anamnesis: [anamnesis of yourself]".}}]
[The right hand Vorple Status line is "Talking to: [interlocutor]". [maybe remove]}]

To say exitlist:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room,  place a link to command " [way] ". 
		
To say wispexitlist:
	let place be location;
	repeat with wispway running through directions:
		let place be the room wispway from the location;
		if place is a room, say "[wispway]". 
		
Rule for printing the name of a direction (called  way) :
	choose row with a heading of the way in the Table of Abbreviation;
	say "[shortcut entry]".

Rule for printing the name of a direction (called  wispway) :
	choose row with a heading of the wispway in the Table of Wispways;
	say "[wispshort entry]".



Table of Abbreviation
heading	shortcut
north	"N"
northeast	"NE"
northwest	"NW"
east	"E"
southeast	"SE"
south	"S"
southwest	"SW"
west	"W"
up	"U"
down	"D"
inside	"IN"
outside	"OUT"

Table of Wispways
heading	wispshort
north	"North"
northeast	"North east..ish?"
northwest	"North west..ish"
east	"East"
southeast	"South east..ish!"
south	"South"
southwest	"South west"
west	"West"
up	"Up there!"
down	"Down there..?"
inside	"In there!"
outside	"Back out?"



[EDIT AKESTOR Ἀκέστωρ    Φῶς]
	
[EDIT check?] [think about adding adonis]


persephonstyle is a vorple style.




When play begins: [add the falling image? change to xiphos? TOADD]
	clear the screen;	
	say "[persephonstyle style]'Anything?' [end style] [line break] The voice is chilling, but your blood has already grown cold. 
You do not hesitate to reply, past parched lips and bloodshot eyes. 'Anything.' [line break] [keywaiting]
You won't question why a god would bother with a mortal; Perhaps the influence of your mother, for once, had some value. 
Or perhaps this is another game to them. You care not. [paragraph break][keywaiting]Past Aphrodite's grove, past the cliff overlooking the birth-sea where your grandfather saw his consort turn from ivory to flesh, where your father named the kingdom after his name, where your brother took the crown; And subsequently lost it, shamed by a god. [paragraph break][keywaiting]
Cinyras took his own life from shame; You only hesitate, the crystal waters overcast by your doubting shadow.
The voice speaks up again,[keywaiting] soft,[keywaiting] ethereal.[keywaiting]  [persephonstyle style]'For her'. [end style] [line break]
'For her.'[keywaiting] 
You take the plunge. The freezing waters cut your breathing to a final, short, stuttered, quiet gasp. You taste blood and then quiet darkness envelops you.[emphasized font style][x-large font style][fantasy font style] [nextlink] [end style][end style][end style]";
	wait for the SPACE key;
	clear the screen;
	center "[banner text]";
	wait for any key;
	clear the screen;
	show a modal window;
	set output focus to the modal window;
	say "This is an interactive (mythological) fiction game.
 You'll need to LOOK, Examine or otherwise interact with your environment. [line break] Experiment as you please and if anything seems out of place, email me at Stygiandreams@hotmail.com.[line break] 
You can (and should) use the TALK TO command to converse with the NPCs. While there are no direct 'puzzles', how much you explore and how much you interact with yourself, others , and the environment, will directly affect the ending of the game.";
	set output focus to the main window;
	say " [emphasized font style][x-large font style][fantasy font style][start link][end style][end style][end style]";
	wait for the SPACE key.
[think about adding tutorials on screen? prob js or css

[or] the motion is swift and decisive. You don't even register the pain; There is only on thing on your mind.[as decreasingly likely outcomes] 
It's time. You take one last breath and[one of]

]

To say nextlink:
	if Vorple is supported:
		place a link to execute the JavaScript command "vorple.prompt.queueKeypress(' ')" reading "→";
	otherwise:
		say "[paragraph break]Press space to continue."


To say start link:
	if Vorple is supported:
		place a link to execute the JavaScript command "vorple.prompt.queueKeypress(' ')" reading "And then came sleep.";
	otherwise:
		say "[paragraph break]Press space to continue."


Limbic sun is in InfrontofKapeleion.
Hades' castle is in InfrontofKapeleion.

Limbic sun is in Lethargos.
Hades' castle is in Lethargos.

Limbic sun is in the pyretic cyclus.
Hades' castle is in the pyretic cyclus.

Limbic sun is in the frozen cyclus.
Hades' castle is in the frozen cyclus.


Limbic sun is in acherianarea.
Hades' castle is in acherianarea.








[introductory text, surroundings, forest? ]

To say turn_count:
	say "[turn count]".
	
Firstconvoflag is a truth state that varies. Firstconvoflag is false.

[i only figured out the reading part after reading through Jack Welch's En Garde. Wish i'd seen it sooner because it would have saved a LOT of tosays. maybe fix tosays if there is any time...]
Instead of looking for the first time:
	clear the screen;
	say "Your eyes slowly adjust to the surroundings. This location feels intimately familiar, yet you know there's no way for you to actually have been here in your lifetime. Struggling to get up you heave a rather impressive amount of seawater, the salt parching your lips. [paragraph break] [keywaiting] As you slowly, properly shift to consciousness, or at least, some semblance of it, ";
	place a link to the command "Something" called "wisplink" reading "Something"; 
	say ", catches your eye. What.. [italic type]is[roman type] that?";
	
Firstconvoing is an action applying to nothing. [a pita to debug jfc]

Understand "Something" or "x Something" or "examine Something" or "x it" or "examine it" or "look at it"or "look at something" or "l Something" or "Investigate"  or "Look at" as firstconvoing when the player is in the tutorialarea and firstconvoflag is false.


Understand "shit" or "crap" as a mistake ("Your bowel movements are not quite that pliable to go on command; (If you are frustrated, a good place to start would be LOOK or L and then following the links, or even try TALK TO WISP)")

Understand "fuck" as a mistake ("Your affections were only ever targeted to one person.(If you are frustrated, a good place to start would be LOOK or L and then following the links, or even try TALK TO WISP")
	
Understand "defenestrate" as a mistake ("Throwing someone through a window was a favorite tactic of yours when you were brash and young; Regrettably, the lack of youth or windows would make it a hard proposition.")

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	say "Thinking without formulating a coherent decision is not going to get you anywhere. You know this." instead. 
	
Rule for printing a parser error when the latest parser error is the didn't understand error:
	say "That's  -not- Greek to me." instead. 
	
 

Instead of taking some scenery: say "While a challenging prospect for Heracles, sober reality is that it's a physical impossibility for you." 

Carry out wispconvoing:
	try talking to the wisp instead.
	
After reading a command when the turn count is 1:
	if the player's command includes "something" or the player's command includes "it" or the player's command includes "thing":
		change the text of the player's command to "accept-input";
		change the text of the player's previous command to "Investigate.";
		try firstconvoing instead;
	else:
		say "Somehow you can't go past the most base of curiosities, as if your willpower has entirely left your body. Without considering much else, you try to comprehend what it is that you are looking at.";
		change the text of the player's command to "reject-input";
		try firstconvoing instead.

Accepting-input is an action applying to nothing. Understand "accept-input" as accepting-input.
Rejecting-input is an action applying to nothing. Understand "reject-input" as rejecting-input.

After reading a command when the turn count is 2:
	if the player's command includes "south" or the player's command exactly matches the text "s" or the player's command exactly matches the text "S":
		say "While you may well want to continue on with your intended purpose, you somehow doubt the creature in front of you would be amenable to you walking away as it stands." instead;
		decrease the turn count by one.



Carry out firstconvoing:
	now firstconvoflag is true;
	increase turn count by one;
	say "[line break] A ball of light, no larger than an apple, hovers overhead, almost [italic type]lazily[roman type] buzzing in place, wispy tendrils of light occasionally expanding from its core. [paragraph break]";
	wait for any key;
	  place an image "wisp1.png"  with the description "You see the orb.", centered;
	say "Subtle disorientation gives way to a sense of wonder as you find yourself in an ethereal landscape, your gaze drawn to the curious entity above. For a fleeting moment you could swear that it just [italic type] blinks [roman type] at you, despite its lack of discernible features. Abruptly it flies into a torrent of words which you struggle to understand; The words themselves are known in a fashion, but the heavy dialect makes them nearly unintelligible. Mycenaean? No, that doesn't quite fit; it would be more familiar. Minoan, perhaps? [paragraph break]  [keywaiting]
The logodiarrhoea catches you off guard, and as you struggle to process the garbled speech, the wisp extends a tendril of faint light to rest on your shoulder. A question, popping up in your head. [paragraph break]" ; [verbal deluge maybe, instead of word diarrhoea..]
	wait for any key;
	execute JavaScript command "return prompt('Who am i?')";
	let name be the text returned by the JavaScript command;
	 let N be "[the topic understood]";
	replace the text "'" in name with "";
	now the nickname of the wisp is "[name]";
	now the wisp is proper-named;
	if  "[nickname of the wisp]" exactly matches the text "[truename of the wisp]":
		say "How did you know? ";
		now printed name of the wisp is name;
	otherwise:
		say "[line break]The odd sensation clears quickly, but now you notice that its words are starting to make sense.  [keywaiting]  [paragraph break ]";
		center ". . .";
		say " 'For [italic type] ages..![roman type] Are you okay? I've never seen anyone [italic type] asleep [roman type] in the underworld, at least so serenely..  [keywaiting] [line break]    And for so long! [keywaiting] [line break]      And having vomited up so much water..!'  [keywaiting] [line break] Its voice carries a distinct tone of mingled concern , curiosity, and perhaps, slight amusement.  [keywaiting] [line break]  "; 
		now the nickname of the wisp is "Wisp";
		now the printed name of the wisp is "Odd Wisp";
		now the wisp is followerlike;
		try talking to the wisp instead.

[
EDIT elaborate]
	[now the wisp is female; fix this later on EDIT]
	
To say keywaiting:
	wait for any key instead.

Before examining yourself for the first time:
	increment  anamnesis of the player;

[actions in ide]




Chapter 2 "Lethe"



The tutorialarea is a room in Lethe. The printed name of tutorialarea is "Peaceful Grove". The tutorialarea is north of the caveoutskirts. Understand "Peaceful Grove" or "Grove" as tutorialarea. The description of tutorialarea is "[if unvisited]  [end if] Peaceful. Expanses of trees that [one of] seem almost familiar [or] whose names escape you [at random]populate your surroundings, their leaves casting striated [shadowlink] on the soft, grassy floor. Blurred forms flit among the branches, their hazy outlines suggesting the presence of [birdlink] or other, elusive creatures. [paragraph break] [keywaiting] Life, or some measure of it, seems to persist even in this enigmatic realm, though the realisation raises more questions than it answers. ". 


After looking for the second time :
	if the location is tutorialarea:
		place an  image "Peaceful_grove.png" with the description "You see a beautiful picture." , centered;

[EDIT Add links to shadows for the sun, which further links to the actua lsun and sky, which links finally to hades' castle, sort the below text]
Shadows is scenery. Shadows is here. "Shadows would imply something that casts them; Indeed so, your gaze travels upwards, fixating primarily on the sun. The sun in the.. [skylink] ? Does the flaming chariot sink in the underworld when the mortals seek Hypnos[apostrophe] tender embrace?".
Sunscen is scenery. Sunscen is here. "Bedecked with all the stars that have guided you and your brothers in the Argo, and many, many more. It’s the same sky you know, yet one you struggle to comprehend. As you strain your eyes, you realise that your eyesight is sharper than ever. Maybe because of that, you spot an odd discrepancy, right under a cloud of gold; A magnificent [Castlelink] , floating in the starry canvas. Is that.. the residence of a god..?".
Hades' Castle is in the tutorialarea. 
Limbic sun is in the tutorialarea.
Yourself is here.

Before going from tutorialarea to caveoutskirts for the first time:
	enable the napshappen quip for wisp.

The scent of the tutorialarea is "You take a deep breath, trying to steady yourself after your rude awakening. [line break]
Grassy with notes of lavender. Fairly pleasant, if not soothing.".

The sound of the tutorialarea is "There is a faint breeze that rustles the needle-like leaves in swaying patterns. Even in the underworld, the gentle winds of Zephyrus bring repose." 

Shadowlink is an action applying to nothing.

skylink is an action applying to nothing.

Castlelink is an action applying to nothing. 

To say shadowlink:
   place a link to command "x shadows" called "shadowexamine" reading "shadows"

To say skylink:
   place a link to command "x sunscen" called "sunscenview" reading "sky"

To say castlelink:
   place a link to the command "x Hades[apostrophe] Castle" called "castleview" reading "castle"; 

Understand "shadows" or "shadow" as shadows when the player is in the tutorialarea.
Understand "sky" as sunscen.
Understand "castle" as hades' castle when the player is in the tutorialarea.
Understand "bird" or "birds" or "creatures" as Birdnanimals.


Carry out shadowlink:
	 try examining shadows.

Carry out skylink:
	   try examining sunscen;	
	

Carry out castlelink:
	  try examining Hades’ Castle instead;
	change the text of the player's previous command to "x castle".

Birdlink is an action applying to nothing.

To say birdlink:
	place a link to command "birds".
	
Carry out birdlink:
	try examining birdnanimals.
	
Understand "birds" as birdlink.
	
Birdnanimals is scenery in the tutorialarea. "While your eyesight was never as sharp as hers, you at least are confident in your ability to spot and discern όρνεα and other fauna. Yet these shapes are odd to you, utterly foreign. As if you struggle to tell apart one kind of fowl from the other, as if the concept itself is warped into a single entity."


		




Part of the wisp declarations

The wisp is a neuter animal in the tutorialarea. The description of the wisp is  "It floats about aimlessly, babbling to itself."
The wisp can be followerlike or not followerlike. The wisp is followerlike. The wisp has some text called the nickname. The wisp has some text called the truename. Understand the truename property as describing the wisp. The truename of the wisp is "Phaedra".
The nickname of the wisp is "Fos". Understand the nickname property as describing the wisp. The indefinite article of the wisp is "a".The litany of wisp is the Table of wisp Conversation. 

Rule for printing the name of the wisp when the nickname of the wisp is not "nothing":
	say "[nickname of the wisp]"
	
Rule for printing the name of the wisp when the nickname of the wisp is not "[truename of the wisp]":
	say "[nickname of the wisp]".
	
seenher is a truth state that varies. Seenher is false.


Instead of examining the wisp:
	if the nickname matches the text truename of the wisp:
		say "(This isn't quite implemented, but i appreciate the replay! I'd love your feedback at stygiandreams@hotmail.com )";
	otherwise if seenher is true:
		say "Phaedra is as gorgeous as you remember her to be. Blue eyes and hair streaked with silver, the creases around her eyes making her gaze all the more piercing, at the moment.";
		place an image "Phaedra.png" with the description "You see her.", centered;
	otherwise:
		say "'What? Never seen an incorporeal ball of pure delight before?' the wisp scoffs as it catches sight of your scrutinous gaze.";
			


Every turn while the wisp is followerlike:
	let pth be the best route from the location of the wisp to the location of the player;
	if pth is not nothing: 
		try silently wisp going pth.
		
Check going from the tutorialarea to the caveoutskirts:
	if firstrep is false: [first reply to the wisp]
		now the quiptext of wispgreet is "".

Instead of going from the tutorialarea to the caveoutskirts:
	if firstrep is false: [first reply to the wisp]
		say " 'Hey!' The wisp flies in front of your face, momentarily blinding you. Rubbing your eyes you take a step back, as it huffs in disbelief. 'It's one thing to ignore me, but outright walk [italic type]away?[roman type] That's just plain rude!"; [add rude func]
		enable the firstrepsorry quip for wisp;
		disable the nvm quip;
		try wispconvoing instead;
		now the quiptext of wispgreet is basewispgreet;
		now firstrep is true;
	otherwise:
		continue the action.

	
Check talking to wisp when the location is tutorialarea:
	if firstnothing is true:
		now the quiptext of wispgreet is "Seeing you try to open your mouth, the wisp interrupts you momentarily in turn. 
'Oh, so [italic type]now[roman type] you want to talk. Okay, i'm listening.'";
	if caveoutskirts is familiar:
		now the quiptext of wispgreet is basewispgreet.
	


[
		
Instead of asking the wisp about "the grove", say "'Oh, [if the player is in the tutorialarea]this place[otherwise]that place[end if] ? [wispconvoing]'"

Instead of asking the wisp about "itself", say "TOADD HERE'"

Instead of telling the wisp about "yourself", say "'TOADD HERE'."

Understand "yourself" as yourself.

The greeting of yourself is selftalk.

Groveask is a truth state that varies. Groveask is false.

}]


serwisp is a truth state that varies. serwisp is false.

Before quipping when the current quip is nvm (this is the cheery wisp rule):
	say "[if serwisp is false] [one of]The wisp shifts its attention from you, back to your surroundings. [line break] [or] 'Okay then!' Just like that Fos seems to lose interest in you. [or] 'Happens to me all the time! Just, you know. Poof, gone! No thoughts' [as decreasingly likely outcomes][end if]"



The greeting of wisp is wispgreet.

Table of Quip Texts (continued)
	quip		quiptext
	selftalk		"The first sign of madness, just like your grandfather-king."
	whoareyou	"[line break] [thenwhoquip]"
	whatareyou	"'Rude! Hardly a [italic type]what[roman  type], more like a [italic  type]who![roman  type]. "
	whyhelp	" [line break] 'Boredom, for one! That and because of you pitiful you look.'"
	undwhat	"The wisp remains cryptically silent at your question. You can't shake the feeling that it's not by choice."
	saynothing	""
	xyzzy		"What's the other magic word?"
	nvm			""
	wispgreet	" "
	firstrepsorry	"'I mean who does that?' [line break] The ball of light scoffs, or at least, that is what the following sound that escapes it sounds to you. '..But i suppose it's fine. This isn't exactly a place where being polite is common..'"
	thenwho		"[line break] [thenwhoquip]"
	yespitiful		"Your reply seems instinctual almost, as if you're struggling to connect with your own emotions. The disbelief is palpable, though the wisp seems to take no consideration of your.. feelings. [paragraph break] 'Honey-coated words are not going to change the truth!' [paragraph break] [keywaiting]While almost insulting, its words are.. refreshing, to your overpraised ears. For all you know it could be a messenger of Hermes, the god taking pity on you. For the time, and until proven otherwise, perhaps it would be prudent to follow this.. being. [paragraph break] [keywaiting]"
	

Basewispgreet is a text variable. Basewispgreet is "[line break]  The wisp perks up as you shift your attention to it. [one of] 'Yep?' [or] 'Yes?' [or] 'I'm listening.' [or] 'Hmm?' [then at random].[line break]".


Table of Quip Followups (continued)
quip	option	result
whyhelp	"Pitiful?!"	yespitiful

After quipping when the current quip is yespitiful:
	terminate the conversation;
	display tooltip "Try LOOK!" on the prompt;
	hide the tooltip after 3 seconds; 



To say thenwhoquip:
	say "'An incorporeal ball of light, obviously..! No, really, i well, don't quite have a name, past nature, as it stands. Like.. ah.' [paragraph break] [keywaiting]There is a small pause, one that lingers for a breath.[line break] [keywaiting]
'Φῶς! (Fos)'[line break] [keywaiting]You blink in slight confusion. Light..? Despite your continued puzzlement with this creature, it continues talking unabashed.[line break] [keywaiting]
 'Still, you look a bit.. lost. I can help you get, you know. Not lost!'" instead.


[
Before talking to the wisp for the second time:
	if firstnothing is true:
		now the quiptext of wispgreet is "Seeing you try to open your mouth, the wisp interrupts you momentarily in turn. 
'Oh, so [italic type]now[roman type] you want to talk. Okay, i'm listening.'";	
]


			
	

Table of wisp Conversation
prompt	response	enabled
"Who are you?"	whoareyou	1
"What are you?"	whatareyou	1
"Why would you help me?"	whyhelp	0
"Say nothing."	saynothing	1
"Sorry.."	firstrepsorry	0
"Understand what?"	undwhat	0
"Nevermind."	nvm	0
"Well then, [italic type]who[roman type] are you?"	thenwho	0



[EDIT FIX]



Instead of doing something other than firstconvoing when the firstconvoflag is false:
	try firstconvoing instead.
	
Wispconvoing is an action applying to nothing.
[latibulating]

Wispconvoingstrictly is an action applying to nothing.

	
	
	[
Check talking to someone else:		[implement better conversatiopn pathing]
	say "aa".}]



Instead of talking to someone when RQ is active:
	say "kind of rude aren't you?".


Table of Ask Results (continued)
NPC	topic	result
wisp	"weather" or "nice day"	discuss weather	
wisp	"itself"	aboutwisp

Table of Tell Results (continued)
NPC	topic	result
wisp	"hi/hello"	greet
Amelia	"hi/hello"	greeta

[unused atm]
Before asking someone about something:
	now the interlocutor is "[noun]";
	now the middle Vorple status line is "Talking to: [interlocutor]";
			
Before telling someone about something:
	now the interlocutor is "[noun]";
	now the middle Vorple status line is "Talking to: [interlocutor]";
	
After asking someone about something:
	now the interlocutor is "[noun]";
	now the right hand Vorple status line is "".
	
After telling someone about something:
	now the interlocutor is "[noun]";
	now the right hand Vorple status line is "".
	



Understand "itself" as the wisp when the wisp is in the location.

After talking to the wisp for the first time:
	display tooltip "Type LOOK (or l) to look- Examine (or x) is also useful. REPEAT repeats the current dialogue options" on the prompt;
	hide the tooltip after 3 seconds;



[EXPAND ON CONVERSATION OPTIONS FURTHER ON, KEEP BUILDING ON   φῶς]

firstnothing is a truth state that varies. firstnothing is false.
firstrep is a truth state that varies. firstrep is false. 
Nocomment is a number that varies. Nocomment is usually 0.
Forgetfullness is a number that varies. Forgetfullness is usually 0.
Rudeindicator is a number that varies. Rudeindicator is usually 0.

After quipping when the current quip is whoareyou:
	change the text of the player's previous command to "Who are you?";
		now the printed name of the wisp is "Φῶς";
		construct a Vorple status line with 2 columns;
		now firstrep is true;
		enable the whyhelp quip;
		disable the whatareyou quip;
		disable the saynothing quip;
		enable the nvm quip;			[TOADD implement the whole, pop only if talked to]
	After quipping when the current quip is whatareyou:
		change the text of the player's previous command to "What are you?";
		now firstrep is true;
		disable the saynothing quip;	
		disable the whoareyou quip;
		disable the whyhelp quip;
		disable the undwhat quip;
		disable the nvm quip;
		enable the thenwho quip;		
		enable the nvm quip;
	After quipping when the current quip is undwhat:
		change the text of the player's previous command to "Understand what?";
		disable the whoareyou quip;
		disable the whatareyou quip;
		disable the undwhat quip;
		display a notification reading "Try to LOOK or l to see your surroundings." for 5 seconds; 
		now the interlocutor is "";
		terminate the conversation.
	After quipping when the current quip is saynothing and nocomment is 0:
		change the text of the player's previous command to "Say Nothing.";
		enable the nvm quip;
		say "'Uhm. Hi?' The wisp sounds puzzled by your lack of reply, but doesn't press the matter further. [line break]";
		display tooltip "You can write Talk to wisp to talk to the odd entity again." on the prompt;
		increase nocomment by 1;
		now firstnothing is true;
		increase rudeindicator by 1; [deprecated, look into TODO]
		now the interlocutor is "";
		try silently looking;
		terminate the conversation.
	After quipping when the current quip is nvm and firstnothing is true:
		change the text of the player's previous command to "Nevermind.";
		increase Forgetfullness by 1;
		enable the nvm quip;
		now the interlocutor is "";
		try silently looking;
		terminate the conversation.
	After quipping when the current quip is nvm and firstnothing is false:
		change the text of the player's previous command to "Nevermind";
		increase Forgetfullness by 1;
		enable the nvm quip;
		now the interlocutor is "";
		try silently looking;
		terminate the conversation.
	After quipping when the current quip is whyhelp:
		change the text of the player's previous command to "Why would you help me?".
After quipping when the current quip is thenwho:
	change the text of the player's previous command to "Well then, [italic type]who[roman type] are you?";
	now the printed name of the wisp is "Φῶς";
	construct a Vorple status line with 2 columns;
		now firstrep is true;
		enable the whyhelp quip;
		disable the whatareyou quip;
		disable the saynothing quip;
		enable the nvm quip;	
	After quipping when the current quip is firstrepsorry:
		change the text of the player's previous command to "You mutter an apology, that catches even yourself by surprise. When was the last time you had shown anyone as much courtesy?".
	

[now the interlocutor is nothing;]

[
Instead of touching the wisp for the first time: [elaborate here a bit] - points of self realisation? 
	 }]
	

Report touching the wisp:
	instead say "Not quite sure what you expected, but your hand passes through the being harmlessly. [paragraph break] 'Hey! That was uncalled for..!'".

	
Carry out touching the wisp for the first time:
	increment anamnesis of the player.

Report touching the wisp for the first time:
	instead say "As you move to touch the being, you are instead ,stopped in your tracks by.. your own arm. [italic type] your[roman type] arm, with its familiar scars and unique markings, feels both foreign and intimate at the same time.  Transfixed, you momentarily forget what you were doing as the weight of your physical presence dawns on you.";

[
Notmove is a number that varies.}]

[maybe add a uqip check after conversation is done to give popup]
		
Section 3 - Dialogue EFFECTS
	
[
	After quipping when the current quip is hate-you: end the story saying "You have died".}]
	
musingtext is a truth state that varies. musingtext is false.


Yourself has some text called the faraway response. The faraway response of yourself is "text.." [unimplemented it just gives errors]

After going from the tutorialarea to caveoutskirts:
	if musingtext is false:
		say "You slowly move to exit the grove, and rather simply, almost surprisingly so, you start to roam the inner reaches of the underworld. [keywaiting] [paragraph break]
Orpheus[apostrophe] lamentations of his own journey through these dark realms had seemed dramatic to you. But as you inhale air as crisp as that from the highest mountain tops, while simultaneously feeling a pervasive dread of something being fundamentally wrong, you start to wonder if perhaps the poet with a penchant for tragedies was not exaggerating after all.
[keywaiting] [paragraph break]
Heracles[apostrophe] experience of the underworld was also different. To him, it seemed almost trivial; but then again, what else could be expected from the half-divine son of thunder? [paragraph break] [keywaiting]Your musings are interrupted by the faint trembling of your newfound companion's light.[paragraph break] [keywaiting]
The wisp appears somewhat nervous, or at least, that's the impression you gather from its tone. 'Don't stray too far now. This is a god's domain. We should keep moving and do so swiftly. [napon]' "; 
		display tooltip "Click on links to follow an action, or TALK TO Fos, to learn more about the cave." on the prompt;
		say paragraph break;
		wait for any key;
		enable the nvm quip;
		now musingtext is true;
		try silently looking;
	otherwise:
		say "You make your way from the grove to the cave of divine slumber, teeth unconsciously clenched."
		
relaxing_teeth is an action applying to nothing.
		
Understand "relax teeth" or "relax your teeth" or "relax my teeth" as relaxing_teeth.

Instead of relaxing_teeth:
	say "Though successful at first, you soon realise that it's a pointless effort to set yourself at ease in such a fashion. The situation itself is anything but relaxing.";
	

To say napon:
	enable the napshappen quip for wisp.
	


After quipping when the current quip is napshappen:
	now the printed name of caveoutskirts is "Entrance to Hypnos' Cave"



Part continuum


[TOADD maybe give a pouch with rations, water?]


Table of wisp Conversation (continued)
prompt	response	enabled
"What can you tell me about the cave?"	napshappen	0




Table of Quip Texts (continued)
quip	quiptext
napshappen	"'Well, it's a cave.. ' The wisp starts and stops, realising that there's only so much vagueness one can tolerate. 
'The great dreamer, Hypnos, is susceptible to nightmares and restless slumber. He experiences the dreams and the nightmares of all mortals, and it can be quite overwhelming. To find solace and maintain a peaceful rest, he relies on the soothing murmur of the river that flows underground. It's a delicate balance, ensuring he remains asleep and undisturbed, while the dreams of mortals continue uninterrupted.'" 



Caveoutskirts is a room in Lethe. "The yawning maw of a cave is visible from where you stand. A thick stream of pungent, herbal smoke emanates from the granite fangs that adorn the upper lip of the entrance. A field of  [fieldlinking] that covers the entrance further alludes to the visual of a sleeping beast. ".
The printed name of caveoutskirts is "Entrance to Unknown Cave".
The scent of caveoutskirts is "[if flowerflag is false] Heavy, oddly familiar. You can not quite place the herbal, yet acidic overtone. [otherwise] Opium and hemp, both in obscene amounts." [EDIT, add links to flowers, that links to flower]
Hades' Castle is in the Caveoutskirts. 
Limbic sun is in the Caveoutskirts.

Skyback is a faraway backdrop. Skyback is here. 

Understand "sky" as skyback. 
The description of skyback is "As the unsettling beauty of the starlit sky continues to weigh upon your mind, you are left to ponder the nature of the underworld and the countless mysteries that remain hidden within its shadowy depths. The strange and haunting presence of the stars serves as a constant reminder that the world you now traverse is far,far removed from the realm of the living, a place where the familiar and the fantastical blur the boundaries of reality and cast doubts on your understanding of its inner workings." 


Poppyfield is scenery in the caveoutskirts. Understand "flowers" or "field" as poppyfield."The poppy field lies unnaturally still, a sea of delicate, blood-red blooms that stretch as far as the eye can see. [line break] It is a sight of unsettling beauty, a sanctuary of frail peace that seems jarring when placed against the backdrop.[line break] Some of the flowers stand tall and proud, crowned with a vibrant blossom, while others lay with their fruit exposed, hunched over and bleeding, like a warrior struck. A particular [twinlinking], catches your attention; Bearing two pistils, one bearing its fruit and the other a crown of vibrant red."

Hypnos' cave is scenery in the caveoutskirts. Understand "cave" as Hypnos' cave. The description of Hypnos' cave is "Stalactites and stalagmites, dwarfing even the cyclopean walls, adorn the entrance to the cave. The smoke seems to pour endless from within, turning the air thick and pungent."

The sound of caveoutskirts is "A low, constant thrum below your feet would indicate an underground body of water. Judging from the size, it might very well be a river. The sound is soothing, if not outright sleep inducing." 	[add fog wall]

Twin-headed poppy is a part of the poppyfield. Understand "double" or "pistils" or "flower" or "particular" as twin-headed poppy. 
The description of the twin-headed poppy is "Two beings rising from one stem; One carved by a careless hand, bled for its worth. The other flawless, unwitting of its eventual fate."  [EDIT add links, points, elaboration on castor and pollux.]

Instead of taking the twin-headed poppy, say "You grasp the flower and it melts into your hand, much like salt meeting water, the liquid blood red as it drips from your palm, staining the ground. ". [TODO ]	

fieldlinking is an action applying to nothing.

twinlinking is an action applying to nothing.

Understand "Red Flowers" or "flowers" as fieldlinking when the player is in the caveoutskirts.

To say fieldlinking:
	place a link to the command "Red Flowers" called "redflowerlink" reading "Red Flowers"; 
	
Before examining poppyfield:
		place an  image "caveint.png"  with the description "You see a beautiful picture." , centered;

Carry out fieldlinking:
	try silently examining poppyfield instead.

Understand "flower" or "two pistils" or "examine flower" or "x flower"as twinlinking.	

flowerflag is a truth state that varies. flowerflag is false.

To say twinlinking:	
		place a link to the command "examine flower" called "redflowerlink" reading "flower".
		
Carry out twinlinking:
	now flowerflag is true;
	try silently examining Twin-headed poppy instead.



After going from caveoutskirts to Hypnoscave:
	try silently looking.

Hypnoscave is a room in Lethe. Hypnoscave is inside of caveoutskirts. "As you step into the interior of Hypnos[apostrophe] cave, you find yourself enveloped in a realm of shadows and serenity. The walls are lined with a myriad of softly glowing crystals, casting a gentle light that dances and flickers in the darkness. The air is heavy and still, carrying a faint scent of lavender and sandalwood, as if the fumes from the opium and hemp have disappeared. [keywaiting]

To the side and [downlink], a narrow path leads further alongside the cave, drawing you closer to the murmuring waters of the underground River Lethe. The soothing sound of the river grows louder as you approach, a lullaby that seems to call out to the weary and the lost.[keywaiting]".

The printed name of Hypnoscave is "Cave of Hypnos: Interior."


The scent of hypnoscave is "Earthy and faintly sweet. The air is much clearer than outside the cave. Disproportionately so."

The sound of hypnoscave is "The gentle purr of running water beneath you is calming, if not outright soporific."

Crystalsscen is faraway scenery. Crystalsscen is here. "Odd crystals in the shape of chiseled eyes dot the walls. For a moment, you think that they blink, the next, they seem little more than shiny rock." Crystalsscen has some text called the faraway response. The faraway response of crystalsscen is "You won't risk interacting with something so foreign to you in any way past looking at it."

Understand "crystal" or "crystals" as crystalsscen.





Downlink is an action applying to nothing.

To say downlink:
	place a link to command "down" called "downlink" reading "down"

After entering Hypnos' cave:
	say "The wisp's light trembles momentarily, as if the entity itself is trying to adjust against a particular challenge.

'Let's keep going, further down.' It starts to lead the way once more, fully expecting you to follow.'"


[todo add text for cave]






Carry out examining the Twin-headed poppy:
	now the Twin-headed poppy is familiar.

Carry out examining the caveoutskirts:
	now the printed name of caveoutskirts is "Entrance to the Cave of Hypnos."

After going from the caveoutskirts to the tutorialarea:
	say "You return back to the grove, trying to gather your bearings. [keywaiting]".


Instead of going from caveoutskirts to hypnoscave:
	if Ameliaconvodone is false:
		say "A strong sense of unease washes over you as you attempt to enter the unnerving cave. This doesn't seem wise. [line break] 
Seeing your hesitation, the wisp chirps up softly. 'Maybe.. we should go further [thatway]? There's other.. people there, of a sort."; 
	otherwise:
		continue the action.


thatway is an action applying to nothing.

To say thatway:
	place a link to the command "S" called "thatway" reading "that way"; 





Instead of entering Hypnos' cave:
	if Ameliaconvodone is false:
		say "A strong sense of unease washes over you as you attempt to enter the unnerving cave. This doesn't seem wise. [line break] 
Seeing your hesitation, the wisp chirps up softly. 'Maybe.. we should go further south? There's other.. people there, of a sort."; 
	otherwise:
		try going inside instead.


Southlink is an action applying to nothing.

To say southlink:
	place a link to the command "s" called "southlink" reading "that".
	


After going from caveoutskirts to Lethargos for the first time:
	say "You journey a fair distance, and yet, it's as if your bodily aches have vanished. [line break] [keywaiting] Not a trace of fatigue lingers within you, though thirst.. this starts to creep up on you. [line break] An understandable consequence of all the seawater you drank, but bothersome nonetheless. [paragraph break] You glance in front of you to your unlikely guide; It seems eager to lead the way, darting ahead to point out odd creatures of one shape or another. Discerning their true nature proves difficult, though not because of your eyes. Perhaps they're simply meant to be incomprehensible to mortal minds. [paragraph break]";
	wait for any key;
	try silently looking;
	
	

After looking when the location is Lethargos:
	place an  image "Lethargos.png" with the description "You see a beautiful picture." , centered;



	
A description-concealing rule:
		if the wisp is in the location, now the wisp is not marked for listing.




After examining something which is a part of the Poppyfield for the first time:
	say "You don't need much more to understand what the wounds on the flowers are. [keywaiting] Asclepius showed you how to refine opium, to ease the pain of the wounded. [line break] [keywaiting]
Which begets the question.. who is injured? "; [TODO]
	increment anamnesis of the player.

[
 Hades is here.




[
Every turn :
	if a random chance of 1 in 3 succeeds:
		say "[physstate of Longjohn]";
	if a random chance of 1 in 9 succeeds:
		now the physstate of Longjohn is ok;
		say "He chugged. [physstate of Longjohn]";
	if the physstate of Longjohn is thirsty:
		say "He wishes to sipp. [physstate of Longjohn]";
		if a random chance of 1 in 3 succeeds:
			now the physstate of Longjohn is hungry;
			say "and even snack, my word [physstate of Longjohn]".
}}]]




Instead of examining a person that is divine, say "[noun]'s divine radiance burns your eyes to a crisp."




	[TODO, MAYBE CLICKABLE LINKS FOR HTE DIRECTIONS UP ]
Check examining player :
	if Trueform is false:
		instead say "You were never all that bothered by your form, then or now. Clad in a chiton and zoster, with your chlamys pinned on the right shoulder, you could very well pass as nothing but one of many. Only your sandals being of the finest leather would imply a somewhat noteable background. ";
	otherwise:
		instead say "You recall the sight greeting you by the reflective waters. The initial transfixion, much like the forever-youth, with your own form. And the grim realisation that the proof before your eyes does not match your memories. Much like your father, your brow is creased with worries. Much like your mother, your eyes seem distant, unfocused.[paragraph break]
Despite all that you stand tall, proud, a form a figure shaped by the hardships of kingship and the weight of responsibility. Your form, that of a man at the twilight of his years, bears the marks of a seasoned warrior, with the scars of countless battles etched upon your skin. A noble bearing and a strong physique, tempered by age and experience, speak of a lifetime devoted to the protection of your people. Yet, even as a formidable ruler, the recent loss of your beloved wife  has left an indelible mark on your soul, a deep sorrow reflected in the somber gaze that meets your own in the still waters.".


After going from Lethargos to caveoutskirts:
	if Ameliaconvodone is true:
		clear the screen;
		disable the tired1 quip for wisp;
		disable the wherto quip for wisp;
		say "As you tread the path between Lethargos and the Cave of Hypnos, a sense of unease washes over you. Your memories, once vivid and clear, have begun to fade like a dissipating mist. [paragraph break] [keywaiting]The unsettling realization that your recollections are slipping away gnaws at your mind, despite not having tasted the waters of Lethe. 
[paragraph break] [keywaiting]The thought lingers, a persistent, nagging feeling of loss. [keywaiting]Could it be that the very air of the underworld seeps into your soul, stealing away the fragments of your past? [keywaiting]  With each step, you struggle to hold onto the memories that defined you, determined not to let them be swallowed by oblivion.[paragraph break] [keywaiting] ";
	otherwise:
		say "Rather uneventfully you make your way back to the cave of Hypnos, feeling vaguely as if you forgot something.  [paragraph break]";
	now the printed name of caveoutskirts is "Entrance to the cave of Hypnos.";
	try silently looking.


Part Halfway implementation of Lethe - lethargos

Lethargos is a room in Lethe. Lethargos is south of the caveoutskirts. "[if unvisited] A [villagelink]? Much like the fishing hamlets of your youth, only this one is populated by halfway-incorporeal, gaunt faced [Altlink]. They all seem to congregate around a particular building to the east, past their own 'houses'. [paragraph break]The wisp speaks up softly, its tone mild. 'Try not to disturb them, too much. This is Lethargos, and it's the permanent stop of many.'[otherwise]
 A [villagelink], as far as you understand it, or as your instincts want to tell you. Your eyes however see little but a congregation of lost [Soulscenerylink], eyes glazed with impassiveness.[end if] 
[paragraph break] A fair distance north, you still see the gargantuan maw of the Divine dwelling. [if Ameliaconvodone is true] To the east lies the Kapeleion, Amelia most likely distributing water inside. [otherwise] To the east is a building that seems almost ubiquitous, an odd realisation to have in the underworld. Most likely a drinking establishment of some sort. [end if]". Understand "village" as villagelink.  [TODO add image, mentions of maw for cave]
Hades' Castle is here.
Limbic sun is here.  [TODO add image]
Understand "sun" as Limbic sun.
Understand "Castle" as Hades' Castle.

The sound of Lethargos is "Muted conversations and other noises that you almost recognise reach you, but you can never quite get to the point of understanding them."

Soulsscenery is scenery. Soulsscenery is here. "The shades inhabiting Lethargos are a curious sight to behold, an amalgamation of mortal features and the inevitable decay of the soul. Their once-human visages have been distorted by the passage of time and the slow erosion of their essence. 

Faces that once held the spark of life now bear glazed eyes, staring listlessly into the void, a testament to the memories they have lost in their quest to forget their earthly ties. Skin, stretched and thin, reveals the ghostly, ethereal nature of their existence. Their movements, slow and deliberate, carry the weight of the relentless march of time, while the faintest echoes of their former selves flicker like dying embers within their hollow gazes. They are caught in an eternal limbo, a fragile balance between their mortal past and the immaterial world that now binds them."


Villageview is scenery. Villageview is here. "Lethargos, the village of forgotten memories, stands as a surreal testament to the passage of time and the blending of mortal and immortal realms. Its [structurelink], an amalgamation of styles from various civilisations, appear both intimately familiar and inexplicably foreign. "

Buildingview is scenery. Buildingview is here. "Buildings made of stone, wood, and other materials that defy conventional understanding stand side by side, their forms twisting and melding together in ways that challenge the very laws of nature, as if the materials themselves were imbued with the essence of the underworld. The walls seem to shimmer and shift, their surfaces occasionally appearing translucent, allowing ghostly glimpses of what lies beyond. Before long, it becomes increasingly difficult to determine where one structure ends and another begins, the buildings seemingly merging and separating with each passing moment." 


The scent of Lethargos is "Stale air and the faint smell of roasted fish- no. The idea disappears as soon as it pops in your head, logic fighting against instinct."

Cavescen is scenery. Cavescen is here. [add more for cavescen TOADD TODO ADD WISP TEXTS FIX FIX!!!! FIXX VILLAGELAG]

villagelink is an action applying to nothing.

Understand "village" or "Lethargos" as villageview when the player is in Lethargos.



structurelink is an action applying to nothing.

Understand "structures" or "buildings" as Buildingview when the player is in Lethargos.



To say villagelink:
	place a link to command "examine Lethargos" called "villageexamine" reading "village"

Carry out villagelink:
	try silently examining Villageview instead.

To say structurelink:
	place a link to command "examine structures" called "buildingexamine" reading "structures"

Carry out structurelink:
	try silently examining Buildingview instead.




Soulscenerylink is an action applying to nothing.

Altlink is an action applying to nothing.


	
To say Soulscenerylink:
	place a link to the command "x Soulsscenery" called "soulexamine" reading "souls"; 

	
	
To say Altlink:
	place a link to the command "x Soulsscenery" called "soulexamine" reading "beings"; 
	


	


[RECHECK]

	
Understand "souls" or "shadows" or "beings" as Soulsscenery when the player is in Lethargos.



After going from lethargos to infrontofkapeleio:
	try silently looking.
	

After going from infrontofkapeleio to Kapeleion:
	try silently looking.
	




Kapeleioscen is faraway scenery. "[if Ameliaconvodone is true] You can't quite see much more as to what it is, past it being a building. [otherwise] The kapeleion stands alone in the center of the village, the only building you can attach a name to. [end if]."
Cavescen is faraway scenery. Understand "cave" or "maw" as cavescen. "The jagged teeth are still visible even in this distance, though the red flowers are gone from your sight. Curious." 






InfrontofKapeleio is a room in Lethe. InfrontofKapeleio is east of Lethargos. "An unassuming building, wrought of mudbrick  with large, round window-frames, that while unbarred, somehow reveal nothing from within. A pool of water rests by the side of the building, a [sculptlink] at its centerpiece. It seems to be fenced off, for one reason or another. ". The printed name of infrontofKapeleio is "[if Amelia is unfamiliar ] Building Entrance [otherwise] Entrance to the Kapeleio [end if]"

Buildingscen is scenery. Buildingscen is fixed in place. The description of buildingscen is "Unassuming, if too much so."

Understand "building" as Buildingscen.

Sculptlink is an action applying to nothing.

To say sculptlink:
	place a link to command "sculpture".
	
Carry out sculptlink:
	try examining lethesculpture;
	

After examining lethesculpture:
	place an  image "sculpture.png" with the description "You see a beautiful picture." , centered.

Understand "sculpture" as sculptlink.

Lethesculpture is scenery in InfrontofKapeleio. "At the center of the pond stands a female-figured sculpture, exquisitely crafted with such skill that for a breath, you believe her to be alive. It wouldn't be the first time you've heard of such a feat, after all.[keywaiting]Tears stream from her closed eyes, spilling into her cupped hands before trickling through the crevices between her marble fingers and spattering along her himation. [paragraph break] The water itself is milky and muddled, and a few [flowerblue] flowers drift serenely on its surface. A delicate fence of interwoven roots encircles the pond, separating it from the rest of the village. Strangely, the fence seems unnecessary – despite the fact that all the shades you've encountered congregate around this building, you have yet to see anyone enter or leave its premises." [TODO elaborate add image - give points]

Flowerscenblue is scenery. Flowerscenblue is here. "Floating gracefully on the milky surface of the pond, the blue lotuses stand out as ethereal jewels against the muted backdrop. Their petals are a brilliant shade of azure, fading gently into a lighter hue at the edges, veined with delicate streaks of indigo, creating a mesmerizing pattern. Despite their fragile appearance, the lotuses exude an air of serenity and strength, as if defying - or perhaps shaping, the very essence of the underworld in which they thrive."

Fence is scenery. Fence is here."A simple woven fence."

Instead of touching Lethesculpture, say "You can't quite reach past the fence to do so."

Instead of touching or taking Fence, say "It must be here for a reason. And you don't have the time to solve its mysteries."

Before eating an inedible thing:
	say "Eating random items in the underworld would be a strikingly [italic type]bad[roman type] idea." instead.

flowerblue is an action applying to nothing.

To say flowerblue:
	place a link to the command "examine flowers" called "lotuslink" reading "blue"; 
	
Carry out flowerblue:
	try examining flowerscenblue instead;
	
After examining flowerscenblue:
	place an  image "Lotoi.png" with the description "You see a beautiful picture." , centered.


Understand "blue" or "flower" or "flowers" as flowerscenblue when the player is in InfrontofKapeleio.



Understand "sculpture" or "statue" as Lethesculpture when the player is in InfrontofKapeleio.

Kapeleion is a room in Lethe. Kapeleion is inside of InfrontofKapeleio. Understand "tavern" or "bar" or "watering hole" as Kapeleion. "[if unvisited]As you enter a myriad of scents rushes to you, if only for a brief moment.[line break] Barley,[keywaiting]wine,[keywaiting]milk,[keywaiting]and honey[keywaiting] mix and intertwine, creating an atmosphere of comfort and familiarity. [paragraph break] [keywaiting] Yet, as your eyes adjust to the shift in light, you realize that every one of the [shadecustomlink] is drinking water. Only water.[paragraph break] [keywaiting] [end if] The building itself is a peculiar mix of the mundane and the otherworldly. Its wooden beams and stone walls seem to have been taken from a tavern in the mortal world, but the flickering shadows cast by the dim light dance with an eerie grace, as if alive. [paragraph break] [keywaiting] The tables and benches, crafted from a material you cannot quite identify, seem to defy the natural order, melding seamlessly into the floor and walls. The patrons, all shades in various stages of decay, sit in silence, their glazed eyes staring blankly at their [cantharlink] of water. [paragraph break] 
[if Amelia is unknown]A woman with her himation worn as a cloak stands by several hydriai of water. [otherwise] Amelia is here, with her himation still worn as a cloak. [end if] [if ameliaconvodone is false]
She turns to look at you as you enter, the only one to react despite the several other patrons.Though her face is mostly obscured by the himation, her eyes are piercing. As her gaze lingers on you, as if she knows you, or perhaps as if she knows something about you that you have yet to discover, you find yourself compelled to [ameliatalk] to her. [end if]". [TODO] 
Understand "Barmaid" or "Tavern Keeper" or "Hostess" or "Wench" or "her" as  Amelia.

Ameliatalk is an action applying to nothing.

Understand "patrons" or "customers" or "shades" as shadecustomers.

shadcustomlink is an action applying to nothing.

To say shadecustomlink:
	place a link to the command "examine patrons" called "shadeexamnie" reading "patrons";
	 
Before examining shadecustomers:
	place an image "patrons.png"  with the description "You see the orb.", centered.

To say ameliatalk:
	place a link to the command "talk to her" called "ameliaconversationstart" reading "talk"; 
	
	[TODO CONFIRM THIS WORKS AS INTENDED]
Before talking to Amelia:
	say "As you gather the wits to talk to her, your wisp companion turns half a shade duller in glow, as if trying to however little mask its presence. [paragraph break][keywaiting]A seemingly pointless act, as no-one else seems to have bothered noticing your existence. [paragraph break]
The woman shifts her attention to you, as if somehow having understood your intentions.";
place an image "Amelia.png" with the description "You see Amelia.", centered.

The scent of Kapeleion is "Whatever you might have smelled at first, is now gone. If anything, the utter lack of any scent feels almost stiffling."

The sound of Kapeleion is "A mixture of painfully silent and noisy in a way that gets under your skin. You pick up conversations between Achaeans and Trojans, as well as monologues of inconsolable souls."

Shadecustomers are scenery. They are here. Understand "patrons" or "shades" as shadecustomers when the location is the Kapeleion.
The description of the shadecustomers is "Gaunt faced and vaguely pallid, none of them seem to acknowledge your existence, much less your presence. Not even your fairly unusual companion seems to garner their interest. "

Instead of talking to shadecustomers, say "As you attempt to engage with the shades, your words seem to fall on deaf ears, as if they were swallowed up by the imperceivable veil that separates you from them. Your own voice echoes back to you, mocking the futility of your efforts.".



Before approaching a room (called the gotoloc):
	if the gotoloc is not unvisited:
		say "Going to [gotoloc]".

	

PART CHARACTER AMELIA

Amelia is a shade woman. She is here. The litany of Amelia is the Table of Amelia Conversation. The greeting of Amelia is ameliagreet. The printed name of Amelia is "Tavern Keeper." The description of Amelia is "Amelia's appearance stands out amongst the other shades. A woman whose age is difficult to discern, her features have a sculpted, timeless quality to them. Where the other shades appear as mere echoes of their mortal selves, their essence visibly diminished, if not  translucent, Amelia looks strikingly... normal. Her presence exudes a sense of vitality and solidity that is absent in the other inhabitants of Lethargos."


Ameliaconvodone is a truth state that varies. Ameliaconvodone is false.

Ghostly is a Vorple style.

Every turn when the location is the Kapeleion :
	if a random chance of 1 in 25 succeeds:
		say "[line break][Ghostly style]  Soft murmuring fills the deathly still air. [end style][paragraph break]";
	otherwise:
		if a random chance of 1 in 30 succeeds:
			say "[line break] [Ghostly style] 'How could the Achaeans take Troy?' Somewhere you pick up a mumbled lamentation of disbelief.  [end style][paragraph break]".



After examining Amelia:
	say "She seems to catch onto your scrutinising gaze, speaking up. 'Water?'"

Understand "t [something]" as a mistake ("(Try Talking To the person instead)")


Table of Amelia Conversation
prompt	response	enabled
"Who are you?"	whoareyouAmelia	1
"I'm looking for...[run paragraph on]"	lookingfor	0
"What is this place?"	wplaceAmelia	1
"I can't seem to remember.."	cantremembAm	0
"What is there to drink?"	drinks	1
"That would be all."	thassit	0
"What can you tell me about 'Φῶς?"	aboutwisp	0
"The cyclus..?"	aboutcyclus	0
"Why would you tell me all of this?"	whytell	0


After quipping when the current quip is cantremembAm:
	change the text of the player's previous command to "I can't seem to remember.."

[followup texts]

[cantharoi place an inline element called "secret" reading "a mysterious box";]

canatrlink is an action applying to nothing.

To say cantharlink:
	 place an inline element called "cantharoilink" reading "cantharoi";
	attach a tooltip "Cantharoi, plural of cantharus. A large two-handled drinking vessel." on the element called "cantharoilink";
	display tooltip "If you see underlined text, try hovering over it for a definition." on the prompt;
	hide the tooltip after 3 seconds;
	
Table of Quip Texts (continued)
quip	quiptext
whoareyouAmelia	"The woman shifts her attention to you fully, after the question. 'Those that come here don't seek knowledge, they're here to lose what is left. But if you really do wish to learn, even here.. my name's Amelia.'"
lookingfor	"The next words that leave your mouth are warbled, as you yourself struggle to understand them. Amelia doesn't seem to react to it; As if she understands your meaning, past your wording. [keywaiting][paragraph break] 'Ah.. i doubt you will find [italic type] her [roman type] here. The first passage for a roaming soul is Acheron, and you have started the cyclus in the middle.'"
wplaceAmelia	"'The Kapeleion, it's on the board.'  [line break] [keywaiting] She pauses for a moment, as if expecting something from you. A nervous teeter of a chuckle from the wisp somewhere behind you indicates that she might have meant it as a joke; You recall the scribbles on the entrance to the place. Carved mud brick, yet not compromising the integrity of the actual structure. You'd be impresed, had it been any other situation.  [keywaiting] [paragraph break] Her delivery was deadpan, and the humor wasn't exactly obvious. 'Where the recently dead congregate, after passing Acheron. Drinking will erase their memories, but some find too much much solace in that oblivion. They..' Her gaze shifts over to a small group of old men, hunched over their [cantharlink]. [paragraph break][keywaiting] 
'One might see wine, the other kykeon. Whatever it is that they feel would quench their thirst.' [paragraph break] [keywaiting] 
All you see is water. In every cup. Just water.   [paragraph break]
'Whatever it is that you are doing here, mortal, or however you got here. You should not have; There's nothing to gain. Only to lose.'" [add explantory note]
cantremembAm	"[line break]'That is the purpose of this place, after all. If you're trying to find, and not to lose, there's nothing for you here."		[add wisp flavors]
drinks	"The woman seems to be struggling to either not belittle or look at you with sheer disbelief. 'Water'."
nowine	"'No, no wine.'"
nonotthat	"'That is also a wine. So no.'"
ameliagreet	"[one of] 'Water?' [or] 'Need something?' [or] She looks at you, gaze somewhere between expectant and tolerant. [as decreasingly likely outcomes] "
thassit	"Amelia gazes at you with an expression that's difficult to read. There's a hint of pity in her eyes, and it stirs something deep within you - a surge of anger and frustration. How dare she look at you as if you're helpless, a defenseless lamb in a world full of predators? [paragraph break] [keywaiting]Just as you're about to confront this sudden emotion, your luminescent companion swiftly darts in front of your face, momentarily blinding you with its light. The distraction is enough to temper the anger, but it lingers beneath the surface, a reminder of the faint vulnerability that has bore in your chest.. [keywaiting]"
discuss weather	"aaawet"
greet	"aaagreet"
greeta	"greetatest"
aboutwisp	"[aboutwisptext]"
aboutcyclus	"[aboutcyclustext]"
whytell	"'Because regardless of your future, you will not remember any of it.' [line break] "

After quipping when the current quip is aboutcyclus:
	enable the whytell quip;
	change the text of the player's command to "Why would you tell me all of this?";

After quipping when the current quip is lookingfor:
	change the text of the player's command to "I'm looking for - [run paragraph on]";
	enable the aboutcyclus quip;
	



aboutwisptext is some text that varies. The aboutwisptext is "''Φῶς?' Amelia's impassive expression shifts ever so slightly towards the wisp behind you, allowing for a small pause of consideration. [line break] 'Nothing.'"


Aboutcyclustext is some text that varies. The aboutcyclustext is "Amelia leans in closer, her voice taking on a hushed tone.  'The -cyclus- I mentioned is a complex process of purification for the psyche, the mortal soul. It all begins at Acheron, the river of healing. That's where the souls are brought to start their journey, and where Charon ferries the ones that are remembered across his waters. The truly righteous one are moved to the fields of Elysium - the unrepentant sinners, to Tartarus. Yet the vast majority, mortal and flawed, they are moved to Lethe, the river of forgetfulness. Here, they drink its waters to erase their memories of their past lives, allowing them to start anew.' [paragraph break] [keywaiting]
She pauses for a moment, allowing her words to sink in. 'Next, they travel to the River Styx, where they undergo a process of purification. The waters of Styx serve to cleanse the souls of any lingering attachments, cleaning the slate.' [paragraph break] [keywaiting]
Her gaze drifts away as she continues, 'After purification, the souls venture to Cocytus, the river of lamentation, and Phlegethon, the river of fire. It is here that they are challenged to confront and relinquish their earthly attachments, desires, and emotions. These trials test the souls' resolve to move forward and become detached from their past lives.' [paragraph break] [keywaiting]
Amelia looks back at you, her eyes glimmering with an emotion you can't seem to quite grasp. 'Once they have completed this journey, the souls return to Acheron, where they are evaluated to determine if they are ready to proceed to Elysium, or whether their obsession with sin will drag them to tartarus. Most are simply.. unready, repeating the cyclus."


[todo sort through all the quips to change the aftertext]

After going:
	terminate the conversation.

Table of Quip Followups (continued)
quip	option	result
drinks	"Wait, so no wine?"	nowine
nowine	"Not even [cyprwine]?"	nonotthat [TODO, add points and maybe explanation]

cyprwine is an action applying to nothing.

To say cyprwine:
	place an inline element called "cyprwinelink" reading "οἶνο Κύπρωι";
	attach a tooltip "Wine of Cyprus: Also known as Commandaria, the oldest named wine still in production." on the element called "cyprwinelink".
	
[
After quipping when the current quip is nowine:
		say anamnesisup;
		display a notification reading "Wineless." for 1 seconds;  
		]


After quipping when the current quip is whoareyouAmelia:
	change the text of the player's command to "Who are you?";
	now the printed name of Amelia is "Amelia.";
	now Amelia is proper-named;
	enable the lookingfor quip;
	enable the wplaceAmelia quip;
	enable the cantremembAm quip;
	enable the wherto quip for wisp;
	enable the tired1 quip for wisp;



After quipping when the current quip is thassit:
	say "The wisp chimes in cheerfully, attempting to diffuse the tension, 'Well, that may not have been entirely fruitful, but at least we have a clearer understanding of our surroundings, right? Let's not dwell on it and keep moving forward!' [line break]  Its excitement and optimism contrast with the lingering emotions, offering a gentle reminder that you're not alone on this journey. [keywaiting]Something that you've yet to process fully. " ;
	now Ameliaconvodone is true;
	terminate the conversation.

Instead of talking to the wisp when the location is Kapeleion:
	say "The wisp mumbles in a low tone. 'Not here! Can hardly hear you past all the latibulating. Maybe outside?"
	
Thoughtful drinking is an action applying to one thing.


Definition: a container is empty if the first thing held by it is nothing.

[an opaque portable container 

A sip-of-lethian-water is a kind of thing. The plural of sip-of-lethian-water is sips-of-lethian-water. 
The carrying capacity of the Waterskinoflethianwater is 12.
12 sips-of-lethian-water are in the Waterskinoflethianwater. The printed name of sip-of-lethian-water

]
Waterskinoflethianwater is thing. The description of the Waterskinoflethianwater is "The waterskin feels almost warm to the touch; There's a faint seam, running along the sides of the skin, keeping it together. Your eyes may be playing tricks on you, but it seems to glisten, however slightly. [if anamnesis of the player is greater than 8] Blinking twice, realisation dawns. The seam, the warmth, the golden sheen. You know the animal that this waterskin was made of. You were there, when it hung from the great oak.[end if]".[golden ram maybe] The printed name of Waterskinoflethianwater is "Waterskin of Lethian Water". 
Lethian-water is a thing. The printed name of lethian-water is "lethian water."
The description of lethian-water is "You uncork the waterskin, pouring a minuscule amount of the liquid out, if only to inspect it. Cloudy if not milk-like. For a moment it turns crystal clear and then turns back to being almost wholly opaque, as if it forgot its nature. You quickly cork it back up, being extremely careful not to touch the actual liquid." Lethian-water is a part of Waterskinoflethianwater.

Understand "lethian water" as lethian-water. 
	


Table of forgetty nouns
noun
"fog"
"mist"



Report drinking lethian-water:
	say anamnesisdown;
	instead say "You drink some of the water, but you don't remember what it tasted like. You don't feel any less thirst whatsoever, but there's a gnawing momentary realisation that you forgot something. Then you forget that as well.";
	if anamnesis of the player is less than 0:
		say "The last drop of water hits your tongue, but as the sensation evaporates, so does everything else. Neither sight, nor sound, nor emotion are left. Even the ever present wisp is gone, as if it was never there.[paragraph break]
What was there?  [paragraph break]
Who am i? [paragraph break]
Why? [paragraph break]";
		clear the screen;
		center "Why won't this thirst go away?";
		center "Water.";
		end the story.


	

[epistat 
Before going:
	now the interlocutor is "".]





[borrowed TODO TOADD TOFIX]
Last check dropping (this is the can't drop key-items rule):
	if the noun is Waterskinoflethianwater:
		say "That would be unwise.";
		stop the action.

Last check putting something on something (this is the can't put key-items on things rule):
	if the noun is Waterskinoflethianwater:
		say "It's better to keep [the noun] on your person.";
		stop the action.
		
Last check inserting something into something (this is the can't insert key-items into things rule):
	if the noun is Waterskinoflethianwater:
		say "It's better to keep [the noun] on your person.";
		stop the action.
		
Last check giving something to someone (this is the can't give away key-items rule):
	if the noun is Waterskinoflethianwater:
		say "It's better to keep [the noun] on your person.";
		stop the action.
	



Check going from the Kapeleion to InfrontofKapeleio:
	if yourself is carrying the Waterskinoflethianwater:
		continue the action;
	if Ameliaconvodone is true:
		say "'A moment, if you would.'[paragraph break] [keywaiting] Caught off guard by Amelia's voice you stop, only to see her entire form walk through the chiseled counter. The sight disturbs you in a way you can't quite articulate. What is this woman? Mortal? Divine? [paragraph break] [keywaiting] 
There's a cryptic little smile at the edge of her lips as she regards you. 'Neither quite, Anax.' The word causes a splitting headache, memories of a myriad voices saying that. Anax. Is that your name? Of course it's.. [paragraph break] [keywaiting]
You can feel the lurch in your stomach as you realise that the obvious, is now anything but. [paragraph break] [keywaiting]
Ignorant, or perhaps, uncaring of your internal sturggle, she produces a waterskin filled to the brim, and a length of rope, presumably to secure it around your zoster. 'This water may prove of use to you.[keywaiting] Though i don't need to warn you of its dangers, do i?' [paragraph break] [keywaiting]
You hesitantly tie the waterskin around your waist, not quite sure if this gesture is a gift or a test of some kind. [paragraph break]";
		now player is carrying the Waterskinoflethianwater; [TODO redo logic]
		now ameliaconvodone is true;
		continue the action;
	if Ameliaconvodone is false:
		say "It would be rather pointless to get back out without exhausting your options. Maybe if you tried to [ameliatalk] to the woman serving drinks,it would prove fruitful?" instead.

Report going from Kapeleion to InfrontofKapeleio:
	try silently looking.
		


Instead of drinking the Waterskinoflethianwater,say "Blissful oblivion can wait for your true demise. You refuse to give up."[todo]		
		



TalkintoAmelialink is an action applying to nothing.

To say talkingtoamelialink:
	say "You shift your attention to the woman, trying to find the words. She breaks the silence first. [line break]";
	try talking to Amelia instead.
	


[
enable the whydo quip.]

After quipping when the current quip is wplaceAmelia:
	enable the thassit quip;
	now ameliaconvodone is true;
	say "She pauses for a moment, her gaze crawling over your form. '..Anything else?' She seems to be both leisurely and yet constantly busy. Perhaps the nature of her occupation has shifted her temperament to be so.[paragraph break]".
	
PART HYPNOS CAVE DEPTHS

Before talking to wisp when the location is InfrontofKapeleio and Ameliaconvodone is true:
	now the quiptext of wispgreet is "'Okay, okay let's make sense of things then. You're dead, but.. not really, and you're in the wrong part of Hades, [bold type] and [roman type] you have now idea where to go next, and you just have water that makes you forget things. That.. well. We might as well just go, well, to another place!";
	 
		
Instead of going from hypnoscave to hypnoscavedepths for the first time:
	say "After a single step towards the centre of the cave, you are overwhelmed by crippling drowziness. Continuing on would spell little but doom for you. Perhaps it would be prudent to simply follow the [otherlink] path." instead.

otherlink is an action applying to nothing.

To say otherlink:
	place a link to the command "E" called "caveinlink" reading "other"; 

Carry out otherlink:
	try silently going east instead.


After of going from hypnoscave to hypnoscavedepths for the second time:
	say "It doesn't take long for your eyelids to grow incredibly heavy. The only sound that follows is a thud, but by then, you're asleep.";
	end the story.
[
	say "The wisp flies in front of your face is a small facet of panic, voice hushed as it speaks:
'What are you [italic type]doing[roman type]? We can't be here..!'"
]


The description of hypnoscavedepths is "In the northern reaches of the cave, nestled in shadow, lies the sacred chamber where Hypnos himself slumbers. A lush bed of soft moss and fragrant flowers cradles the god, the very essence of peace and stillness emanating from his form. Here, the boundary between the world of dreams and the waking world blurs, and the whispers of countless dreams drift through the air, mingling with the comforting murmur of the river underfoot."

[TODO ADD GODLINK AND DESCRIPTION]


tiredcounter is a number that varies. tiredcounter is 0.

After going from Kapeleion to InfrontOfKapeleio for the first time:
	say "Your companion appears by you as you exit the Kapeleio, seeming all too eager to speak to you.";
	now the quiptext of wispgreet is "'Okay, ready for the next step?'";



Table of Quip Texts (continued)
quip	quiptext
wherto	"'Well, Lethe runs underground here, bubbles up somewhere past the cave of Hypnos and then merges into the Styx! That makes sense as a place to go. don't you think?'"
tired1	"'That's okay, that's perfectly understandable! But we're getting closer, to her.. Right? That's what you said? Tell me about her!'"
wellshe	"[firstwifetext]"

firstwifetext is some text that varies. firstwifetext is "You take a moment, trying to find your words. Your thoughts, your memories. It's a struggle, at first. Her name, escapes you, [italic type]your[roman type] name escapes you.[paragraph break]
	'I remember the first time she spoke, to me.' [paragraph break]
Your words leave your mouth before you've fully processed them, as if your soul, and not your head was speaking.
	'Her first words were.. well, she cursed my existence, lineage, house and even my poor horse, for having -stolen- the last batch of fresh τήγανα from her favorite seller at the agora' [paragraph break]
You pause, letting out a tired, hollow chuckle. 
The reprieve is momentary, but it's enough. 
'She sounds mean.'[paragraph break] [keywaiting]
'She is honest.' "


loukumades is an action applying to nothing.

To say loukumades:
	place an inline element called "loukumades" reading "τήγανα ";
	attach a tooltip "Also known as λουκουμάδες, balls of dough fried in oil and drizzled with honey or syrup." on the element called "loukumades".

Table of wisp Conversation (continued)
prompt	response	enabled
"Where would that be?"	wherto	0
"I don't know. I am.. tired."	tired1	0	
"Well, she.."	wellshe	0

After quipping when the current quip is tired1:
	enable the wellshe quip.
	
After going from Infrontofkapeleio to Lethargos:
	try silently looking.


After quipping when the current quip is wellshe:
	say "There is a small pause, between the two of you, the only sound being the trickling water from the sculpture next to you. [keywaiting]
'To the cave then!' [line break]
Once more taking the initiative, the wisp starts leading the way." 

After quipping when the current quip is wellshe:
	terminate the conversation.

The reject asking for talking rule is not listed in any rulebook.
The reject telling for talking rule is not listed in any rulebook.
The reject answering for talking rule is not listed in any rulebook.
The reject commanding for talking rule is not listed in any rulebook.

Carry out waiting: now the interlocutor is "".




PART OF FORGETTING ACTIONS

[implement in further release the ability to drink the water yourself, losing basic actions .Could be implemented as exclusions in base rule;]
	



Chapter 3 "Styx"

Hypnoscavedepths is a room. Hypnoscavedepths is north of hypnoscave. The printed name of Hypnoscavedepths is "Depths of Hypnos[apostrophe] cave."



Styxoutview is a room down from hypnoscave.The printed name of styxoutview is "Dripping Corridor."
Styxoutview is southwest from the Stygian Riverbank. Styxoutview is in Lethe.

After going from hypnoscave to styxoutview:
	 say "As you venture deeper into Hypnos[apostrophe] cave, you notice the path gradually transforming. The dimly lit tunnel seems to stretch on endlessly, with walls that slowly transition from rough-hewn stone to a smoother, more polished surface. The air becomes cooler and more humid, carrying the faint echoes of dripping water from the unseen depths of the underworld.[keywaiting] 

The path starts to descend, winding its way downward in a gentle spiral. The sound of the flowing river Lethe fades behind you, replaced by the distant murmur of another water source. Your footsteps echo softly in the otherwise silent passage, accompanied only by the occasional flicker of your wisp companion's light. [keywaiting][paragraph break] The light of [apostrophe]Φῶς.. you pause, trying to suppress a thin smile. Your son always loved puns; And by loved, he absolutely [italic type]loathed[roman type] them. You remember a faint murmur from the wisps in the Kapeleion. The achaeans won; Would he be coming home? [keywaiting]Is he home?[keywaiting]The realisation that your blood might be returning only to find himself without parents, without a home, sours the brief taste of levity in your soul.[keywaiting] You continue on, purpose renewed. [paragraph break]";
try silently looking.

[add textline for son with wisp]
[TOADD ADD TRANSLATION FOR HYMN AA  

Hypnos, ruler of gods and men, you dwell
In the dark caves of Night, from mortal eyes
Concealed, where dreams in shadowy silence dwell.
Eternal drowsiness your eyelids seal,
And at your nod the peaceful realms obey,
Where drowsy shades their weary limbs display.
To still the world, you wield a mighty charm,
And draw the veil of darkness o'er the land.
Lulled by your wings, the Earth and Sea lie still,
And Nature sinks in sweet repose, until
Aurora's rays, with new-born light, unfold
The dawning day, and chase the shades of night.

To you, O Sleep, we mortals turn for rest,
To soothe our cares and calm our troubled breast.
Soft Sleep, extend your gentle wings around,
And grant our weary souls a sweet repose.
In stillness bind our limbs, and seal our eyes,
Until the dawn awakes, and daylight rise.]

[orphichymnlink]
[for future refernec,e had to be broken down text too big or smth]



The description of styxoutview is "A fairly plan corridor, as far as underground passageways go. The walls are lined with a myriad of faded inscriptions on the [rocking], the dim light from bioluminescent fungi casting an eerie glow throughout the space."

Instead of taking fungusscen, say "You would not risk touching anything unknown in the underworld, [italic type]especially[roman type] a luminescent fungus."

rockcarvings is scenery. rockcarvings is here. The description of rockcarvings is "Faded inscriptions from departed dead - or so you think at first. Gently you move to touch the rock, to trace the lines.. only to realise that it's pliable, soft, almost.. like clay. You continue to trace the line with a rough finger, recognising some of the inscriptions as..[orphichymnlink]?"


Understand "inscriptions" or "carvings" or "rock" as rockcarvings.

Rocking is an action applying to nothing. 

Carved is a vorple style.

To say rocking:
	place a link to the command "examine rock" called "rockhymlink" reading "rock"; 

Check rocking:
	change the text of the player's previous command to "examine rock";
	
Carry out rocking:
	try silently examining rockcarvings.






orphichhypnoshymn is scenery. orphichhypnoshymn is here. The description of orphichhypnoshymn is "[carved style] Ὕπνε, ἄναξ μακάρων πάντων θνητῶν τ᾽ ἀνθρώπων καὶ πάντων ζώιων, ὁπόσα τρέφει εὐρεῖα χθών· πάντων γὰρ κρατέεις μοῦνος καὶ πᾶσι προσέρχηι σώματα δεσμεύων ἐν ἀχαλκεύτοισι πέδηισι, λυσιμέριμνε, κόπων ἡδεῖαν ἔχων ἀνάπαυσιν καὶ πάσης λύπης ἱερὸν παραμύθιον ἔρδων· καὶ θανάτου μελέτην ἐπάγεις ψυχὰς διασώζων· αὐτοκασίγνητος γὰρ ἔφυς Λήθης Θανάτου τε. ἀλλά, μάκαρ, λίτομαί σε κεκραμένον ἡδὺν ἱκάνειν σώζοντ᾽ εὐμενέως μύστας θείοισιν ἐπ᾽ ἔργοις  [end style] "


Before examining orphichhypnoshymn:
	say "You blink in confusion as realisation sets in.
You [italic type]know[roman type] these carvings. Only one individual could carve in such a flowing fashion. [paragraph break]"

After examining orphichhypnoshymn:
	say "Even in the underworld, Orpheus seems blessed by his muse. Before you're done reading - for despite your education, you were never much of a learned man, and it took effort to understand poetry, [keywaiting] the wisp seemed to have caught wind of what you were doing. But as it starts to speak, you find yourself rooted, enthralled by the soft [wispnarrlink]. [paragraph break]"

	
Understand "rock" or "rocks" or "walls" or "wall" or "rock carvings" as rockcarvings.

payattention is an action applying to nothing.

Understand "Focus" or "listen to the voice" as payattention.

Carry out payattention:
	change the text of the player's previous command to "Listen closely.";
	say "'Hypnos, ruler of gods and men, you reside [keywaiting]
In the dark caves of Night, from mortal eyes
Concealed,[keywaiting] where dreams in shadowy silence dwell.[keywaiting]
Eternal drowsiness your eyelids seal,
And at your nod the peaceful realms obey,
Where drowsy shades their weary limbs display.[keywaiting]
To still the world, you wield a mighty charm,
And draw the veil of darkness o'er the land.[keywaiting]
Lulled by your wings, the Earth and Sea lie still,
And Nature sinks in sweet repose, until
Aurora's rays, with new-born light, unfold
The dawning day, and chase the shades of night.[keywaiting]
[line break] There is a small pause, one that is only long enough for you to realise how enraptured you are, by this voice that before sounded grating, mocking; But now has truly taken over your thoughts.

To you, O Sleep, we mortals turn for rest,
To soothe our cares and calm our troubled breast.[keywaiting]
Soft Sleep, extend your gentle wings around,
And grant our weary souls a sweet repose.[keywaiting]
In stillness bind our limbs, and seal our eyes,
Until the dawn awakes, and daylight[keywaiting]";
center "rise.";
say "Wordlessly the wisp floats ahead, leaving you alone in the dark, with little to do but follow. [keywaiting]";
	move the player to stygian riverbank.

Understand "writing" or "inscriptions" as orphichhypnoshymn.

After going from styxoutview to stygian riverbank:
	say "As you near the end of the path, a sweet, earthy fragrance fills the air – the unmistakable scent of asphodels. The scent grows stronger, announcing your approach to the river Styx. The tunnel opens up into a vast cavern, its ceiling lost in the darkness above. However, to your amazement, the ceiling is dotted with what appear to be stars - and the same, ever present sun, casting an eerie, otherworldly light on the scenery unfolding before your eyes. [paragraph break] [keywaiting]
Before you lies the inky expanse of the Styx, its waters as dark and foreboding as the shadows that dance along its banks. The waters of the Styx seem to possess a unique, almost unnaturally perfect refractive quality, mirroring the star-studded ceiling above with an unsettling clarity, making the area feel ever so enormous. The asphodels seem to thrive here, their ghostly white petals swaying gently in the stagnant air, a striking contrast against the darkness that surrounds them.[keywaiting]

As you step forward towards the riverbank, you look behind you in a momentary whim- [paragraph break]
Only to find nothing, as if no path had led you here. The styx and its riverbank extends endlessly behind, and endlessly in front of you.[paragraph break]" ;
	change the northeast exit of styxoutview to nowhere;
	change the southwest exit of stygian riverbank to nowhere;
	move the wisp to stygian riverbank;
	try silently looking.


orphichymnlink is an action applying to nothing. 

To say orphichymnlink:
	place a link to the command "examine writing" called "orphichymnlink" reading "writing"; 

Carry out orphichymnlink:
	try silently examining orphichhypnoshymn;


wispnarrlink is an action applying to nothing. 



To say wispnarrlink:
	place a link to the command "Listen to the voice" called "wispnarrlink" reading "voice"; 

Carry out wispnarrlink:
	try payattention.
	

Wisptextnarr is some text that varies. Wisptextnarr is "Hypnos, ruler of gods and men, you dwell [keywaiting]
In the dark caves of Night, from mortal eyes
Concealed,[keywaiting] where dreams in shadowy silence dwell.[keywaiting]
Eternal drowsiness your eyelids seal,
And at your nod the peaceful realms obey,
Where drowsy shades their weary limbs display.[keywaiting]
To still the world, you wield a mighty charm,
And draw the veil of darkness o'er the land.[keywaiting]
Lulled by your wings, the Earth and Sea lie still,
And Nature sinks in sweet repose, until
Aurora's rays, with new-born light, unfold
The dawning day, and chase the shades of night.[keywaiting]
[line break] There is a small pause, one that is only long enough for you to realise how enraptured you are, by this voice that before sounded grating, mocking; But now has truly taken over your thoughts. [paragraph break]

To you, O Sleep, we mortals turn for rest,
To soothe our cares and calm our troubled breast.[keywaiting]
Soft Sleep, extend your gentle wings around,
And grant our weary souls a sweet repose.[keywaiting]
In stillness bind our limbs, and seal our eyes,
Until the dawn awakes, and daylight[keywaiting] 
								   rise.[keywaiting] 

[paragraph break] Wordlessly the wisp floats ahead, leaving you alone in the dark, with little to do but follow. [keywaiting] [paragraph break]
"







Fungusscen is scenery. Fungusscen is faraway. Fungusscen has some text called the faraway response.The faraway response of fungusscen is "You would not risk touching anything unknown in the underworld, [italic type]especially[roman type] a luminescent fungus." Fungusscen is here.






The description of fungusscen is "Several elongated mushrooms, casting a soft light. You've never quite seen the like before."

Understand "fungus" or "mushroom" or "fungi" or "mushrooms" as Fungusscen.








[
After going from styxoutview to stygian riverbank:
	 
try silently looking;
now styxoutview is mapped southwest of tutorialarea.
now styxoutview is in lethe;]



The scent of styxoutview is "Asphodels and ..cinnamon? You struggle to place where the latter smell is coming from."




The stygian riverbank is a room in Styx."The riverbank of the Styx extends before you, the waters of the underground rive Lethe welling up and merging into new, crystal clear streams. A vast field of asphodels stretches out, their delicate, pale blossoms confirming what little knowledge you might have of your location.[paragraph break] Amidst the ghostly flowers, a lone [Narcisussxlink] stands entranced, his gaze forever fixated upon his own reflection in the river's flawlessly reflective surface. His beauty captivates even the shadows, but it is his own heart that remains unattainable.[paragraph break]From a distance, [if Ameiniastalk is true]Ameneias, the spurned, wounded lover,[otherwise]a young man with a blade lodged deep into his chest[end if] [Ameiniasxlink] him with a mixture of longing and sorrow, unable, or perhaps unwilling to break the spell of the self-absorbed youth." [add here TODO]

Narcissus is a man. He is here. "Tranfixed by his own beauty, the man lies still as he watches his reflection in the bank."
The description of Narcissus is "He truly lives up to his fame, as beauty given form, arguably matching Aphrodite, your mother in flawlessness. And you know that is cause enough for the gods to seek vengeance."

Ameinias is an unfamiliar man. He is here. The description of Ameinias is "A relatively frail looking young man, sorrow etched in his eyes. [if Ameiniasfirsttalk is true] The blade that he used to take his own life still lodged in his chest.
It has left a jagged wound; Evidence of a desperate act, doubtlessly a torturous one.
But maybe the pain of being spurned was worse. [otherwise]A blade is driven deep into his chest, rather obviously the cause of his demise.[end if]".

The litany of Ameinias is the Table of Ameinias Conversation. The greeting of Ameinias is Ameiniasgreet. [redo logic]


Instead of going from stygian riverbank to styxoutview, say "Regardless of how hard you try to find the path that led you here, you only end up going in circles. Or at least, so it feels like.."


Ameiniasfirsttalk is a truth state that varies. Ameiniasfirsttalk is false.

Ameiniastalk is a truth state that varies. Ameiniastalk is false.


After quipping when the current quip is whou:
	now Ameiniasfirsttalk is true;
	disable the haveseen quip;
	enable the whatdo1 quip for wisp;
	enable the whydo1 quip for wisp;
	enable the whatdo1 quip ;
	enable the whydo1 quip ;
	
Table of Ameinias Conversation 
prompt	response	enabled
"And who are you, νεανίᾳ;"	whou	1
"Have you seen.."	haveseen	0
"What happened to you?"	whathap	0



Table of Quip Texts (continued)
quip	quiptext
whou	"'Young man?' The boy scoffs in your direction, eyes bloodhshot despite his immatereal condition. [line break] Not even my name, is known? But [italic type]his[roman type], his name you don't ask about. It's obvious, is it not? The great, perfect, [italic type]flawless[roman type] Narcissus. But a peddle stuck in his sandal, i was. I..' [paragraph break] You can see that pain has made the shade lost his rationality, and perhaps most of his memory. But his obsession, his grief, are keeping him from going anywhere past the object of his affection. "	
ameiniasgreet	"[if Ameiniasfirsttalk is false]The listless figure doesn't even acknowledge your presence, hands still gripping the hilt of the blade with desperation, while the dried rivulet of blood from his mouth casts a grim antithesis to his deathly pallor. [otherwise] He only moves to glance at you once, before shifting his attention back to Narcissus."
dontremmean	"The shade seems distraught, as if the realisation of having lost even more of himself has broken him. Yet your companion speaks up softly, its glow seemingly causing the young man's body to turn ever so slightly more.. solid. 

'It's okay, noble son. You have nothing to prove, and no one to fear; You're asking for help, without having the words. Find yourself; Who are you?'"
dontremnice	"Your encouraging words seem to fall to deaf ears; You're not used to such actions, after wall. Harsh words build character; Honey was never your strength. But as you try to find further encouragement, your companion speaks up: [line break] [keywaiting]
'It's okay, noble son. You have nothing to prove, and no one to fear; You're asking for help, without having the words. Find yourself, as this old man said; Who are you?'[keywaiting] 

'..Ameinias. My name is Ameinias.'"
haveseen	"'No, no one has passed by us for as long as we've been here.' "
whathap	"[whathaptext]"

brohoodlink is an action applying to nothing.

To say brohoodlink:
place an inline element called "brohoodlink" reading "φρατρία";
	attach a tooltip "Phratry- a fraternity, a brotherhood of full fledged citizens. " on the element called "cantharoilink".

whathaptext is some text that varies. whathaptext is "Ameinias hesitates for a spell. 'I.. told him i loved him. He said,[keywaiting]
I love you too. [keywaiting][paragraph break]
He ordered a blade, for me, a gift for joining the [brohoodlink]. [keywaiting] I loved him. [keywaiting] [paragraph break] His grip on the blade turns desperate, as if merely saying those words caused enough pain to drive his need for punishment further.
Yet one day, after a night together, like any other, he did not kiss me awake. I followed his tracks, blade in hand; What else could i have thought, rather than a vengeful rival?' The young man paused, gaze drifting into the blade plunged into his form. [keywaiting]

By the river, i heard him, talking. To a god, a nymph, a chthonic fiend, i know not, i [italic type]care[roman type] not. But i heard the words, the echo, carried by the reeds. 'Ameinias, a toy, nothing more.' Tears flowed freely from the young man, tears of blood and betrayal. 'I could not stand the pain, i confronted him. Yet, just like now, he was gone, looking at his reflection, the smile of mockery on his lips, the self satisfaction of cruelty. I wanted to strike [italic type]him[roman type]. But i could not,[keywaiting]  how could i? [keywaiting] I love him. [keywaiting] [paragraph break]
You can feel your gaze soften at the sight of the broken youngster, almost instictively crossing your arms in front of your chest, as if trying to protect his pain from pierceing your chest as well.  [keywaiting] [paragraph break]
'..The rest is rather obvious a story, i believe'.
There is another long paused, followed by a sniffle. 'Pray, leave me be.' [paragraph break]
You take a few steps away from him, giving him whatever little privacy possible.
  "

Riverscen is scenery. Riverscen is here. "You can't help but notice the faint glimmer of distant stars above, their light reflecting off the dark, still waters of the Styx. It's a disconcerting reminder that the underworld is not entirely separate from the world of the living, and the connection between the two is never far from your mind."



After quipping when the current quip is whathap:
	disable the whou quip;
	now the quiptext of wispgreet is "[line break] 'Allright, so, are you listening..? '[line break]";
	now Ameiniastalk is true;
	say "As soon as you distance yourself somewhat, Fos[apostrophe] glow turns a few shades brighter. [line break] 'I [knowconvolink] what needs to be done!";
	

	

Understand "fos" or "Fos" as the wisp.


knowconvolink is an action applying to nothing. 

To say knowconvolink:
	place a link to the command "talk to fos" called "knowconvolink" reading "know"; 

Carry out knowconvolink:
	try silently talking to the wisp.
	





Table of Quip Texts (continued)
quip	quiptext
whatdo1	"[whatdotext]"
whydo1	"[whydotext]"



whatdotext is some text that varies. Whatdotext is "This is.. well, a spell, of sorts. A curse, to be exact, but the difference is small and the minutiae would be lost to you.' [line break]
That is probably correct, you never were one for messing with what could not be understood by logic or instinct. Trying to ignore the irony of being in the underworld, you shift your attention back to the Fos.

'Do i still, okay yes, you're with me. See, [italic type] the water itself, is the issue. But trying to stop the reflection in something this enormous would be pointless; I assume you would want to.. throw rocks? Maybe yell?'

Again, while the tonality is offending, the fact that those [italic type]would[roman type]be your first instincts jab at your pride, however little.

'..No, you're supposed to counteract magic with magic. The water!'

You look down to the waterskin around your zoster, evidently doubtful as to how that would do anything.

It wouldn't hurt to [bedonelink], probably. After all, you see nothing else that could lead you further along the river."

whydotext is some text that varies. whydotext is "Because whether we like it or not, we've ended up in the same plain of the styx as [italic type]them[roman type]. Your pain resonates with.. either of them, and since you're, well, -not dead-, you've ended up invading their own part of the cyclus. If we -don't-, then we'll be stuck here..!'"

Understand "Narcissus' reflection" as narcissusscen.

Narcissusscen is scenery. narcissusscen is here. "The flawless reflection of the flawless man, breathtaking and magnetic."

pouringintoright is an action applying to nothing.



Carry out pouringintoright:
	if the player's command includes "reflection" or the player's command includes "water" or the player's command includes "Narcissus" or the player's command includes "pour water" or the player's command includes "drop water" :
		change the text of the player's previous command to "pour lethian water into Narcissus[apostrophe] reflection";
	say "The shift in state is almost immediate. The opaque, milky water has no reflection as it lands into the water of the styx, creating a large pool of blurred reality. Narcissus[apostrophe] reflection turn into Ameinias, leaving both you, and the onlooking Ameinias confused. 

The frozen youth, moves, eyes drifting from the muddled waters, up, crawl along your form and lose interest when they meet your eyes; They shift, over to Ameinias who seems unsure, afraid, even. [keywaiting]

'..as?'

You exhale softly as some things start to make sense. You feel compelled to speak up, to make things right, but a tiny tendril of light stops you, hovering in front of your lips. It's.. warm. [keywaiting]

'Are you going to mock me, then?' Ameinias speaks with a trembling tone, unable to even catch Narcissus[apostrophe] gaze.

The later however stumbles as he gets up, his form awkward, stiff. As if walking is an action he's forgotten. His chest lies still, without taking breath,[keywaiting] his eyes,[keywaiting] unblinking. [keywaiting][paragraph break]
Yet despite all, he is still, breathtakingly beautiful. [keywaiting]

'Haven't you taken enough? Leave, let me go! Let me..' As Ameinias tries to use words to mask his own emotions, Narcissus has stumbled close enough to[keywaiting]
embrace him.[keywaiting] The blade in Ameinias' chest is gone, now appearing in a selfsame fashion in Narcissus.  [keywaiting]

An echo drifts from the water, the asphodels bowing down to the wind. [keywaiting]

'Ameinias? Hardly a toy. In fact i need him, and nothing more.' [keywaiting]

The couple disappears in the embrace, Ameinias[apostrophe] gaze drifting to you, momentarily, before their forms turn into a flurry of petals, carried by the wind.";
	now Ameinias is nowhere;
	now Narcissus is nowhere;
	now narcissusdone is true;
	try talking to wisp.
	

		
Magicfixing is an action applying to nothing.

Understand "blublu" or "pour lethian water into Narcissus'reflection" or "pour lethian water into Narcissus' reflection" or "pour water in the reflection" as magicfixing.

Carry out magicfixing:
	say "The shift in state is almost immediate. The opaque, milky water has no reflection as it lands into the water of the styx, creating a large pool of blurred reality. Narcissus[apostrophe] reflection turn into Ameinias, leaving both you, and the onlooking Ameinias confused. 
The frozen youth, moves, eyes drifting from the muddled waters, up, crawl along your form and lose interest when they meet your eyes; They shift, over to Ameinias who seems unsure, afraid, even.

'..as?'

You exhale softly as some things start to make sense. You feel compelled to speak up, to make things right, but a tiny tendril of light stops you, hovering in front of your lips. It's.. warm.

'Are you going to mock me, then?' Ameinias speaks with a trembling tone, unable to even catch Narcissus[apostrophe] gaze.

The later however stumbles as he gets up, his form awkward, stiff. As if walking is an action he's forgotten. His chest lies still, without taking breath, his eyes, unblinking. 

Yet despite all, he is still, breathtakingly beautiful.

'Haven't you taken enough? Leave, let me go! Let me..' As Ameinias tries to use words to mask his own emotions, Narcissus has stumbled close enough to [keywaiting]
embrace him.[keywaiting]
 The blade in Ameinias' chest is gone, now appearing in a selfsame fashion in Narcissus. [keywaiting]


An echo drifts from the water, the asphodels bowing down to the wind.[keywaiting]


'Ameinias? Hardly a toy. In fact i need him, and nothing more.'[keywaiting]


The couple disappears in the embrace, Ameinias[apostrophe] gaze drifting to you, filled with tears, before their forms turn into a flurry of petals, carried by the wind.";
now Ameinias is nowhere;
now Narcissus is nowhere;
now narcissusdone is true;
try silently talking to wisp.

Understand "Pour lethian water into the reflection" or "pour lethian water into Narcissus'reflection" as pouringintoright.

	bedonelink is an action applying to nothing.



To say bedonelink:
	place a link to the command "Pour lethian water into the reflection" called "bedonelink" reading "try"; 

Carry out bedonelink:
	change the text of the player's  command to "[pouringintoright]".
	
To say pouringintoright:
	say "pour lethian water into Narcissus[apostrophe] reflection"

narcissusdone is a truth state that varies. narcissusdone is false.


Check going from stygian riverbank to stygiansplit:
	if narcissusdone is false:
		say "You try your luck at whatever side of the bank you understand as a diffrent dircetion; 
Regardless of where you step towards, however, you find that you have not moved an actual step away from the two figures. Even the water bars your entry, as if you're pushing against an impenetrable, invisible wall."instead ;
	otherwise:
		continue the action.
			

Table of Wisp Conversation (continued)
prompt	response	enabled
"What is there for us to do here?"	whatdo1	0
"Why would we [italic type]do[roman type] something here?"	whydo1	0
	



[Pygmalion - Paphos - Cinyras+Akestor]

["Why would we [italic type]do[roman type]something here?"	whywouldwedo	0

whywouldwedo	"Then what do we do?"	whatdo
]


	

Table of Quip Followups (continued)
quip	option	result
whou	"You don't even remember your name, do you?"	dontremmean
whou	"Take your time. Find yourself. I'm asking [italic type]you[roman type], no one else."	dontremnice
whydo1	"Then what do we do?"	whatdo1



















Report talking to the wisp when the location is stygian riverbank:
	if narcissusdone is true:
		now the quiptext of wispgreet is basewispgreet.
		


After quipping when the current quip is dontremmean:
	enable the haveseen quip;
	enable the whathap quip.
	
After quipping when the current quip is dontremnice:
	enable the haveseen quip;
	enable the whathap quip.


	
After quipping when the current quip is whatdo1:
	disable the whydo1 quip;
	now the quiptext of wispgreet is basewispgreet;
	terminate the conversation.

	
After quipping when the current quip is whydo1:
	disable the whatdo1 quip;
	now the quiptext of wispgreet is basewispgreet.
	




Instead of examining Narcissus for the first time, say "You instinctively realise who this figure is, for such beauty could only belong to one man. Narcissus. He truly lives up to his fame, as beauty given form, arguably matching Aphrodite, your mother in flawlessness. And you know that is cause enough for the gods to seek vengeance. [if trueform is false][paragraph break] By the water,however, your own gaze wavers, falling to your own reflection, your own form, visible to you as if for the first time. It surges, that initial obsession, much like the forever-youth, incontrollable, transfixing.[keywaiting] And what follows the grim realization that the proof before your eyes does not match your memories. Much like your father, your brow is creased with worries. [keywaiting][line break]Much like your mother, your eyes seem distant, unfocused.[keywaiting]

Despite all that, you stand tall, proud, a figure shaped by the hardships of kingship and the weight of responsibility. Your form, that of a man at the twilight of his years, bears the marks of a seasoned warrior, with the scars of countless battles etched upon your skin. A noble bearing and a strong physique, tempered by age and experience, speak of a lifetime devoted to the protection of your people. Yet, even as a formidable ruler, the recent loss of your beloved soulmate has left an indelible mark on your soul, a deep sorrow reflected in the somber gaze that meets your own in the still waters. [paragraph break] [enform]  [end if]".



Narcisussxlink is an action applying to nothing.

Ameiniasxlink is an action applying to nothing.

After looking when the location is stygian riverbank:
	place an image "narcissus.png "with the description "You see the water and narcissus.", centered.

To say Narcisussxlink:
	 place a link to the command "x figure" called "narcissusexamine" reading "figure"; 
	
To say Ameiniasxlink:
 place a link to the command "x young man" called "ameiniasexamine" reading "watches"; 

Carry out Narcisussxlink:
	change the text of the player's previous command to "examine figure";
	

Carry out Ameiniasxlink:
	change the text of the player's previous command to "examine young man".
	


Understand "figure" as Narcissus.

Understand "young man" or "The young man" or "youth" as Ameinias.

Instead of talking to Narcissus, say "There is no reply; If anything a vague sense of shame washes over you as you adress the man, a sense of deep-rooted inadequacy. Your gaze can only catch the transfixed reflection in the waters.
[paragraph break] [if trueform is false] - and then your own form, visible to you as if for the first time. It surges, an initial obsession, much like the forever-youth, with your own form.[keywaiting] And the grim realization that the proof before your eyes does not match your memories. Much like your father, your brow is creased with worries. [keywaiting]Much like your mother, your eyes seem distant, unfocused.[keywaiting]
Despite all that, you stand tall, proud, a figure shaped by the hardships of kingship and the weight of responsibility. Your form, that of a man at the twilight of his years, bears the marks of a seasoned warrior, with the scars of countless battles etched upon your skin. A noble bearing and a strong physique, tempered by age and experience, speak of a lifetime devoted to the protection of your people. Yet, even as a formidable ruler, the recent loss of your beloved wife has left an indelible mark on your soul, a deep sorrow reflected in the somber gaze that meets your own in the still waters. [end if]

'Maybe the other, one would be more willing to [Ameiniastalklink]?' [if trueform is false]Fos' voice interrupts your thoughts, grounding you back to now, whenever that may be. You're halfway through, but have had little progress. You can't afford to lose sight of your goal.[enform] [end if]

You can't shake the feeling that the sound of the wisp[apostrophe] voice has shifted. As if it's warmer, kinder. More familiar.
Perhaps your time in the underworld has made you.. emotional.
"

Enform is an action applying to nothing.

To say enform:
	now trueform is true.

Ameiniastalklink is an action applying to nothing.

To say Ameiniastalklink:
	 place a link to the command "talk to the young man" called "ameiniastalk" reading "talk"; 





Check talking to wisp when the location is stygian riverbank:
	if narcissusdone is true:
		say "While nothing seems to happen, nothing [italic type]feels[roman type] like it has happened, you notice an odd sensation, coming from the east. Alternating winds of hot and cold, reaching you all the way here. [paragraph break][keywaiting]"; 
		now the quiptext of wispgreet is "'There! Now that should have the curse broken.'

The wisp sounds almost victorious at that, bringing a momentary smile to your lip, that disappears as soon as you register it. ";
		enable the narciswhat quip for wisp;
	otherwise:
		continue the action.
		

Table of wisp Conversation (continued)
prompt	response	enabled
"Did Narcissus.."	narciswhat	0


Table of Quip Texts (continued)
quip	quiptext
narciswhat	"'..Take his own life, upon discovering Ameinias? Most likely. This was the doing of Echo, and her own infatuation with Narcissus' The wisp sounds almost somber as she talks. [paragraph break]
You take a moment again, not quite sure why you thought that its voice sounded.. gendered. A voice is a voice. Soft, pleasant, but still a voice.

'-so in the end it simply was the act of a nymph, breaking mortal lives, much like a child rips the wings off of a [cicadatext] with little ill intent.'"
nowwhat	"'Now we continue, further along the Styx, as is the path.'"


cicadatext is an action applying to nothing.

To say cicadatext:
place an inline element called "cicadatext" reading "τέττιξ";
	attach a tooltip "Τέττιξ - A Cicada." on the element called "cicadatext".


[add desc]

After quipping when the current quip is narciswhat:
	enable the nowwhat quip for wisp;
	enable the nowwhat quip;
	now the description of Stygian Riverbank is "The riverbank of the Styx extends before you, the waters of the underground rive Lethe welling up and merging into new, crystal clear streams. A vast field of asphodels stretches out, their delicate, pale blossoms confirming what little knowledge you might have of your location."


Check talking to wisp:
	if the location is not caveoutskirts:
		disable the napshappen quip.







PART STYGIAN CHOICE




Stygiansplit is east of the Stygian Riverbank.

The sound of stygiansplit is "The intermingling of pained, tortured suffering and frigid lamentation is rather overwhelming.";

The scent of stygiansplit is "There is no particular scent here, save perhaps for the lingering smell of asphodels on your body.";


The description of Stygiansplit is "[if unvisited]Leaving the expansive riverbank of the Styx and its ghostly asphodels behind, you face the final stretch of land that splits into a shallow crossing.[end if] Before you, two diverging paths beckon, each leading to a vastly different domain.

To the east, the mirror-like waters of the Styx spill into a fiery lagoon, its surface alight with flames and strewn with the bodies of the damned. The screams of agony from those trapped in the inferno reach your ears, an ominous cacophony to accompany the horrifying scene.

To the west, a contrasting scene unfolds: a vast, frozen lake stretches out before you. Its surface is adorned with exquisite ice sculptures, each one frozen in a different action. The moans of lamentation from within the icy depths permeate the air, a haunting reminder of the tormented souls that dwell here. "


Understand "sit [text]" as a mistake ("You lack the time, or the internal stillness.")


After going from stygian riverbank to stygiansplit:
	try silently looking.

Part Halfway implementation of Cocytus




Understand "cocytus" or "lake" or "lake cocytus" as frozen cyclus.

	[
telipop is an action applying to nothing.

Understand "fardd" as telipop.

After telipop:
	move the player to acherianarea;
	move the wisp to acherianarea;
		disable the nvm quip for wisp;

}]
	





	

 scribelink is an action applying to nothing.

To say scribelink:
	place a link to the command "examine Scribe" called "scribelink" reading "scribe"; 

 warriorlink is an action applying to nothing.
	
To say warriorlink:
	place a link to the command "examine warrior" called "warriorlink" reading "warrior"; 

 hunterlink is an action applying to nothing.

To say hunterlink:
	place a link to the command "examine hunter" called "hunterlink" reading "hunter"; 
	

 astronomerlink is an action applying to nothing.

To say astronomerlink:
	place a link to the command "examine astronomer" called "astronomerlink" reading "astronomer"; 
	

 physicianlink is an action applying to nothing.

To say physicianlink:
	place a link to the command "examine physician" called "physicianlink" reading "physician"; 
	

 leaderlink is an action applying to nothing.

To say leaderlink:
	place a link to the command "examine  leader" called "leaderlink" reading " leader"; 
	

 navigatorlink is an action applying to nothing.

To say navigatorlink:
	place a link to the command "examine navigator" called "navigatorlink" reading "navigator"; 

["]

The description of frozen cyclus is "In the frozen expanse of Cocytus, a frigid stillness pervades the air. Here, the icy lake forms a chilling landscape of countless [figurelink] figures, trapped in time.[if realised is true]Each one an Argonaut who fell short of achieving the greatness of their fellow heroes.[end if] The temperature plummets, and the cold bites at  your very being[if pyreticcyclusdone is true ], a stark contrast to the blazing heat of Phlegethon[end if].[if frozencyclusdone is true]Still, your small act of affection seems to have changed the very nature of this place, however little." The printed name of frozen cyclus is "Lake Cocytus".

Frozenfigures is scenery. Frozenfigures is in frozen cyclus.. The description of frozenfigures is "You take a moment to inspect these 'statues', only to feel a pang of familiarity in regards to some of the frozen figures. These tormented souls, locked in various poses of despair and regret, faces twisted with sorrow, had names .Names that you can not recall, that are past your tongue, touching a memory of youth.You see a [scribelink], a [warriorlink], a [hunterlink], an [astronomerlink], a [physicianlink],the [leaderlink] of your team, the secondary [navigatorlink],all figures that you recognise, but not remember."



Icesculpture is a kind of thing.Scenery is a kind of Icesculpture.

After touching Icesculpture:
	try examining the noun instead.

Instead of talking to Icesculpture:
	say "A sculpture of ice has little to say past what story its form tells."

examinecounter is a number that varies. examinecounter is 0.

Before examining an Icesculpture:
	say "You gently lay a hand on the frigid sculpture, their thoughts flowing to you."
	
repliedflag is a truth state that varies. repliedflag is false.

After examining Icesculpture:
	now realised is true;
	enable the sodidi quip for wisp;
	enable the notsure quip for wisp;
	say "[examinecounter] is at".
	


	
After examining scribe:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;
		
After examining warrior:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;
		
After examining hunter:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;
		
After examining astronomer:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "[wispvoice style]'Why do they insist on comparing themselves to others?'[end style]";
		try talking to the wisp;
		
After examining physician:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;
		
After examining leader:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;
		
After examining navigator:
	increase examinecounter by 1;
	if examinecounter is greater than 2:
		enable the sodidi quip for wisp;
		enable the notsure quip for wisp;
		say "You pause, trying to figure out the shiver of your soul. You've felt these doubts in your bones. You were..

Right.

A princeling, a spare for your brother. You joined the Calydonian boar hunt before hair sprang on your chest, the Argonauts shortly after the first time you saw a whisker on your face. 

Yet as if seeing your doubts, Φῶς' glow overtakes your surroundings, the feeble warmth it exudes providing solace in the cold.";
		now the quiptext of wispgreet is "";
		say "'Why do they insist on comparing themselves to others?'";
		try talking to the wisp;






[could've probably be done much better, but brain isnt working and the thing is due in 8 hours-]	


sculpt is a vorple style.

Scribe,warrior,astronomer,physician,leader,navigator,hunter are in frozen cyclus.

Scribe is Icesculpture. The description of Scribe is "-[sculpt style]'I, a mere scribe, pale in comparison to the wisdom and knowledge of Orpheus, who charmed the very gods with his music and poetry. How could I have ever hoped to achieve such greatness?'[end style] ";

Warrior is Icesculpture. The description of Warrior is "-[sculpt style]'I fought bravely, but my skills were eclipsed by the sheer might of Heracles, the son of Zeus, who performed his legendary labors. I feel as though I was nothing more than a shadow in his presence.'[end style]";

Hunter is Icesculpture.The description of Hunter is "-'[sculpt style]My heart aches when I recall the unmatched skill of Atalanta, the swift huntress and unmatched archer. I could never have struck true as she did, felling even the fiercest beasts with a single shot.'[end style]";

Astronomer is Icesculpture.The description of Astronomer is  "-[sculpt style]'I studied the stars and sought to understand the mysteries of the cosmos, yet I found myself standing in the shadow of the great astronomer Argus, who was chosen by Athena herself to build the Argo. How could I have ever hoped to rival his celestial knowledge?'[end style]";


Physician is Icesculpture.The description of Physician is "-[sculpt style]'As a physician, I tended to the wounds of my comrades, but my talents were no match for the divine healing powers of Asclepius. I can't help but feel that my efforts were a mere drop in the ocean of his miraculous abilities'[end style].";


Leader is Icesculpture.The description of Leader is "-[sculpt style]'I sought to protect my fellow Argonauts with my shield and spear, but the cunning and strategy of Jason, our leader, always seemed to outshine my own contributions. How can I reconcile myself with the fact that I was just another soldier in his grand plan'[end style]?";


Navigator is Icesculpture.The description of Navigator is "-[sculpt style]'I tried to navigate the treacherous waters with precision and skill, but my abilities paled in comparison to the divine guidance of Tiphys, favored by the gods themselves. My efforts feel insignificant in the face of his mastery.'[end style]";







realised is a truth state that varies. realised is false.

Understand "Frozen figures" or "frozen" or "figures" or "sculptures" or "Frozen Figures" as Frozenfigures when the location is frozen cyclus.

figurelink is an action applying to nothing.

To say figurelink:
	place a link to the command "examine Frozen Figures" called "figurelink" reading "frozen"; 



	

readytogo is a truth state that varies. readytogo is false.

	
			


[As Akestor and Fos traverse this frigid realm, they witness the statues of these tormented souls, locked in various poses of despair and regret. Their faces are twisted with sorrow, as if they are eternally lamenting their own inadequacies and the legacy they failed to leave behind.

The air itself seems to hum with the echoes of their whispered laments, as the frozen Argonauts are condemned to dwell upon their perceived shortcomings for eternity. The cold is not only a physical burden but also a symbol of the emotional distance that separates these souls from the warmth of self-acceptance and inner peace. The frozen Cyclus of Cocytus stands as a stark reminder of the dangers of dwelling on one's failures and the importance of letting go in order to move forward.]

frozencyclusdone is a truth state that varies. frozencyclusdone is false.

Table of wisp Conversation (continued)
prompt	response	enabled
"I did the same."	sodidi	0
"I'm not sure."	notsure	0
"Yes, that is my name. Ακέστωρ, son of Paphos."	yesiam	0				


		


After quipping when the current quip is sodidi:
	disable the notsure quip.
	
After quipping when the current quip is notsure:
	disable the sodidi quip.


[maybe add the i'm tired quip]

Table of Quip Texts (continued)
quip	quiptext
sodidi	"'Oh? And where did that get you?' [replytext]"
notsure	"You feel as if the wip is looking at you with mild dissatisfaction. An eerily familiar feeling, that somehow compels you to speak up. 'I did the same' you admit, trying to gather your thoughts as you speak. [replytext]"
wellyes	"Your half-joking reply is cut short by a figure that stands out from all the others. Not one of a warrior, not one of an argonaut, but of a [momlink], that died before you returned from your excursion."
yesiam	"You could swear that the wisp smiles past piercing blue eyes, but the illusion disappears by the time you acknowledge it.[line break]'..Nice to meet you, Akestor'[keywaiting][paragraph break] [if pyreticcyclusdone is false]
'Allright, So!' And just like that, the odd, almost tender moment seems shattered by her voice turning from soft, to expecting.
Let's keep going..!' [otherwise] [contting][end if]".



contting is an action applying to nothing.



To say contting:
	say "For a moment, the tender feeling lingers. [paragraph break][keywaiting]";  [progcheck in cocytus]
	terminate the conversation;
	disable the nvm quip for wisp;
	enable the pissedwife quip for wisp;
	move the player to acherianarea;
	move the wisp to acherianarea;

	


momlink is an action applying to nothing. 

To say momlink:
	place a link to the command "x woman" called "momlink" reading "woman"; 

After quipping when the current quip is wellyes:
	terminate the conversation.
	


Understand "woman" as Ismene.

matarexpl is an action applying to nothing.

To say matarexpl:
	place an inline element called "matarexpl" reading "μᾱ́ταρ";
	attach a tooltip "Μᾱ́ταρ - arcadocypriot form of μήτηρ, meaning Mother. " on the element called "matarexpl".

Ismene is a woman.Ismene is in Frozen Cyclus. Understand "Mother" or "mom" as Ismene. 

The description of Ismene is "Among the many souls that once shaped your life, Ismene is indubitably one  of the most important of them. Her devotion to the gods came second to nothing, save for the care she showed you. She always mentioned that she was nothing but an extension of your true mother, Aphrodite; A mere mortal vessel to take care of a half divine child.
You never [talktomom] her [matarexpl], only Ismene. ”

talktomom is an action applying to nothing.

Instead of touching Cinyras:
	say "Something holds you back from reaching for your brother."
	
Instead of touching Pygmalion:
	say "Your father's-father seems too lost in his own suffering. You would rather not."

To say talktomom:
	place a link to the command "Talk to Ismene" called "talktomom" reading "called"; 
	
momtext is a vorple style.

Instead of talking to Ismene, say "You try to call out to her, to reach her, but there is no reply. Instead a myriad thoughts flood the lake, her words, her voice resounding in your head.[keywaiting][paragraph break][momtext style]
-I never should have thought of myself as merely an extension of Aphrodite's will. I had the chance to be a loving and caring mother to Akestor, but instead, I kept my distance. I thought I couldn't compare to the divine influence the goddess had on his life.[keywaiting]

-I wish I had embraced my role as Akestor's mother, guiding him and showing him love. But I pushed him away, leaving him feeling like he was nothing but a plaything of the gods.[keywaiting]

-Though Aphrodite had a hand in his creation, I was the one who brought him into this world. Why did I ever think my love and guidance were insignificant compared to a goddess's whims?[keywaiting]

-I spent so much time trying to live up to an impossible standard, attempting to be the perfect vessel for Aphrodite's desires. In doing so, I ignored my own needs and desires, and I denied my own worth as a mother.[keywaiting]

-If only I could go back and change things, to show Akestor that he was more than just a divine experiment. That he was my son, and I loved him deeply, even if I had difficulty expressing it.[end style]

You feel compelled to [saymomlink], to make this right, even after so long.
"

saymomlink is an action applying to nothing.

To say saymomlink:
	place a link to the command "Mother" called "saymomlink" reading "call out"; 


Saidmoming is an action applying to nothing.

Understand "Mother" or "Mom" or "say Mother" or "say mom" or "'Mother'" as Saidmoming.


After going from frozen cyclus to pyretic cyclus:
	try silently looking.





Carry out Saidmoming:
	change the text of the player's previous command to "'Mother'.";
	say "The effect of that simple word is almost immediate; tears well up in the frozen sculpture's eyes as you gently call out to her.[keywaiting]'Mother.'[paragraph break]Tears drip slowly along her form, the trail making the body they ran through vanish. The entire lake itself' starts to melt, the visions of long-lost companions dissipating into mist.[keywaiting]

You're not quite sure what just happened, and whether or not you helped, either your mother or the Argonauts. But, as the icy landscape transforms before your eyes, you feel an unfamiliar sensation of empowerment surge through you.[keywaiting]

One by one, the statues of the Argonauts seem to soften, their expressions of torment and anguish fading away. Although you cannot save them all, your act of acknowledging your mother's love and embracing her for who she was has created a powerful ripple in Cocytus.[keywaiting]

As the ice continues to melt and the mist rises, you feel a newfound sense of resolve, as if breaking the chains of doubt and regret that once bound your mother have also strengthened your own spirit. The ghosts of the past may still linger, but you are now better equipped to face them head-on, with the knowledge that even in the darkest of places, a single act of compassion can make a world of difference.";
now frozencyclusdone is true;
now the quiptext of wispgreet is "".

replytext is some text that varies. Replytext is "
'I was.. a man in stature, but a child in mind. I compared myself, day and night. Heracles' strenght left me dumbfounded, Jason's talent at knowing exactly how to use us to the best of our abilities, Asclepius easing our pain. Orpheus, on a whim shifting from being insufferable to being utterly enchanting. They.. all had something.'

You're not quite sure why now, words are coming out. But the truth sounds liberating, and there's palpable relief in your chest.[paragraph break][keywaiting]
'I simply earned my keep. I did what i could; That is what i've always done. For my people, for [italic type]her[roman type]. Mending the sail, that.. that is what got her attention.' You scoff for a moment, fighting against the influence of the underworld to keep onto your memories. [keywaiting]

'Eighty brothers and sisters in arms, figures whose legends still resound through the world. Monarchs, Warriors, Poets and Physicians. And none of them knew how to mend a sail proper. Just us two.'[keywaiting]

The wisp allows for a moment for your words to settle, and momentarily the unbearable cold of the lake is gone, as she speaks.[line break][wispvoice style]
'And are you happy, with where that brought you?' [end style]";


Table of Quip Followups (continued)
quip	option	result
sodidi	"You mean, the [italic type]underworld[roman type]?"	wellyes
notsure	"You mean, the [italic type]underworld[roman type]?"	wellyes



 
After Saidmoming:
	say "'She harmed no one, but still found herself tormented.' 
The wisp speaks up softly, her glow still, ever so slightly warming your bones. '..Though maybe her self-torment is what brought her here. She needed nothing more.' 'Φῶς turns its attention back to you, continuing with a slightly more cheerful tone.[paragraph break]
'Is that your name then? Akestor? '";
	enable the yesiam quip for wisp;
	try wispconvoing;
	
After quipping when the current quip is yesiam:
	terminate the conversation.




The scent of frozen cyclus is "It's far too cold to smell anything past the frost."

The sound of frozen cyclus is "Lamentations and moans, and somewhere.. the faint echo of falling water."


movingtext is some text that varies. movingtext is "
Then, without warning, the ground beneath your feet begins to crumble.[keywaiting][paragraph break] Your surroundings blur and shift, the landscape morphing before your very eyes. As the last remnants of solid ground vanish, you suddenly find yourself tumbling through the air, the roar of a cascading waterfall filling your ears. The rush of water pulls you down, [keywaiting]down,[keywaiting] down,[keywaiting] into the unknown.[keywaiting]

You are falling, your thoughts barely audible to yourself past the roar of the waterfall that is surrounding you.[keywaiting]

You found yourself. Ακέστωρ.[keywaiting]

You found her, your suspicions confirmed. Phaedra.[keywaiting]

You remember, the dull sense of hurt, that she did not tell you. She knew. There was no way that she did not know;[keywaiting]

Daughter of Apollo, blessed with prophetic powers, she was the lucky star of the Argo. The one that everyone turned to, in times of need. She was your wife.[keywaiting]

She knew, she would pass away quietly. And she didn't tell you. Why didn't she? You could have..[keywaiting]

You already know, what her next words would be.[keywaiting]";


[

King-father is a man. He is here.
Anikitos is a neuter animal. He is here.
Son is a man. He is here.





The description of King-father is “The only man you called king, before the equals in the Argo. Too old to participate in the noble expedition, he sent you as his stand in. By the time you returned, riddled with the noble scars of proof, he died of sickness, leaving you a king of an ailing country. Only [italic type] her [roman type] intervention saved your kingdom."



The description of Anikitos is "Perhaps your only true friend, past those seeking to earn favour from your peerage. The proud horse saw many a battle with you, saving your life more times than you can count." [maybe dog instead to have aboard the argo]


The description of Son is "Your throat ties to a knot as your knees grow weak. Pain, very recent and coal-hot burns your insides as you fight back the shock of seeing your flesh in this realm. The Achaeans won. You did not participate; Your divine mother favoured those of Troy, while your battle-brothers were Achaeans. Your son, just turned a man, chose to go. You trained him well; She taught him archery, you taught him the spear.
But the arrows that litter his form speak of a story that you can’t bear to hear.
The Achaeans won. So he should’ve come back. He should be, coming back."  [elaborate lamentations]

[give option to give lethian water to the beings, or drink it yourself to forget them]

[conversation options with son, motjer and father]

]






Part Halfway implementation of Phlegethon



Pyretic cyclus is a room in Phlegethon, east of the stygiansplit.
Frozen cyclus is a room in Cocytus, west of the stygiansplit.
Frozen cyclus is east of pyretic cyclus.
Pyretic cyclus is west of the frozen cyclus.

After going from stygiansplit:
	say "As you make your choice, you realise that the path behind you has disappeared. You're left stranded between the two extremes.";
	move the wisp to Pyretic Cyclus;
	change the east exit of stygiansplit to pyretic cyclus;
	change the west exit of stygiansplit to frozen cyclus;
	change the east exit of frozen cyclus to pyretic cyclus;
	change the west exit of pyretic cyclus to frozen cyclus;
	try silently looking.






The printed name of pyretic cyclus is "Lagoon Phlegethon".






pyreticcyclusdone is a truth state that varies. pyreticcyclusdone is false.


The scent of pyretic cyclus is "The smell of charred flesh and sulphur fills the air."

The sound of pyretic cyclus is "The soundscape of Phlegethon is a haunting symphony of anguish and despair. The crackling of flames and tortured screams weave together, forming a chorus that echoes through the fiery abyss."


The description of pyretic cyclus is "Phlegethon stretches before you, a lagoon of fire that both terrifies and fascinates. Flames dance and flicker, casting a hellish glow on the tormented souls that inhabit this forsaken place. The air is thick with the stench of burning flesh and the oppressive heat is stifling, forcing you to constantly wipe the sweat from your brow.

The searing riverbank is littered with the writhing forms of countless souls, some recognizable as the tragic figures of Cinyras and Pygmalion. [paragraph break][cinyraslink], your sibling, is forever tormented by his obsession with material wealth that led to the suffering of his people. He lays impaled on copper odelós while trying to reach for a pile of drachma, oblivious that his shackles are forge from the same desires that consumed him.

[pygmalionlink], your father's father, is the sculptor-king who once crafted the beautiful Galatea, a statue that came to life only to revert back to its inanimate form upon his death. Now, he is trapped in an endless cycle of creating and losing the object of his love. His hands, charred and cracked, continue to shape and mold molten stone, but the fiery waters rise and consume each creation, condemning him to an eternity of heartache."

Cinyras is a man.Cinyras is in pyretic cyclus.


After going from pyretic cyclus to frozen cyclus:
try silently looking.

 cinyraslink is an action applying to nothing.
 pygmalionlink is an action applying to nothing.

To say cinyraslink:
	place a link to the command "talk to Cinyras" called "cinyraslink" reading "Cinyras"; 

To say pygmalionlink:
	place a link to the command "talk to Pygmalion" called "pygmalionlink" reading "Pygmalion"; 

Pygmalion is a man. Pygmalion is in pyretic cyclus.

Instead of talking to Cinyras, say "As you try to call out, you realize that your voice is swallowed by the cacophony of screams. Cinyras wouldn't recognize you or even acknowledge your presence. It becomes clear that his torment is not the result of a mere misunderstanding but a manifestation of the deep-seated corruption and obsession that led to his downfall. He truly is lost to this infernal place, forever bearing the weight of his actions."

Instead of talking to Pygmalion, say "As you approach the tormented figure of Pygmalion, you can see the extent to which his obsession with his own creation has consumed him. The flames surrounding him seem to mirror the once burning desire that led him to reject human connections in favor of an artificial ideal. As you attempt to reach out, you realize that he is beyond salvation, forever trapped in a cycle of longing and regret for the love he had crafted but could never truly possess."

The description of Cinyras is "Your brother appears as a gaunt, spectral figure, his once regal visage now etched with lines of anguish and suffering. His eyes, once sharp and calculating, are now clouded and hazy, having lost all reason. The copper odelói piercing his body glint menacingly, their metallic sheen a bitter reminder of the wealth he so fervently sought in life."

The description of Pygmalion is "Pygmalion's figure, now a shadow of the artist he once was, shares an uncanny resemblance to you, particularly in the structure of the nose. His once strong and dexterous hands that breathed life into his sculptures are now twisted and disfigured, a reflection of his obsession with creating the perfect form. His eyes, which once sparkled with creativity and love for his crafted beings, are now hollow and filled with an all-consuming yearning for that which is forever out of his reach. "


After quipping when the current quip is wispgreet and the location is pyretic cyclus:
	enable the whatisok quip for wisp;




phlegethoncounter is a number that varies. phlegethoncounter is 0.

talkflag is a truth state that varies. talkflag is false.

Every turn when the location is pyretic cyclus and talkflag is false:
	increase phlegethoncounter by 1;
	If phlegethoncounter is greater than 3:
		say "The wisp breaks the silence of your thoughts.[line break] 'It's okay, you know.'";
		now the quiptext of wispgreet is "";
		enable the whatisok quip for wisp;
		try flipping;
		try talking to wisp.

Flipping is an action applying to nothing.

Before flipping:
	enable the whatisok quip for wisp;

After flipping:
	enable the whatisok quip for wisp;

Carry out flipping:
	enable the whatisok quip for wisp; 	
	now talkflag is true.

Table of wisp Conversation (continued)
prompt	response	enabled
"What is okay?"	whatisok	0
"I caused his death."	ousted	0
"What's the difference between Pygmalion and me, then?"	whatisdiff	0
"Are you..?"	notyet	0


Table of Quip Texts (continued)
quip	quiptext
whatisok	"'That there is nothing to do here. These are not your sins, nor your obsessions.'"
ousted	"'[wispvoice style]Did you?'[end style][keywaiting]

'In a way. [line break]Cinyras was always clever, skilled at negotiating favorable deals. He got into the good graces of the Achaeans, amassed great wealth.. He was my king.'[keywaiting]

The wisp pauses, its floating ever so slightly in front of you. There is an odd silence, now that words are leaving your chest that pierces the veil of suffering of those around you. As if all other sounds get drowned out in her light.[keywaiting]

'..There was a sickness, spreading. Phaedra and i..' [keywaiting]

The wisps[apostrophe] glow pulses once, as if in silent acknowledgement, distracting you momentarily from your thoughts.[keywaiting]

'-we knew the sickness. We'd seen the like before, in our travels. I told him how to take care of the people;[keywaiting]

It would be too costly, he said.'[paragraph break]Your tone grows bitter as you continue. 'I took the throne, [italic type]exiled[roman type]him to his opulent residence in the mountains. Less than a year later he threw himself off the cliff by Aphrodite's grove, shamed that he was bested by a god in playing the lyre.'[keywaiting]

[wispvoice style]'So you simply took care of the people. That doesn't sound like a sin, to me.'[end style]

You have nothing else to add on this matter." 
whatisdiff	"'[wispvoice style]The difference..?[end style]' [keywaiting]

You hold your breath, for a moment. Her voice. [keywaiting]

[wispvoice style]'There is no difference. Hopeless, overwhelming, absolute and all consuming love seems to run in the family.'[end style] Φῶς pauses for a moment, and you cross your arms in a vaguely defensive fashion in response. [keywaiting]

[wispvoice style]'Which is why i urge you, caution you, beg you. It[apostrophe]s easy to lose sight of what can be done, in favor of what you wish you could do.'[end style][keywaiting]

Her words stir something in your breast. A vague pain, a bitterness you want to wash out of the back of your throat.[keywaiting]
[if frozencyclusdone is false]Fos seems to hesitate for a moment, evidently wanting to urge you forward, but lacking the right words to do so.[end if]"[keywaiting]
notyet	"'[wispvoice style]Just a bit longer, Akestor.'[end style]"

wispvoice is a vorple style.


After quipping when the current quip is whatisok:
	enable the ousted quip;
	enable the whatisdiff quip;

After quipping when the current quip is whatisdiff:
	now serwisp is true;
	if frozencyclusdone is true:
		say "There is a moment of clarity, where the haze of lethe relents, showing the obvious.[paragraph break]";
		enable the notyet quip;
	now pyreticcyclusdone is true.
	
After quipping when the current quip is notyet:
	terminate the conversation;
	now readytogo is true;
	disable the nvm quip for wisp;
	enable the pissedwife quip for wisp;
	move the player to acherianarea;
	move the wisp to acherianarea; [progcheck in phlegethon]
	
	
After quipping when the current quip is nvm and the location is pyretic cyclus:
	say "Only silence acknowledges you."



Part Halfway implementation of Acheron

desperateflag is a truth state that varies. desperateflag is false.

The printed name of acherianarea is "Shallows of Acheron."

wifelink is an action applying to nothing.

To say wifelink:
	place a link to the command "examine Phaedra" called "wifelink" reading "Phaedra"; 

After examining wisp when the location is acherianarea:
	place an image "Phaedra.png" with the description "You see her.", centered.

Carry out looking in acherianarea for the first time:
	now seenher is true;
	say "[movingtext] [paragraph break]";
	now the quiptext of wispgreet is "[wispvoice style]'And what would you have done?'[end style][paragraph break] The words are exactly as you expected them. [line break]You hear her voice, and the wisp's tiny form expands, gradually taking on an unmistakeably familiar shape. [wifelink]. [paragraph break]
And she does not look pleased.[keywaiting]";
	enable the pissedwife quip for wisp;
	now the printed name of wisp is "Phaedra";
	now wisp is proper-named;
	now the description of wisp is "Phaedra is as gorgeous as you remember her to be. Blue eyes and hair streaked with silver, the creases around her eyes making her gaze all the more piercing, at the moment.";
	try examining wisp;
	now the wisp is female;
	try talking to wisp.
	
		


	
lastflag is a truth state that varies. lastflag is false.

AcherianArea is a room in Acheron. The description of Acherianarea is "You can still hear the roar of the waterfall that dropped you here, but you see nothing; Only an enormous, shallow river surrounds you. At the bank you can see shades of the recently deceased, still wounded by the method that brought them there."

Victoryflag is a truth state that varies. Victoryflag is false. 

[fix
Instead of going from Acherian Area to Underworldexit:
	if victoryflag is false :
		say "You reach the exit of the underworld, having done little to nothing. As the sun truly dawns, you find yourself drenched in water and surrounded by worried servants; They clamor, saying you fell asleep in the sea. That sounds right, to your ears..yet you can't shake the feeling that you're forgetting something, something.. important.";
		end the story finally.
	]

Table of wisp Conversation (continued)
prompt	response	enabled
"Phaedra, why did you not tell me?"	pissedwife	0
"I simply wanted you back."	wantedback	0



Table of Quip Texts (continued)
quip	quiptext
pissedwife	"[wispvoice style]'Tell you? And by Apollo what would you have done my glorious, beautiful, bumbling fool? Come to Hades itself to get me?'[end style]"
icantbelieveyou	"[wispvoice style]'I can't believe you, Akestor. What did you expect would happen? How did you think this would go? Or did you think that just because you heard how Orpheus and Heracles experienced the underworld, that you would miraculously raise the dead?'[end style]"
imissedyoutoo	"[wispvoice style]'I missed you too.' Her voice softens, but only for a moment. 'Still, what did you expect would happen? How did you think this would go? Or did you think that just because you heard how Orpheus and Heracles experienced the underworld, that you would avoid all their failures and miraculously raise the dead?'[end style]"
wantedback	"Her demeanour changes, a tired little smile appearing on her face. [wispvoice style]'I'm just happy nothing happened to you, while you were here, beloved. But you know what must be done next.'[end style] [paragraph break]
What must be done next. You could stay. Stay, with her, here, in the cusp of the underworld, until your essence erodes, until you forget who you are, what you are, until true lethe overtakes you, stuck outside the cyclus. No oblivion, no true punishment; But that would condemn her to seeing you lose yourself, breath by breath.

Or you could go. Return to the living, carry on, continue to bear the burden and responsibility of life. And leave her behind. An impossible decision."
youdo	"[wispvoice style]'You always say that, when you [italic type]do[roman type] know what to do, Akestor. [keywaiting] [paragraph break] Go. Euphemios is returning with a wife and son, and Adonis, well.. You [italic type]need[roman type] to tell him that sharing his bed with the divine is only going to end badly. Please.[end style] [golink].' "

golink is an action applying to nothing.

To say golink:
	place a link to the command "Go" called "golink" reading "Go"; 


finishgaming is an action applying to nothing.

Understand "go" or "leave" or "go out" as finishgaming when the location is acherianarea.

Carry out finishgaming:
	if lastflag is true:
		clear the screen;
		say "You hesitate for one last heartbeat. She sees it, and for a brief moment, her form turns.. material. 
She steals a kiss, without letting it linger. There is no time, and Charon could be around the corner.
[wispvoice style]'Go. Dream of me.'[end style] [keywaiting]
[paragraph break]
You take a step back. And then another. Turning your back to her, is the hardest thing you've ever done.
But you know, that behind you, she is smiling.

There is a light, ahead, the souls around you having disappeared. It's just you, and the entrance to the underworld, a blinding light in front of you. You walk through.";[keywaiting]
		place an image "walkout.png" with the description "The sun rises", centered;
		say " As the sun truly dawns, you find yourself drenched in water and surrounded by worried servants; They clamor, saying you fell asleep in the sea. Another one says that a ship can be seen in the harbour, bearing your colors.[keywaiting] [paragraph break] Euphemios.[paragraph break][keywaiting]
For a moment, you feel like you're forgetting something. The feeling persists the entire day, even after seeing your son, his wife, your grandson. Even after chasing Adonis out of the royal bedchamber, your foster-son cackling drunk after spending the night with Dionysus.[paragraph break][keywaiting]
Weary, you fall asleep in a bed made for two.[keywaiting]

[wispvoice style]'Took you long enough. Did you tell him?' [end style][keywaiting]

'I did. He didn't seem to listen'[keywaiting]

Phaedra scoffs, a half smile on her lips. You know she didn't expect him to.[keywaiting]

[wispvoice style]'And Euphemios?'[end style][keywaiting]

You spend the night talking with her. And so passes every night after that, until one night, peacefully, the sun doesn't rise.[keywaiting]

You open your eyes, spitting out an obol. She is there, looking utterly amused.[keywaiting] [paragraph break] [wispvoice style]'You should see your face.'[end style]";
	end the story finally.
	
The print obituary headline rule is not listed in any rulebook. 

After quipping when the current quip is icantbelieveyou:
	enable the wantedback quip;

	

After quipping when the current quip is youdo:
	now lastflag is true;
	disable the wantedback quip for wisp;
	disable the nvm quip for wisp;
	
Newdead is scenery. Newded is in acherianarea. Understand "Shades" or "dead" or "souls" as newded.
The description of newdead is "A stream of the recently diseased seems confused by the shallow waters, while the older ones, those without obols lament their fate."

Table of Quip Followups (continued)
quip	option	result
pissedwife	"Well, yes."	icantbelieveyou
pissedwife	"I missed you."	imissedyoutoo
imissedyoutoo	"I simply wanted you back."	wantedback
icantbelieveyou	"I simply wanted you back."	wantedback
wantedback	"I don't know what to do, my love."	youdo




PART ENDGAME

This is the clickable print the final question rule:
	let named options count be 0;
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry, increase named options count by 1;
	if the named options count is less than 1, abide by the immediately quit rule;
	say "Would you like to " (A);
	repeat through the Table of Final Question Options:
		if the only if victorious entry is false or the story has ended finally:
			if there is a final response rule entry 
				or the final response activity entry [activity] is not empty:
				if there is a final question wording entry and final question wording entry matches the regular expression "<A-Z>{2,}":
					place a link to command text matching regular expression reading final question wording entry;
					decrease named options count by 1;
					if the named options count is 1:
						if the serial comma option is active, say ",";
						say " or " (B);
					otherwise if the named options count is 0:
						say "?[paragraph break]";
					otherwise:
						say ", ";

The clickable print the final question rule is listed instead of the print the final question rule in the before handling the final question rulebook.


PART IDEAS AND COMMENTS

[ 
Use maybe Maslows hierarchy of needs to cover each of the five rivers to categorize each aspect of his memories to enable the player to create an image of a full person before making the decision if they want to live or die

From the bottom and up; Physiological needs; "Air, water, shelter, food, sleep, clothing, reproduction" essentially his own physical needs and preferences, memories of food he enjoyed and the circumstances, same with drink, smoking, physical stuff like what his work was like and how his body is shaped, scars and marks and their stories, theres a lot to work with here


Safety needs; "Personal security, employment, resources, health, property" Memories of his actual job and role, his conquests as a warrior and king, his lands and what they were like, his riches and trophies and how he got them


Love and belonging; "Friendship, intimacy, family, sense of connection" Memories of the people around him that he loved and how they percieved him, perhaps how he lost them, like family and friends and advisors and his horse or something


Esteem; "Respect, self-esteem, status, recognition, strength, freedom" Something closer to his own memories and how he viewed himself, what he thought of himself and how he justified his own actions, maybe memories coming closer and closer to his own current death and the war they are currently fighting, without actually touching upon the death of his partner and the deal he made with persie


Self-actualization; "Desire to become the most one can be"   treat this purely symbolical as this is the cathegory I would like to put narcissus in, basicly the river that will tell him more about what he actually looks like and maybe give him a more sober internal monologue without the madness and without the worries of his mortal life, who he is at his core, perhaps the soreness and the agony of being mortal still lingers but he still has this drive to go onwards, and maybe that is the first choice he has to make that sort of makes the wisp manifest? Dunno, but this should be the simplest place with the least amount of "content" and the only conflict to resolve there should be Narcissus and his sad dead  lover

]
