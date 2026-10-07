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
            1480.0,
            630.0
        ],
        "description": "_br.delay.digital.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
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
                        "classnamespace": "box",
                        "rect": [
                            100.0,
                            100.0,
                            1000.0,
                            620.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "s-in",
                                    "maxclass": "inlet",
                                    "patching_rect": [
                                        15.0,
                                        15.0,
                                        30.0,
                                        30.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ],
                                    "index": 1,
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 plucks, 4 drum L / Anton R, 5 mic (adc~ 1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        50.0,
                                        100.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "t i i i i i",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [
                                        "int",
                                        "int",
                                        "int",
                                        "int",
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        15.0,
                                        72.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "loadbang",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        45.0,
                                        65.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "t b b b",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "bang",
                                        "bang",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "patching_rect": [
                                        15.0,
                                        80.0,
                                        260.0,
                                        20.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "drumLoop.aif and anton.aif ship with Max",
                                    "numinlets": 1,
                                    "numoutlets": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        15.0,
                                        110.0,
                                        212.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "open drumLoop.aif, loop 1, 1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "sfplay~ 1",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        240.0,
                                        110.0,
                                        191.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "open anton.aif, loop 1, 1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        240.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "sfplay~ 1",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-note2",
                                    "maxclass": "comment",
                                    "patching_rect": [
                                        640.0,
                                        80.0,
                                        420.0,
                                        20.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "plucks: one every 1.2 s, random pitch, so each echo is easy to hear",
                                    "numinlets": 1,
                                    "numoutlets": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "s-on",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        640.0,
                                        110.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-metro",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        140.0,
                                        79.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "metro 1200",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-pt",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        170.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "t b b",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "bang",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-r1",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        200.0,
                                        86.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "random 100",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-sc",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        230.0,
                                        130.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "scale 0 99 0.4 1.",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-env",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        640.0,
                                        260.0,
                                        93.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 1 0. 220",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-envl",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        290.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-r2",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        800.0,
                                        200.0,
                                        79.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "random 12",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-plus",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        800.0,
                                        230.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "+ 48",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-mtof",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        800.0,
                                        260.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "mtof",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-saw",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        800.0,
                                        290.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "saw~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-pl",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        320.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        900.0,
                                        140.0,
                                        58.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "adc~ 1",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "== 1",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        15.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        200.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "== 2",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        200.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        200.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        385.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "== 3",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        385.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        385.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        570.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "== 4",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        570.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        570.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-eq5",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        815.0,
                                        370.0,
                                        44.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "== 5",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "int"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-f5",
                                    "maxclass": "message",
                                    "patching_rect": [
                                        815.0,
                                        400.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "$1 20",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-l5",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        815.0,
                                        430.0,
                                        51.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "line~",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "bang"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        200.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        385.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g5",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        815.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g4l",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        570.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-g4r",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        640.0,
                                        460.0,
                                        40.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        15.0,
                                        510.0,
                                        58.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~ 0.7",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "patching_rect": [
                                        200.0,
                                        510.0,
                                        58.0,
                                        22.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "*~ 0.7",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s-note3",
                                    "maxclass": "comment",
                                    "patching_rect": [
                                        280.0,
                                        510.0,
                                        560.0,
                                        20.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes",
                                    "numinlets": 1,
                                    "numoutlets": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "s-o1",
                                    "maxclass": "outlet",
                                    "patching_rect": [
                                        15.0,
                                        550.0,
                                        30.0,
                                        30.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 1,
                                    "comment": "Left Source (Signal)"
                                }
                            },
                            {
                                "box": {
                                    "id": "s-o2",
                                    "maxclass": "outlet",
                                    "patching_rect": [
                                        200.0,
                                        550.0,
                                        30.0,
                                        30.0
                                    ],
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "index": 2,
                                    "comment": "Right Source (Signal)"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "s-eq1",
                                        0
                                    ],
                                    "destination": [
                                        "s-f1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-f1",
                                        0
                                    ],
                                    "destination": [
                                        "s-l1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-t",
                                        4
                                    ],
                                    "destination": [
                                        "s-eq1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-eq2",
                                        0
                                    ],
                                    "destination": [
                                        "s-f2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-f2",
                                        0
                                    ],
                                    "destination": [
                                        "s-l2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-t",
                                        3
                                    ],
                                    "destination": [
                                        "s-eq2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-eq3",
                                        0
                                    ],
                                    "destination": [
                                        "s-f3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-f3",
                                        0
                                    ],
                                    "destination": [
                                        "s-l3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-t",
                                        2
                                    ],
                                    "destination": [
                                        "s-eq3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-eq4",
                                        0
                                    ],
                                    "destination": [
                                        "s-f4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-f4",
                                        0
                                    ],
                                    "destination": [
                                        "s-l4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-t",
                                        1
                                    ],
                                    "destination": [
                                        "s-eq4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-eq5",
                                        0
                                    ],
                                    "destination": [
                                        "s-f5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-f5",
                                        0
                                    ],
                                    "destination": [
                                        "s-l5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-t",
                                        0
                                    ],
                                    "destination": [
                                        "s-eq5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l1",
                                        0
                                    ],
                                    "destination": [
                                        "s-g1",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l2",
                                        0
                                    ],
                                    "destination": [
                                        "s-g2",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l3",
                                        0
                                    ],
                                    "destination": [
                                        "s-g3",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l5",
                                        0
                                    ],
                                    "destination": [
                                        "s-g5",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l4",
                                        0
                                    ],
                                    "destination": [
                                        "s-g4l",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-l4",
                                        0
                                    ],
                                    "destination": [
                                        "s-g4r",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-in",
                                        0
                                    ],
                                    "destination": [
                                        "s-t",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-lb",
                                        0
                                    ],
                                    "destination": [
                                        "s-lbt",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-lbt",
                                        2
                                    ],
                                    "destination": [
                                        "s-m1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-lbt",
                                        1
                                    ],
                                    "destination": [
                                        "s-m2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-lbt",
                                        0
                                    ],
                                    "destination": [
                                        "s-on",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-m1",
                                        0
                                    ],
                                    "destination": [
                                        "s-p1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-m2",
                                        0
                                    ],
                                    "destination": [
                                        "s-p2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-on",
                                        0
                                    ],
                                    "destination": [
                                        "s-metro",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-metro",
                                        0
                                    ],
                                    "destination": [
                                        "s-pt",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-pt",
                                        0
                                    ],
                                    "destination": [
                                        "s-r1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-pt",
                                        1
                                    ],
                                    "destination": [
                                        "s-r2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-r1",
                                        0
                                    ],
                                    "destination": [
                                        "s-sc",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-sc",
                                        0
                                    ],
                                    "destination": [
                                        "s-env",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-env",
                                        0
                                    ],
                                    "destination": [
                                        "s-envl",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-envl",
                                        0
                                    ],
                                    "destination": [
                                        "s-pl",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-r2",
                                        0
                                    ],
                                    "destination": [
                                        "s-plus",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-plus",
                                        0
                                    ],
                                    "destination": [
                                        "s-mtof",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-mtof",
                                        0
                                    ],
                                    "destination": [
                                        "s-saw",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-saw",
                                        0
                                    ],
                                    "destination": [
                                        "s-pl",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-p1",
                                        0
                                    ],
                                    "destination": [
                                        "s-g1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-p2",
                                        0
                                    ],
                                    "destination": [
                                        "s-g2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-pl",
                                        0
                                    ],
                                    "destination": [
                                        "s-g3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-p1",
                                        0
                                    ],
                                    "destination": [
                                        "s-g4l",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-p2",
                                        0
                                    ],
                                    "destination": [
                                        "s-g4r",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-adc",
                                        0
                                    ],
                                    "destination": [
                                        "s-g5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g1",
                                        0
                                    ],
                                    "destination": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g1",
                                        0
                                    ],
                                    "destination": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g2",
                                        0
                                    ],
                                    "destination": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g2",
                                        0
                                    ],
                                    "destination": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g3",
                                        0
                                    ],
                                    "destination": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g3",
                                        0
                                    ],
                                    "destination": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g5",
                                        0
                                    ],
                                    "destination": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g5",
                                        0
                                    ],
                                    "destination": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g4l",
                                        0
                                    ],
                                    "destination": [
                                        "s-outL",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-g4r",
                                        0
                                    ],
                                    "destination": [
                                        "s-outR",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-outL",
                                        0
                                    ],
                                    "destination": [
                                        "s-o1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "s-outR",
                                        0
                                    ],
                                    "destination": [
                                        "s-o2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        802.0,
                        98.0,
                        120.0,
                        22.0
                    ],
                    "text": "p source"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        630.0,
                        15.0,
                        463.0,
                        33.0
                    ],
                    "text": "_br.delay.digital.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        15.0,
                        300.0,
                        20.0
                    ],
                    "text": "br.delay.digital"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        45.0,
                        560.0,
                        47.0
                    ],
                    "text": "A clean stereo digital delay. Changing a time crossfades to the new time instead of bending the pitch. Three modes (Linked, Stereo, Ping-Pong), a feedback route (Straight or Cross), tone filters on the echoes, Hold to freeze the loop, and On/Off. No saturation: at Feedback 1 the repeats never fade. Every change fades: nothing clicks."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        118.0,
                        736.0,
                        60.0
                    ],
                    "text": "Two files, same DSP inside:\nbr.delay.digital.1.0 = core, no UI (in: L, R, Mode, Time L, Time R, Xfade, Feedback, Route, Hold, Low Cut, High Cut, Dry/Wet, On/Off)\nbr.delay.digital.ui.1.0 = the same with controls, for bpatchers\nUI and core have the same inlets and outlets in the same order."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        220.0,
                        560.0,
                        33.0
                    ],
                    "text": "A: the UI. Raise A's slider, then try each Mode, flip Route to Cross, and sweep the times with Xfade short, then long (past noon both times blur together). Push Feedback to 1, press Hold, then move the times while it is held."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        281.0,
                        560.0,
                        33.0
                    ],
                    "text": "B: the core alone, Ping-Pong, with Time L stepping 250 / 375 / 500 ms every 4 s and Xfade 1000 ms: numbers or signals into any inlet drive that control. Each step blurs from one rhythm into the next, with no pitch bend."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        342.0,
                        560.0,
                        20.0
                    ],
                    "text": "Numbers into the UI's inlets move its controls. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        560.0,
                        740.0,
                        20.0
                    ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly (A and B play the same source)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        590.0,
                        300.0,
                        20.0
                    ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        802.0,
                        134.0,
                        145.0,
                        20.0
                    ],
                    "text": "A: br.delay.digital.ui.1.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.delay.digital.ui.1.0.maxpat",
                    "numinlets": 14,
                    "numoutlets": 2,
                    "offset": [
                        0.0,
                        0.0
                    ],
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        802.0,
                        168.0,
                        208.0,
                        146.0
                    ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1052.0,
                        138.0,
                        260.0,
                        20.0
                    ],
                    "text": "B: core, Ping-Pong, stepped Time L"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1192.0,
                        268.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ppnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1272.0,
                        268.0,
                        130.0,
                        20.0
                    ],
                    "text": "Mode 2 = Ping-Pong"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-steplm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1112.0,
                        168.0,
                        75.0,
                        22.0
                    ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-metro",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "bang"
                    ],
                    "patching_rect": [
                        1112.0,
                        193.0,
                        75.0,
                        22.0
                    ],
                    "text": "metro 4000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-count",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [
                        "int",
                        "",
                        "",
                        "int"
                    ],
                    "patching_rect": [
                        1112.0,
                        218.0,
                        75.0,
                        22.0
                    ],
                    "text": "counter 0 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-mul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        1112.0,
                        243.0,
                        45.0,
                        22.0
                    ],
                    "text": "* 125"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-add",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "patching_rect": [
                        1112.0,
                        268.0,
                        45.0,
                        22.0
                    ],
                    "text": "+ 250"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-stepnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1192.0,
                        218.0,
                        270.0,
                        20.0
                    ],
                    "text": "Time L 250 / 375 / 500 ms, one step every 4 s"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-xflm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1192.0,
                        293.0,
                        90.0,
                        22.0
                    ],
                    "text": "loadmess 1000"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-xfnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1287.0,
                        293.0,
                        100.0,
                        20.0
                    ],
                    "text": "Xfade 1000 ms"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 13,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        1052.0,
                        343.0,
                        420.0,
                        22.0
                    ],
                    "text": "br.delay.digital.1.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1477.0,
                        343.0,
                        40.0,
                        20.0
                    ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
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
                        802.0,
                        393.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
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
                        1052.0,
                        393.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "int"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        872.0,
                        393.0,
                        24.0,
                        24.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        902.0,
                        393.0,
                        75.0,
                        20.0
                    ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        802.0,
                        553.0,
                        72.0,
                        22.0
                    ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "id": "obj-menu",
                    "maxclass": "umenu",
                    "items": [
                        "Off",
                        ",",
                        "drum loop",
                        ",",
                        "Anton",
                        ",",
                        "plucks (synth)",
                        ",",
                        "drum L / Anton R",
                        ",",
                        "mic (adc~ 1)"
                    ],
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "int",
                        "",
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        802.0,
                        68.0,
                        150.0,
                        22.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "id": "obj-menunote",
                    "maxclass": "comment",
                    "text": "source: Off until you pick one",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        957.0,
                        68.0,
                        200.0,
                        20.0
                    ],
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        1
                    ],
                    "source": [
                        "obj-a",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gaina",
                        0
                    ],
                    "source": [
                        "obj-a",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        1
                    ],
                    "source": [
                        "obj-b",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-gainb",
                        0
                    ],
                    "source": [
                        "obj-b",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-dactog",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gaina",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gaina",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        1
                    ],
                    "source": [
                        "obj-gainb",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-dac",
                        0
                    ],
                    "source": [
                        "obj-gainb",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        2
                    ],
                    "source": [
                        "obj-pp",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        1
                    ],
                    "order": 1,
                    "source": [
                        "obj-source",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-a",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        1
                    ],
                    "order": 0,
                    "source": [
                        "obj-source",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-b",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-menu",
                        0
                    ],
                    "destination": [
                        "obj-source",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-steplm",
                        0
                    ],
                    "destination": [
                        "obj-metro",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-metro",
                        0
                    ],
                    "destination": [
                        "obj-count",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-count",
                        0
                    ],
                    "destination": [
                        "obj-mul",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-mul",
                        0
                    ],
                    "destination": [
                        "obj-add",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-add",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-xflm",
                        0
                    ],
                    "destination": [
                        "obj-b",
                        5
                    ]
                }
            }
        ],
        "parameters": {
            "obj-gaina": [
                "A out",
                "A",
                0
            ],
            "obj-gainb": [
                "B out",
                "B",
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
            "inherited_shortname": 1,
            "obj-a::obj-mode": [
                "Mode",
                "Mode",
                0
            ],
            "obj-a::obj-timel": [
                "Time L",
                "Time L",
                0
            ],
            "obj-a::obj-timer": [
                "Time R",
                "Time R",
                0
            ],
            "obj-a::obj-xfade": [
                "Xfade",
                "Xfade",
                0
            ],
            "obj-a::obj-fb": [
                "Feedback",
                "Fdbk",
                0
            ],
            "obj-a::obj-route": [
                "Route",
                "Route",
                0
            ],
            "obj-a::obj-hold": [
                "Hold",
                "Hold",
                0
            ],
            "obj-a::obj-lo": [
                "Low Cut",
                "Lo Cut",
                0
            ],
            "obj-a::obj-hi": [
                "High Cut",
                "Hi Cut",
                0
            ],
            "obj-a::obj-mix": [
                "Dry/Wet",
                "Dry/Wet",
                0
            ],
            "obj-a::obj-onoff": [
                "On/Off",
                "On/Off",
                0
            ]
        },
        "autosave": 0
    }
}