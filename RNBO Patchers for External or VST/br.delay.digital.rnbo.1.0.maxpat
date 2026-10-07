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
            134.0,
            159.0,
            780.0,
            680.0
        ],
        "description": "br.delay.digital.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        218.0,
                        40.0,
                        520.0,
                        33.0
                    ],
                    "text": "br.delay.digital.rnbo.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.0,
                        40.0,
                        150.0,
                        39.0
                    ],
                    "text": "Drop sample into here"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        38.0,
                        98.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        600.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        450.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-7",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left-Signal-In"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right-Signal-In"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Mode (Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes crossfade like a time change, no clicks. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Time L (Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes crossfade to the new time, no pitch bend. Default 375"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Time R (Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Xfade (Float) ms 5. to 5000. How long a time or mode change takes to crossfade to the new time. Short = quick cut, long = both times blur into each other. Changes during a fade are taken when it ends, latest wins. Default 50"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Feedback (Float) 0. to 1. How much of each repeat goes round again. At 1 the repeats never fade. Default 0.4"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Feedback Route (Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Fades over 20 ms, no clicks. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Hold (Int) 0 off, 1 on: stops taking input and keeps what is on the loop repeating unchanged, forever. Off: the loop decays at the Feedback setting again. Fades over 20 ms. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "Low Cut (Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80"
                            },
                            {
                                "type": "event",
                                "index": 11,
                                "tag": "in11",
                                "comment": "High Cut (Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000"
                            },
                            {
                                "type": "event",
                                "index": 12,
                                "tag": "in12",
                                "comment": "Dry/Wet (Float) % 0. to 100. Equal power. Default 50"
                            },
                            {
                                "type": "event",
                                "index": 13,
                                "tag": "in13",
                                "comment": "On/Off (Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 3,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
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
                        "classnamespace": "rnbo",
                        "rect": [
                            100.0,
                            100.0,
                            1500.0,
                            420.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        27.0,
                                        171.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-1",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 1",
                                                "displayName": "Left-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 1 @comment Left-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        234.0,
                                        27.0,
                                        178.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-2",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "out1": {
                                                "attrOrProp": 1,
                                                "digest": "signal from inlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "outlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "inlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal",
                                                "digest": "signal from inlet with index 2",
                                                "displayName": "Right-Signal-In",
                                                "docked": 0
                                            }
                                        ],
                                        "helpname": "in~",
                                        "aliasOf": "in~",
                                        "classname": "in~",
                                        "operator": 0,
                                        "versionId": -1654556303,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "in~ 2 @comment Right-Signal-In"
                                }
                            },
                            {
                                "box": {
                                    "genpatcher": {
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
                                        }
                                    },
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 13,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        42.0,
                                        140.0,
                                        1230.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.delay.digital",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "in1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "number"
                                            },
                                            "reset": {
                                                "attrOrProp": 1,
                                                "digest": "Reset all param and history objects to initial values",
                                                "isalias": 0,
                                                "aliases": [],
                                                "attachable": 1,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bang"
                                            },
                                            "expr": {
                                                "attrOrProp": 2,
                                                "digest": "a gen expression",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "file": {
                                                "attrOrProp": 2,
                                                "digest": "gendsp file to load",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "title": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [
                                                    "t"
                                                ],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "doNotShowInMaxInspector": 1
                                            },
                                            "t": {
                                                "attrOrProp": 2,
                                                "digest": "a title",
                                                "defaultarg": 1,
                                                "isalias": 1,
                                                "aliasOf": "title",
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "exposeparams": {
                                                "attrOrProp": 2,
                                                "digest": "Expose gen params as RNBO params.",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "bool",
                                                "defaultValue": "false"
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "auto",
                                                "digest": "in1",
                                                "hot": 1,
                                                "docked": 0
                                            },
                                            {
                                                "name": "in2",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in3",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in4",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in5",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in6",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in7",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in8",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in9",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in10",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in11",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in12",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in13",
                                                "type": "auto"
                                            },
                                            {
                                                "name": "in14",
                                                "type": "auto"
                                            }
                                        ],
                                        "outputs": [
                                            {
                                                "name": "out1",
                                                "type": "signal"
                                            },
                                            {
                                                "name": "out2",
                                                "type": "signal"
                                            }
                                        ],
                                        "helpname": "gen~",
                                        "aliasOf": "gen~",
                                        "classname": "gen~",
                                        "operator": 0,
                                        "versionId": 179904306,
                                        "changesPatcherIO": 0
                                    },
                                    "text": "gen~ @title br.delay.digital",
                                    "varname": "br.delay.digital"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        400.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-4",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 2",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 2",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        220.0,
                                        43.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-5",
                                    "rnboinfo": {
                                        "needsInstanceInfo": 1,
                                        "argnames": {
                                            "in1": {
                                                "attrOrProp": 1,
                                                "digest": "signal sent to outlet with index 1",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 0,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "inlet": 1,
                                                "type": "signal"
                                            },
                                            "index": {
                                                "attrOrProp": 2,
                                                "digest": "outlet number",
                                                "defaultarg": 1,
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "number",
                                                "mandatory": 1
                                            },
                                            "comment": {
                                                "attrOrProp": 2,
                                                "digest": "mouse over comment",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol"
                                            },
                                            "meta": {
                                                "attrOrProp": 2,
                                                "digest": "A JSON formatted string containing metadata for use by the exported code",
                                                "isalias": 0,
                                                "aliases": [],
                                                "settable": 1,
                                                "attachable": 0,
                                                "isparam": 0,
                                                "deprecated": 0,
                                                "touched": 0,
                                                "type": "symbol",
                                                "defaultValue": "",
                                                "label": "Metadata",
                                                "displayorder": 3
                                            }
                                        },
                                        "inputs": [
                                            {
                                                "name": "in1",
                                                "type": "signal",
                                                "digest": "signal sent to outlet with index 1",
                                                "displayName": "",
                                                "hot": 1,
                                                "docked": 0
                                            }
                                        ],
                                        "outputs": [],
                                        "helpname": "out~",
                                        "aliasOf": "out~",
                                        "classname": "out~",
                                        "operator": 0,
                                        "versionId": 1989326771,
                                        "changesPatcherIO": 1
                                    },
                                    "text": "out~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        42.0,
                                        270.0,
                                        560.0,
                                        47.0
                                    ],
                                    "text": "gen~ code MUST MATCH br.delay.digital.1.0 (open both: same codebox). The eleven params are the plugin parameters (VST/AU, web, external). Each inlet sets its param; attrui in the parent shows them all."
                                }
                            },
                            {
                                "box": {
                                    "id": "rin3",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 3 @comment \"Mode (Int) 0 Linked: both sides use Time L. 1 Stereo: each side its own time. 2 Ping-Pong: each side's first echo at its own time, then both repeat every (the longer time), so L 375 / R 750 alternates every 375 ms. Changes crossfade like a time change, no clicks. Default 0\"",
                                    "patching_rect": [
                                        450.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin3"
                                }
                            },
                            {
                                "box": {
                                    "id": "pMode",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Mode 0 @min 0 @max 2 @enum Linked Stereo Ping_Pong @order 1",
                                    "patching_rect": [
                                        450.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Mode"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin4",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 4 @comment \"Time L (Float) ms 1. to 10000. Left delay time, and both sides in Linked. Changes crossfade to the new time, no pitch bend. Default 375\"",
                                    "patching_rect": [
                                        560.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin4"
                                }
                            },
                            {
                                "box": {
                                    "id": "pTime_L",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Time_L 375 @min 1. @max 10000. @exponent 3. @order 2",
                                    "patching_rect": [
                                        560.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Time_L"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin5",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 5 @comment \"Time R (Float) ms 1. to 10000. Right delay time in Stereo and Ping-Pong (ignored in Linked). Default 750\"",
                                    "patching_rect": [
                                        670.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin5"
                                }
                            },
                            {
                                "box": {
                                    "id": "pTime_R",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Time_R 750 @min 1. @max 10000. @exponent 3. @order 3",
                                    "patching_rect": [
                                        670.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Time_R"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin6",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 6 @comment \"Xfade (Float) ms 5. to 5000. How long a time or mode change takes to crossfade to the new time. Short = quick cut, long = both times blur into each other. Changes during a fade are taken when it ends, latest wins. Default 50\"",
                                    "patching_rect": [
                                        780.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin6"
                                }
                            },
                            {
                                "box": {
                                    "id": "pXfade",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Xfade 50 @min 5. @max 5000. @exponent 5. @order 4",
                                    "patching_rect": [
                                        780.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Xfade"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin7",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 7 @comment \"Feedback (Float) 0. to 1. How much of each repeat goes round again. At 1 the repeats never fade. Default 0.4\"",
                                    "patching_rect": [
                                        890.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin7"
                                }
                            },
                            {
                                "box": {
                                    "id": "pFeedback",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Feedback 0.4 @min 0. @max 1. @order 5",
                                    "patching_rect": [
                                        890.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Feedback"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin8",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 8 @comment \"Feedback Route (Int) 0 Straight: each side's repeats stay on that side. 1 Cross: each side's repeats go to the other side, so Stereo + Cross is the classic ping-pong. Fades over 20 ms, no clicks. Default 0\"",
                                    "patching_rect": [
                                        1000.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin8"
                                }
                            },
                            {
                                "box": {
                                    "id": "pRoute",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Route 0 @min 0 @max 1 @enum Straight Cross @order 6",
                                    "patching_rect": [
                                        1000.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Route"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin9",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 9 @comment \"Hold (Int) 0 off, 1 on: stops taking input and keeps what is on the loop repeating unchanged, forever. Off: the loop decays at the Feedback setting again. Fades over 20 ms. Default 0\"",
                                    "patching_rect": [
                                        1110.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin9"
                                }
                            },
                            {
                                "box": {
                                    "id": "pHold",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Hold 0 @min 0 @max 1 @enum Off On @order 7",
                                    "patching_rect": [
                                        1110.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Hold"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin10",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 10 @comment \"Low Cut (Float) Hz 20. to 2000. Thins the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 80\"",
                                    "patching_rect": [
                                        1220.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin10"
                                }
                            },
                            {
                                "box": {
                                    "id": "pLow_Cut",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Low_Cut 80 @min 20. @max 2000. @exponent 3. @order 8",
                                    "patching_rect": [
                                        1220.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Low_Cut"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin11",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 11 @comment \"High Cut (Float) Hz 200. to 20000. Darkens the echoes at the playback head, a little more on every repeat. Works even with Feedback at 0. Default 8000\"",
                                    "patching_rect": [
                                        1330.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin11"
                                }
                            },
                            {
                                "box": {
                                    "id": "pHigh_Cut",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param High_Cut 8000 @min 200. @max 20000. @exponent 3. @order 9",
                                    "patching_rect": [
                                        1330.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "High_Cut"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin12",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 12 @comment \"Dry/Wet (Float) % 0. to 100. Equal power. Default 50\"",
                                    "patching_rect": [
                                        1440.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin12"
                                }
                            },
                            {
                                "box": {
                                    "id": "pDry_Wet",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param Dry_Wet 50 @min 0. @max 100. @order 10",
                                    "patching_rect": [
                                        1440.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Dry_Wet"
                                }
                            },
                            {
                                "box": {
                                    "id": "rin13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "text": "in 13 @comment \"On/Off (Int) 1 on, 0 off. Off: the echoes fade out and the dry signal passes at full level. The delay keeps running underneath, so turning it back on never plays old echoes. Fades over 20 ms. Default 1\"",
                                    "patching_rect": [
                                        1550.0,
                                        27.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "in",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_rin13"
                                }
                            },
                            {
                                "box": {
                                    "id": "pOn_Off",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "text": "param On_Off 1 @min 0 @max 1 @enum Off On @order 11",
                                    "patching_rect": [
                                        1550.0,
                                        75.0,
                                        105.0,
                                        23.0
                                    ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "linecount": 3,
                                    "rnbo_classname": "param",
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "On_Off"
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
                                        "obj-3",
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
                                        "obj-3",
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
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        1
                                    ],
                                    "destination": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin3",
                                        0
                                    ],
                                    "destination": [
                                        "pMode",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pMode",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin4",
                                        0
                                    ],
                                    "destination": [
                                        "pTime_L",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pTime_L",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin5",
                                        0
                                    ],
                                    "destination": [
                                        "pTime_R",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pTime_R",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin6",
                                        0
                                    ],
                                    "destination": [
                                        "pXfade",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pXfade",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin7",
                                        0
                                    ],
                                    "destination": [
                                        "pFeedback",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pFeedback",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin8",
                                        0
                                    ],
                                    "destination": [
                                        "pRoute",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pRoute",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin9",
                                        0
                                    ],
                                    "destination": [
                                        "pHold",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pHold",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin10",
                                        0
                                    ],
                                    "destination": [
                                        "pLow_Cut",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pLow_Cut",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin11",
                                        0
                                    ],
                                    "destination": [
                                        "pHigh_Cut",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pHigh_Cut",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin12",
                                        0
                                    ],
                                    "destination": [
                                        "pDry_Wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDry_Wet",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "rin13",
                                        0
                                    ],
                                    "destination": [
                                        "pOn_Off",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pOn_Off",
                                        0
                                    ],
                                    "destination": [
                                        "obj-3",
                                        12
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        54.0,
                        400.0,
                        340.0,
                        22.0
                    ],
                    "rnboattrcache": {
                        "Mode": {
                            "label": "Mode",
                            "isEnum": 1,
                            "parsestring": "\"Linked\" \"Stereo\" \"Ping_Pong\""
                        },
                        "Time_L": {
                            "label": "Time_L",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Time_R": {
                            "label": "Time_R",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Xfade": {
                            "label": "Xfade",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Feedback": {
                            "label": "Feedback",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Route": {
                            "label": "Route",
                            "isEnum": 1,
                            "parsestring": "\"Straight\" \"Cross\""
                        },
                        "Hold": {
                            "label": "Hold",
                            "isEnum": 1,
                            "parsestring": "\"Off\" \"On\""
                        },
                        "Low_Cut": {
                            "label": "Low_Cut",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "High_Cut": {
                            "label": "High_Cut",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "Dry_Wet": {
                            "label": "Dry_Wet",
                            "isEnum": 0,
                            "parsestring": ""
                        },
                        "On_Off": {
                            "label": "On_Off",
                            "isEnum": 1,
                            "parsestring": "\"Off\" \"On\""
                        }
                    },
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "30399a17-36ad-432d-b34d-db1bdcc764e2"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        420.0,
                        400.0,
                        340.0,
                        100.0
                    ],
                    "text": "EXPORT NAME: br.delay.digital.1.0~\nMax External Export asks for a name: keep the ~ at the end. Without it the external has the same name as the abstraction br.delay.digital.1.0, and Max loads whichever it finds first. Audio Plugin Export (VST3/AU): any name; the Mode, Time_L, Time_R, Xfade, Feedback, Route, Hold, Low_Cut, High_Cut, Dry_Wet and On_Off params appear in your DAW."
                }
            },
            {
                "box": {
                    "attr": "Mode",
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        90.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Time_L",
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        114.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Time_R",
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        138.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Xfade",
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        162.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Feedback",
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        186.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Route",
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        210.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Hold",
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        234.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Low_Cut",
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        258.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "High_Cut",
                    "id": "obj-attr8",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        282.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "Dry_Wet",
                    "id": "obj-attr9",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        306.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "attr": "On_Off",
                    "id": "obj-attr10",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patching_rect": [
                        232.0,
                        330.0,
                        180.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        1
                    ],
                    "source": [
                        "obj-5",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-6",
                        0
                    ],
                    "source": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        1
                    ],
                    "source": [
                        "obj-7",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-5",
                        0
                    ],
                    "source": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        1
                    ],
                    "source": [
                        "obj-9",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-7",
                        0
                    ],
                    "source": [
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr8",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr9",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr10",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            }
        ],
        "parameters": {
            "obj-5": [
                "Out",
                "Out",
                0
            ],
            "obj-7": [
                "rnbo~",
                "rnbo~",
                0
            ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ],
                    "buttons": [
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-",
                        "-"
                    ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}