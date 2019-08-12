I am a morph that can display various alternate states.

Instructions:

First, do SFStatusMorph initialize.
Example how to initialize me:
SFStatusMorph addMorph: (SFStatusMorph new
	extent: 126 @ 20;
	atState: #default putMorph: (Form fromFileNamed: 'default.pnpg') asMorph;
	atState: #success putAnimatedMorph: (AnimatedImageMorph fromGIFFileNamed: 'success.gif');
	atState: #failure putAnimatedMorph: (AnimatedImageMorph fromGIFFileNamed: 'failure.gif');
	postInitialize) openInHand.