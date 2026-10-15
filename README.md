# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.delay.digital.1.1
   
By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.delay.digital.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.delay.digital](https://github.com/guaguanco127/br.delay.digital)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9, or RNBO.

## Links

[About](#About)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.delay.digital/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   
[Max/MSP RNBO for External or VST](https://github.com/guaguanco127/br.delay.digital/tree/main/RNBO%20Patchers%20for%20External%20or%20VST) To build your own Max external, or a VST or AU audio plugin (needs RNBO)  
[Ableton Max for Live Device](https://github.com/guaguanco127/br.delay.digital/tree/main/Ableton%20Max%20For%20Live) To use inside of Ableton Suite   

## <a name="About"></a>About

A clean stereo digital delay. Changing the delay time never bends the pitch: the sound crossfades from the old time to the new one, from a quick cut to a slow blur where both rhythms play at once. Three modes (Linked, Stereo, Ping-Pong), straight or cross feedback, tone filters on the echoes, Hold to freeze the loop, and On/Off. No saturation: at Feedback 1 the repeats never fade. Every change fades, mode switches included, so nothing clicks. Works at any sample rate.

You can use it as an abstraction within Max/MSP or as a Max for Live device within Ableton Live Suite. With RNBO you can also build your own Max external or VST/AU plugin from the included RNBO patch.

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

## <a name="New11"></a>What's new in 1.1

- New [State outlet](#State) on the UI version (the one with controls): its last outlet sends the settings as named messages the moment they change, so moving a control, numbers into the inlets and preset recalls all show up. Use it to keep a display, Mira or another patch in sync.
- The plain version, the RNBO patch and the Max for Live device have no State outlet: whatever drives them already knows the values, and in Live or a DAW the controls are normal automatable parameters. Their outlets are unchanged.

## <a name="How"></a>How it works

Each side has two delay lines. The first holds the input and is read at that side's own time: the first echo. The second holds the feedback and is read at the loop time: every later echo. Each line has two read heads: when a time changes, the spare head jumps to the new time and the sound crossfades over to it, so a playing head never moves and the pitch never bends. The two fade gains always add up to 1, so a fade inside the feedback loop never adds level. The modes only change where the heads go, which is why a mode change crossfades instead of clicking. The 10-second lines are sized for 192 kHz, so allocation is fixed at about 62 MB per instance.

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.delay.digital.1.1 | No UI. The plain object to patch with |
| br.delay.digital.ui.1.1 | With Mode and Route menus, Hold and On/Off buttons and a dial for every other control, ready for a [bpatcher] (208 x 146) |
| _br.delay.digital.example.1.1 | Example patch: open this first. Pick a source (drum loop, voice, synth plucks, a stereo pair or your mic) |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Mode | Signal or Int (UI: Int only) | 0 Linked, 1 Stereo, 2 Ping-Pong | 0 |
| 4 | Time L | Signal or Float (UI: Float only) | ms 1 to 10000 | 375 |
| 5 | Time R | Signal or Float (UI: Float only) | ms 1 to 10000 (ignored in Linked) | 750 |
| 6 | Xfade | Signal or Float (UI: Float only) | ms 5 to 5000 | 50 |
| 7 | Feedback | Signal or Float (UI: Float only) | 0 to 1 | 0.4 |
| 8 | Route | Signal or Int (UI: Int only) | 0 Straight, 1 Cross | 0 |
| 9 | Hold | Signal or Int (UI: Int only) | 0 off, 1 on | 0 |
| 10 | Low Cut | Signal or Float (UI: Float only) | Hz 20 to 2000 | 80 |
| 11 | High Cut | Signal or Float (UI: Float only) | Hz 200 to 20000 | 8000 |
| 12 | Dry/Wet | Signal or Float (UI: Float only) | % 0 to 100 | 50 |
| 13 | On/Off | Signal or Int (UI: Int only) | 0 off, 1 on | 1 |

Outlets 1 / 2: Left Out / Right Out (Signal)  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Every control fades, so you can change anything while audio plays, and every control also takes a signal or a number. A time changed by a signal crossfades in steps, one Xfade at a time (the example patch steps Time L with a slow 1000 ms Xfade). In the UI version a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

## <a name="State"></a>State outlet

The last outlet of the UI version (State) sends the current settings as named messages the moment they change, for example `mode 1`, `timel 375.`, `feedback 0.4`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route mode timel timer xfade feedback fbroute hold lowcut highcut drywet on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| mode | Int | menu index: 0 = Linked, 1 = Stereo, 2 = Ping-Pong |
| timel | Float | ms, 1 to 10000 |
| timer | Float | ms, 1 to 10000 |
| xfade | Float | ms, 5 to 5000 |
| feedback | Float | 0 to 1 |
| fbroute | Int | menu index: 0 = Straight, 1 = Cross |
| hold | Int | 0 = off, 1 = on |
| lowcut | Float | Hz, 20 to 2000 |
| highcut | Float | Hz, 200 to 20000 |
| drywet | Float | %, 0 to 100 |
| on | Int | 0 = off, 1 = on |

The plain version has no State outlet: whatever drives it already knows the values. Mode and Route are sent as the menu index, the same number their inlets take, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows this.
