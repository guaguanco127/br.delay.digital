{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1420.0,
            330.0
        ],
        "description": "br.delay.digital.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-2",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Mode (Signal/Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes crossfade like a time change, no clicks. Default 0",
                    "id": "obj-3",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Time L (Signal/Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes crossfade to the new time, no pitch bend. Default 375",
                    "id": "obj-4",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Time R (Signal/Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750",
                    "id": "obj-5",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Xfade (Signal/Float) ms 5. to 5000. How long a time or mode change takes to crossfade to the new time. Short = quick cut, long = both times blur into each other. Changes during a fade are taken when it ends, latest wins. Default 50",
                    "id": "obj-6",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Feedback (Signal/Float) 0. to 1. How much of each repeat goes round again. At 1 the repeats never fade. Default 0.4",
                    "id": "obj-7",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Feedback Route (Signal/Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Fades over 20 ms, no clicks. Default 0",
                    "id": "obj-8",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Hold (Signal/Int) 0 off, 1 on: stops taking input and keeps what is on the loop repeating unchanged, forever. Off: the loop decays at the Feedback setting again. Fades over 20 ms. Default 0",
                    "id": "obj-9",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Low Cut (Signal/Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80",
                    "id": "obj-10",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "High Cut (Signal/Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000",
                    "id": "obj-11",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        765.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Signal/Float) % 0. to 100. Equal power. Default 50",
                    "id": "obj-12",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        840.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "On/Off (Signal/Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1",
                    "id": "obj-13",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        915.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 13,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            134.0,
                            87.0,
                            1300.0,
                            884.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        29.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        91.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        240.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 3 @comment \"Mode (Signal/Int) 0 Linked 1 Stereo 2 Ping-Pong -- default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        215.0,
                                        350.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 4 @comment \"Time L (Signal/Float) ms 1 to 10000 -- default 375\" @default 375"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        277.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 5 @comment \"Time R (Signal/Float) ms 1 to 10000 -- default 750\" @default 750"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        339.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 6 @comment \"Xfade (Signal/Float) ms 5 to 5000 -- default 50\" @default 50"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        401.0,
                                        240.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 7 @comment \"Feedback (Signal/Float) 0 to 1 -- default 0.4\" @default 0.4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        463.0,
                                        350.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 8 @comment \"Feedback Route (Signal/Int) 0 Straight 1 Cross -- default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        525.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 9 @comment \"Hold (Signal/Int) 0 off 1 on -- default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        587.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 10 @comment \"Low Cut (Signal/Float) Hz 20 to 2000 -- default 80\" @default 80"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        649.0,
                                        240.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 11 @comment \"High Cut (Signal/Float) Hz 200 to 20000 -- default 8000\" @default 8000"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        711.0,
                                        350.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 12 @comment \"Dry/Wet (Signal/Float) % 0 to 100 -- default 50\" @default 50"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        773.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 13 @comment \"On/Off (Signal/Int) 1 on 0 off -- default 1\" @default 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.delay.digital.1.0 -- stereo clean digital delay\n// Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/\n// MUST MATCH: the core, the UI by reference and the M4L device embed this same code\n// in1/in2 audio L/R\n// in3 mode 0 Linked, 1 Stereo, 2 Ping-Pong\n// in4 time L ms 1..10000 and in5 time R ms 1..10000\n// in6 xfade ms 5..5000: how long a time change takes to crossfade to the new time\n// in7 feedback 0..1: at 1 the repeats never fade\n// in8 feedback route 0 Straight: each side feeds itself, 1 Cross: each side feeds the other\n// in9 hold 0/1: stop taking input and keep what is on the loop playing forever\n// in10 low cut Hz 20..2000 and in11 high cut Hz 200..20000: tone of the repeats\n// in12 dry/wet % 0..100\n// in13 on/off 1 on, 0 off: off = the dry signal at full level, no echoes\n// out1/out2 audio L/R\n//\n// Why it sounds clean: a time change never moves a read head while it is playing, so the pitch\n// never bends. Each delay line has two read heads. When the time changes, the silent head jumps to the\n// new time and the sound crossfades over to it. If the time is still moving when a crossfade ends,\n// the next one starts from there, so dragging a dial steps cleanly instead of bending.\n// Changes that arrive during a fade are not lost: the latest one is taken when the fade ends.\n// Long fades play both times at once, so the rhythm blurs from one to the other.\n// The two fade gains always add up to 1, not equal power: the crossfade sits inside the feedback\n// loop, and equal power would add up to +3 dB on every pass when both heads play the same sound.\n// The tone filters sit at the playback head: every echo you hear goes through them, and the loop\n// is fed from the filtered signal, so each repeat is a little darker and thinner than the one before.\n// No saturation. Feedback stops at 1, where the repeats hold their level. A safety ceiling on the\n// loop does nothing below 0 dBFS and only stops a full loop that keeps taking input from building up.\n//\n// Each side has two delay lines. The FIRST line holds the input and is read at the side's own time:\n// that is the first echo. The LOOP line holds the feedback and is read at the loop time: those\n// are all the later echoes. The modes only change where the heads go:\n//   Linked     both sides use Time L; loop time = the same, so echoes at t, 2t, 3t\n//   Stereo     each side uses its own time, loop time = its own time\n//   Ping-Pong  each side's first echo at its own time, then both repeat every T = the longer time,\n//              so L 250 / R 500 gives L 250, R 500, L 750, R 1000: alternating every 250 ms\n// Feedback Cross sends each side's repeats to the other side's loop line. Stereo + Cross is the classic\n// ping-pong: each bounce takes the time of the side it lands on. Linked + Cross swaps a stereo image\n// on every repeat. Cross fades over 20 ms: repeats already on the line keep playing, only where\n// they go next fades across.\n// Nothing is switched in or out: a mode change moves heads through the same crossfade as a\n// time change, so the sound never jumps and the tails carry on through the change.\n//\n// HOLD fades the input out and feedback up to 1 over 20 ms, and the loop stops passing through\n// the tone filters, so what is on the loop repeats unchanged forever. Echoes already on their way\n// still land on the loop. Turn Hold off and the loop decays at the Feedback setting again.\n//\n// ON/OFF fades over 20 ms. Off: the echoes fade out and the dry signal comes up to full level,\n// whatever the Dry/Wet. The delay keeps running underneath, so turning it back on never plays\n// old echoes from before it was turned off.\n\n// 10.1 s at 192 kHz: 10000 ms at any sample rate\nDelay firstL(1939200);\nDelay firstR(1939200);\nDelay loopL(1939200);\nDelay loopR(1939200);\nHistory started(0);\nHistory fLcur(0);\nHistory fLnxt(0);\nHistory fLr(0);\nHistory fRcur(0);\nHistory fRnxt(0);\nHistory fRr(0);\nHistory lLcur(0);\nHistory lLnxt(0);\nHistory lLr(0);\nHistory lRcur(0);\nHistory lRnxt(0);\nHistory lRr(0);\nHistory fbS(0);\nHistory holdS(0);\nHistory lowS(80);\nHistory highS(8000);\nHistory mixS(50);\nHistory crossS(0);\nHistory onS(1);\nHistory lowL(0);\nHistory lowR(0);\nHistory highL(0);\nHistory highR(0);\n\n// read all state first\nst = started;\na0 = fLcur;\na1 = fLnxt;\nar = fLr;\nb0 = fRcur;\nb1 = fRnxt;\nbr = fRr;\np0 = lLcur;\np1 = lLnxt;\npr = lLr;\nq0 = lRcur;\nq1 = lRnxt;\nqr = lRr;\nfb = fbS;\nhd = holdS;\nlo = lowS;\nhi = highS;\nmx = mixS;\ncr = crossS;\nen = onS;\nlzL = lowL;\nlzR = lowR;\nhzL = highL;\nhzR = highR;\n\n// controls glide over 20 ms so nothing clicks; the times crossfade instead\nk = 1 - exp(-1 / mstosamps(20));\nfb = fb + (clip(in7, 0, 1) - fb) * k;\ncr = cr + (clip(floor(in8 + 0.5), 0, 1) - cr) * k;\nhd = hd + (clip(floor(in9 + 0.5), 0, 1) - hd) * k;\nlo = lo + (clip(in10, 20, 2000) - lo) * k;\nhi = hi + (clip(in11, 200, 20000) - hi) * k;\nmx = mx + (clip(in12, 0, 100) - mx) * k;\nen = en + (clip(floor(in13 + 0.5), 0, 1) - en) * k;\n\n// HEAD TARGETS for the mode\nmode = clip(floor(in3 + 0.5), 0, 2);\ntL = clip(mstosamps(clip(in4, 1, 10000)), 2, 1939000);\ntR = clip(mstosamps(clip(in5, 1, 10000)), 2, 1939000);\nfirstTL = tL;\nfirstTR = (mode == 0) ? tL : tR;\nloopTL = firstTL;\nloopTR = firstTR;\nif (mode == 2) {\n    loopTL = max(tL, tR);\n    loopTR = loopTL;\n}\n\n// At load every head starts on its target, no crossfade\nif (st == 0) {\n    a0 = firstTL;\n    b0 = firstTR;\n    p0 = loopTL;\n    q0 = loopTR;\n    st = 1;\n}\n\n// CROSSFADES: each line has a playing head, cur, and a spare head, nxt. r is the fade, 0 = idle.\n// Idle and the target has moved: the spare head jumps to the target and the fade starts.\n// Fading: r climbs to 1, then the spare head becomes the playing head and the fade goes idle.\n// The target is only read when a fade starts, so a moving dial gives a chain of clean fades.\ninc = 1 / mstosamps(clip(in6, 5, 5000));\nif (ar == 0) {\n    if (abs(firstTL - a0) > 0.5) {\n        a1 = firstTL;\n        ar = inc;\n    }\n} else {\n    ar = ar + inc;\n    if (ar >= 1) {\n        a0 = a1;\n        ar = 0;\n    }\n}\nif (br == 0) {\n    if (abs(firstTR - b0) > 0.5) {\n        b1 = firstTR;\n        br = inc;\n    }\n} else {\n    br = br + inc;\n    if (br >= 1) {\n        b0 = b1;\n        br = 0;\n    }\n}\nif (pr == 0) {\n    if (abs(loopTL - p0) > 0.5) {\n        p1 = loopTL;\n        pr = inc;\n    }\n} else {\n    pr = pr + inc;\n    if (pr >= 1) {\n        p0 = p1;\n        pr = 0;\n    }\n}\nif (qr == 0) {\n    if (abs(loopTR - q0) > 0.5) {\n        q1 = loopTR;\n        qr = inc;\n    }\n} else {\n    qr = qr + inc;\n    if (qr >= 1) {\n        q0 = q1;\n        qr = 0;\n    }\n}\n\n// read every head before writing. Raised-cosine fade, the two gains add up to 1.\n// An idle line reads one head only\ng = 0;\nfl = firstL.read(a0, interp=\"spline\");\nif (ar > 0) {\n    g = 0.5 - 0.5 * cos(pi * ar);\n    fl = fl * (1 - g) + firstL.read(a1, interp=\"spline\") * g;\n}\nfr = firstR.read(b0, interp=\"spline\");\nif (br > 0) {\n    g = 0.5 - 0.5 * cos(pi * br);\n    fr = fr * (1 - g) + firstR.read(b1, interp=\"spline\") * g;\n}\nll = loopL.read(p0, interp=\"spline\");\nif (pr > 0) {\n    g = 0.5 - 0.5 * cos(pi * pr);\n    ll = ll * (1 - g) + loopL.read(p1, interp=\"spline\") * g;\n}\nlr = loopR.read(q0, interp=\"spline\");\nif (qr > 0) {\n    g = 0.5 - 0.5 * cos(pi * qr);\n    lr = lr * (1 - g) + loopR.read(q1, interp=\"spline\") * g;\n}\ntapL = fl + ll;\ntapR = fr + lr;\n\n// TONE at the playback head: one-pole low cut, the signal minus its own lowpass, then one-pole high cut.\n// Both the output and the loop take the filtered signal, so the tone works even with Feedback at 0\naLo = 1 - exp(-twopi * lo / samplerate);\naHi = 1 - exp(-twopi * min(hi, samplerate * 0.45) / samplerate);\nlzL = lzL + aLo * (tapL - lzL);\nlzR = lzR + aLo * (tapR - lzR);\nhzL = hzL + aHi * ((tapL - lzL) - hzL);\nhzR = hzR + aHi * ((tapR - lzR) - hzR);\n\n// The input goes onto the first lines; Hold fades it out\nfirstL.write(in1 * (1 - hd));\nfirstR.write(in2 * (1 - hd));\n\n// The loop: Straight feeds each side its own repeats, Cross feeds the other side's.\n// Hold raises feedback to 1 and feeds the loop from the unfiltered heads, so it repeats unchanged.\n// SAFETY CEILING: untouched up to 1, which is 0 dBFS; above that a soft knee that never passes 2, which is +6 dBFS\nfbH = fb + (1 - fb) * hd;\nsL = mix(hzL, tapL, hd);\nsR = mix(hzR, tapR, hd);\nwL = fbH * mix(sL, sR, cr);\nwR = fbH * mix(sR, sL, cr);\nwL = (abs(wL) > 1) ? sign(wL) * (1 + tanh(abs(wL) - 1)) : wL;\nwR = (abs(wR) > 1) ? sign(wR) * (1 + tanh(abs(wR) - 1)) : wR;\nloopL.write(wL);\nloopR.write(wR);\n\n// write state last\nstarted = st;\nfLcur = a0;\nfLnxt = a1;\nfLr = ar;\nfRcur = b0;\nfRnxt = b1;\nfRr = br;\nlLcur = p0;\nlLnxt = p1;\nlLr = pr;\nlRcur = q0;\nlRnxt = q1;\nlRr = qr;\nfbS = fb;\nholdS = hd;\nlowS = lo;\nhighS = hi;\nmixS = mx;\ncrossS = cr;\nonS = en;\nlowL = lzL;\nlowR = lzR;\nhighL = hzL;\nhighR = hzR;\n\n// DRY/WET: equal power, so the level stays even across the range. Off: dry at full level, no wet\nang = mx * 0.01 * pi * 0.5;\ndry = mix(1, cos(ang), en);\nwet = sin(ang) * en;\nout1 = in1 * dry + hzL * wet;\nout2 = in2 * dry + hzR * wet;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-20",
                                    "maxclass": "codebox",
                                    "numinlets": 13,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        29.0,
                                        556.0,
                                        760.0,
                                        910.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        29.0,
                                        1486.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Left Out (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        770.0,
                                        1481.0,
                                        207.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Right Out (Signal)\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-11",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        12
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        0
                                    ],
                                    "destination": [
                                        "obj-21",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        1
                                    ],
                                    "destination": [
                                        "obj-22",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        15.0,
                        110.0,
                        930.0,
                        22.0
                    ],
                    "text": "gen~ @title br.delay.digital.1.0"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-21",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-22",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1005.0,
                        15.0,
                        399.0,
                        33.0
                    ],
                    "text": "br.delay.digital.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "linecount": 10,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1005.0,
                        60.0,
                        320.0,
                        141.0
                    ],
                    "text": "br.delay.digital: a clean stereo digital delay. Changing the time never bends the pitch: the sound crossfades from the old time to the new one (Xfade). Linked, Stereo and Ping-Pong modes, plus a Straight or Cross feedback route. The tone filters sit at the playback head, so every echo is filtered and the loop is fed from the filtered signal: each repeat is a little darker than the last. No saturation; Feedback stops at 1, where repeats never fade, and a safety ceiling only catches a full loop that keeps building. Hold freezes what is on the loop. On/Off fades to the dry signal at full level. All DSP is in the gen~; every control fades, so nothing clicks. Defaults live in the gen~ (in N @default), so unconnected inlets need nothing."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-1",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        1
                    ],
                    "destination": [
                        "obj-22",
                        0
                    ]
                }
            }
        ]
    }
}