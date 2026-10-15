# Max/MSP RNBO Patch for External or VST Creation: br.delay.digital.rnbo.1.1  
   
By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.digital.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.digital](https://github.com/guaguanco127/br.delay.digital)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[What is a VST or AU Audio Plugin?](#VST)  
[How To Export as a Max/MSP External](#Export)  
[How To Export as a VST or AU Audio Plugin](#ExportVST)  

## <a name="About"></a>About

A clean stereo digital delay. Changing the delay time never bends the pitch: the sound crossfades from the old time to the new one, from a quick cut to a slow blur where both rhythms play at once. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, Hold to freeze the loop, and On/Off. No saturation: at Feedback 1 the repeats never fade. Every change fades, mode switches included, so nothing clicks. Works at any sample rate.

Inside [rnbo~], the eleven params (Mode, Time_L, Time_R, Xfade, Feedback, Route, Hold, Low_Cut, High_Cut, Dry_Wet, On_Off) are the plugin parameters, with the same ranges and dial curves as the Max and Live versions. Inlets 3 to 13 set the same params, so the external has the same thirteen inlets as the abstraction. The gen~ code inside is the same as br.delay.digital.1.1.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters. The State outlet is on the UI version of the abstraction only.

**Mode:**  
**Linked:** both sides use Time L (Time R is ignored, and greyed out in the UI). Echoes at t, 2t, 3t...  
**Stereo:** each side has its own time.  
**Ping-Pong:** each side's first echo comes at its own time, then both sides repeat every T, where T is the longer of the two times. Time L 375 / Time R 750 gives L 375, R 750, L 1125, R 1500: alternating every 375 ms. Equal times hit both sides together.  
Switching modes crossfades like a time change: the tails carry on, and nothing clicks.  

**Time L / Time R:** 1 to 10000 ms. Defaults 375 and 750.  

**Xfade:** 5 to 5000 ms. How long a time or mode change takes to crossfade to the new time. Short = a quick cut; long = both times play at once and blur into each other. The dial is curved so most of its travel is under 1 second (1000 ms at about 72 %). If you move a time again during a fade, the latest value is taken when the fade ends, so a moving dial steps cleanly from one time to the next. Default 50.  

**Feedback:** 0 to 1. How much of each repeat goes round again. At 1 the repeats never fade. There is no saturation; a safety ceiling only stops a full loop that keeps taking in loud input from building past +6 dBFS. Default 0.4.  

**Route:** Straight keeps each side's repeats on that side. Cross sends them to the other side: Stereo + Cross is the classic ping-pong, where each bounce takes the time of the side it lands on. Fades over 20 ms. Default Straight.  

**Hold:** stops taking input and keeps what is on the loop repeating unchanged, forever: the loop bypasses the tone filters while held, so it doesn't darken. Echoes already on their way still land on the loop. Move the times while it is held to re-slice it. Turn Hold off and the loop decays at the Feedback setting again. Default off.  

**Low Cut / High Cut:** 20 to 2000 Hz and 200 to 20000 Hz. The tone filters sit at the playback head, so every echo goes through them and the loop is fed from the filtered signal: each repeat is a little thinner and darker than the last. They work even with Feedback at 0. Defaults 80 and 8000.  

**Dry/Wet:** 0 to 100 %, equal power. Default 50.  

**On/Off:** Off fades the echoes out and brings the dry signal up to full level, whatever the Dry/Wet. The delay keeps running underneath, so turning it back on never plays old echoes from before it was turned off. Default on.  

**Memory:** the four 10-second delay lines are sized for 192 kHz, about 62 MB per instance. Fine for a plugin or an external; heavy for a web export.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="VST"></a>What is a VST or AU Audio Plugin? 

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.delay.digital.rnbo.1.1.maxpat. Drop a sample of your own onto the [playlist~] to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.delay.digital.1.1~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.delay.digital.1.1, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.delay.digital.1.1~ in any patch. It has the same inlets as the abstraction, except that the eleven controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer** 

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.delay.digital.rnbo.1.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The eleven parameters show up in your DAW for automation.
