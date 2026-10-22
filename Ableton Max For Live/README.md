# Ableton Max for Live device: br.delay.digital.1.2  
   
By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.digital.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.digital](https://github.com/guaguanco127/br.delay.digital)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What's new in 1.2](#New12)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  

## <a name="About"></a>About

A clean stereo digital delay. Changing the delay time never bends the pitch: the sound crossfades from the old time to the new one, from a quick cut to a slow blur where both rhythms play at once. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, Hold to freeze the loop, and On/Off. No saturation: at Feedback 1 the repeats never fade. Every change fades, mode switches included, so nothing clicks. Works at any sample rate.

A compact stereo audio effect with eleven controls, all Live parameters, so you can automate them or map them to a controller. Two parameter banks: **Delay** (Mode, Time L, Time R, Xfade, Feedback, Route, Hold, Dry/Wet) and **Tone + On/Off** (Low Cut, High Cut, On/Off). The device's On/Off fades and keeps the delay running; Live's own device switch bypasses it completely.

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

## <a name="New12"></a>What's new in 1.2

- **Readable dials in the Max for Live device:** the dials' values and needles are now white, so they stand out on the black panel (with Live's default theme they were dark and hard to read). The abstraction, RNBO patch and sound are unchanged; every file now has the version 1.2.

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.delay.digital.1.2.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.
