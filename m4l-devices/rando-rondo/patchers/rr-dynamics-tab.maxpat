{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 2002.0, 1319.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 897.0, 376.5, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 118.5, 100.0, 18.0 ],
					"text" : "Max. voices",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Maximum number of voices to play. Only useful when notes are being held for more than their value.",
					"id" : "obj-24",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 83.0, 452.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.5, 120.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Maximum number of voices to play. Only useful when notes are being held for more than their value.",
							"parameter_initial" : [ 1 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "max_voices",
							"parameter_mmax" : 16.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "max_voices",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "max_voices"
				}

			}
, 			{
				"box" : 				{
					"comment" : "velocity jumps",
					"id" : "obj-17",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 443.0, 292.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 331.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 356.5, 49.5, 77.0, 18.0 ],
					"text" : "Velocity jumps",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"annotation" : "The maximum amount for varying velocity between two ticks",
					"id" : "obj-15",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 562.25, 237.0, 27.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 448.0, 44.5, 27.0, 37.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"valueof" : 						{
							"parameter_info" : "The maximum amount for varying velocity between two ticks",
							"parameter_initial" : [ 10 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "velocity_variation",
							"parameter_mmax" : 50.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "velocity_variation",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"varname" : "live.dial[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.0, 276.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 350.0, 3.0, 154.0, 18.0 ],
					"text" : "VELOCITY",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 302.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.0, 56.0, 77.0, 18.0 ],
					"text" : "Press multiplier",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.0, 242.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 178.5, 3.0, 169.5, 18.0 ],
					"text" : "NOTE PRESS ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.0, 209.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 3.0, 171.0, 18.0 ],
					"text" : "DRONE ",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 271.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.5, 118.5, 77.0, 18.0 ],
					"text" : "Press multiplier",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Drone press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
					"id" : "obj-23",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 719.5, 463.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.5, 142.0, 39.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Drone press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "drone_press_mult",
							"parameter_mmax" : 32.0,
							"parameter_mmin" : 0.1,
							"parameter_shortname" : "drone_press_mult",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 636.0, 528.0, 155.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "non-linear-range",
						"parameter_enable" : 0
					}
,
					"text" : "js non-linear-range 0.1 1 32"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"annotation" : "Drone press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
					"id" : "obj-28",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 721.0, 373.0, 27.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.5, 112.0, 27.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"valueof" : 						{
							"parameter_info" : "Drone press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
							"parameter_invisible" : 2,
							"parameter_longname" : "live.dial[1]",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.dial[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 242.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 46.5, 83.5, 53.0, 18.0 ],
					"text" : "Velocity",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 209.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 40.0, 57.5, 59.5, 18.0 ],
					"text" : "Play every",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 713.0, 306.0, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 22.5, 35.0, 77.0, 18.0 ],
					"text" : "Note",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Note press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
					"id" : "obj-14",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 491.5, 457.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.5, 74.5, 39.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Note press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
							"parameter_initial" : [ 1.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "note_mult",
							"parameter_mmax" : 32.0,
							"parameter_mmin" : 0.1,
							"parameter_shortname" : "note_mult",
							"parameter_type" : 0,
							"parameter_unitstyle" : 1
						}

					}
,
					"varname" : "live.numbox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 408.0, 522.0, 155.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "non-linear-range",
						"parameter_enable" : 0
					}
,
					"text" : "js non-linear-range 0.1 1 32"
				}

			}
, 			{
				"box" : 				{
					"activedialcolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"annotation" : "Note press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
					"id" : "obj-11",
					"maxclass" : "live.dial",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 493.0, 367.0, 27.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 283.5, 44.5, 27.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"activedialcolor" : 						{
							"expression" : "themecolor.live_control_selection"
						}
,
						"valueof" : 						{
							"parameter_info" : "Note press mutiplier. Use values less than one for short blips, more than one to hold notes down longer than their tick.",
							"parameter_invisible" : 2,
							"parameter_longname" : "live.dial",
							"parameter_shortname" : "live.dial",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"showname" : 0,
					"shownumber" : 0,
					"varname" : "live.dial"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "The note interval at which the drone note plays (4 = quarter note, 8 = eighth note, etc.)",
					"id" : "obj-459",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 259.125, 220.0, 34.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 110.5, 57.5, 34.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "The note interval at which the drone note plays (4 = quarter note, 8 = eighth note, etc.)",
							"parameter_initial" : [ 4 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Drone tick",
							"parameter_mmax" : 96.0,
							"parameter_mmin" : 1.0,
							"parameter_shortname" : "drone_tempo",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "drone_tempo"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Velocity of the drone note",
					"id" : "obj-457",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 211.25, 220.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 83.5, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Velocity of the drone note",
							"parameter_initial" : [ 0.0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Drone velocity",
							"parameter_shortname" : "drone_velocity",
							"parameter_type" : 1,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "drone_velocity"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Select the note that always plays every bar based on the defined tick.",
					"hint" : "Drone note",
					"id" : "obj-455",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 166.75, 220.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.0, 35.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Select the note that always plays every bar based on the defined tick.",
							"parameter_initial" : [ 60 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Drone note",
							"parameter_mmin" : 24.0,
							"parameter_shortname" : "drone_note",
							"parameter_type" : 1,
							"parameter_unitstyle" : 8
						}

					}
,
					"varname" : "drone_note"
				}

			}
, 			{
				"box" : 				{
					"comment" : "drone multiplier",
					"id" : "obj-10",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 340.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "drone tick",
					"id" : "obj-9",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 282.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "drone velocity",
					"id" : "obj-8",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 238.25, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "drone note",
					"id" : "obj-7",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 189.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "is constant multiplier",
					"id" : "obj-6",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 137.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "press multiplier",
					"id" : "obj-5",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 83.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "max voices",
					"id" : "obj-4",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 290.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "border color",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.0, 7.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "bgcolor",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 631.0, 1.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "init",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 14.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1271",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 702.0, 51.0, 117.0, 22.0 ],
					"text" : "prepend bordercolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.5, 51.0, 95.0, 22.0 ],
					"text" : "prepend bgcolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1426",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 882.0, 361.5, 150.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 94.5, 100.0, 18.0 ],
					"text" : "Constant note length",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"annotation" : "When enabled, uses a constant press for all notes irrespective of  note length. The multiplier is always applied to the length of a quarter note.",
					"id" : "obj-1425",
					"maxclass" : "live.toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 238.25, 151.5, 15.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.5, 94.5, 15.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "off", "on" ],
							"parameter_info" : "When enabled, uses a constant press for all notes irrespective of  note length. The multiplier is always applied to the length of a quarter note.",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Constant note length",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "const_note_length",
							"parameter_type" : 1
						}

					}
,
					"varname" : "const_note_length"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.0, 447.0, 500.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 350.0, 23.0, 146.0, 136.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.0, 265.0, 500.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.0, 23.0, 175.0, 136.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"bgcolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-2518",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.0, 103.0, 500.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 171.0, 136.0 ],
					"proportion" : 0.39,
					"rounded" : 0,
					"saved_attribute_attributes" : 					{
						"bgfillcolor" : 						{
							"expression" : "themecolor.live_meter_bg"
						}

					}

				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-1271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-1271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2518", 0 ],
					"midpoints" : [ 711.5, 84.0, 1078.5, 84.0 ],
					"order" : 2,
					"source" : [ "obj-1271", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 553.5, 546.0, 573.0, 546.0, 573.0, 354.0, 502.5, 354.0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 417.5, 546.0, 393.0, 546.0, 393.0, 453.0, 501.0, 453.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"midpoints" : [ 501.0, 507.0, 553.5, 507.0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1425", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2137", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"order" : 1,
					"source" : [ "obj-2137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"order" : 0,
					"source" : [ "obj-2137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2518", 0 ],
					"midpoints" : [ 608.0, 93.0, 1078.5, 93.0 ],
					"order" : 2,
					"source" : [ "obj-2137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"order" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"midpoints" : [ 729.0, 513.0, 781.5, 513.0 ],
					"order" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 645.5, 552.0, 621.0, 552.0, 621.0, 459.0, 729.0, 459.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 781.5, 552.0, 801.0, 552.0, 801.0, 360.0, 730.5, 360.0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1271", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-455", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-457", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-459", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11" : [ "live.dial", "live.dial", 0 ],
			"obj-14" : [ "note_mult", "note_mult", 0 ],
			"obj-1425" : [ "Constant note length", "const_note_length", 0 ],
			"obj-15" : [ "velocity_variation", "velocity_variation", 0 ],
			"obj-23" : [ "drone_press_mult", "drone_press_mult", 0 ],
			"obj-24" : [ "max_voices", "max_voices", 0 ],
			"obj-28" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-455" : [ "Drone note", "drone_note", 0 ],
			"obj-457" : [ "Drone velocity", "drone_velocity", 0 ],
			"obj-459" : [ "Drone tick", "drone_tempo", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "non-linear-range.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
