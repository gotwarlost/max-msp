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
		"rect" : [ 795.0, 379.0, 1381.0, 742.0 ],
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
					"bgcolor" : [ 0.647058823529412, 0.647058823529412, 0.647058823529412, 1 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-27",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 166.5, 242.5, 496.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 912.5, 306.0, 29.5, 22.0 ],
					"text" : "set"
				}

			}
, 			{
				"box" : 				{
					"comment" : "has notes?",
					"id" : "obj-29",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1047.0, 436.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "input mode active",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 754.0, 292.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "is live playing",
					"id" : "obj-26",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.5, 32.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2907",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 775.0, 423.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2854",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 715.75, 481.0, 164.0, 22.0 ],
					"text" : "if $i1 == 0 && $i2 == 0 then 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1959",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 862.0, 129.0, 80.0, 49.0 ],
					"text" : "if $i1 == 1 then active 0 else active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1820",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 754.0, 129.0, 98.0, 22.0 ],
					"text" : "if $i1 == 1 then 0"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "When enabled, use your MIDI keyboard to input notes you want the patcher to play.",
					"hint" : "Enable to allow inputs",
					"id" : "obj-470",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 754.0, 260.5, 87.5, 17.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 79.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_info" : "When enabled, use your MIDI keyboard to input notes you want the patcher to play.",
							"parameter_longname" : "Notes input gate",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "Input",
							"parameter_type" : 1
						}

					}
,
					"text" : "Choose Notes ...",
					"texton" : "Choose Notes ...",
					"varname" : "notes_input_gate"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Click to reset all notes entered and start over",
					"id" : "obj-527",
					"maxclass" : "live.text",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 912.5, 260.5, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 82.75, 0.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "val1", "val2" ],
							"parameter_info" : "Click to reset all notes entered and start over",
							"parameter_longname" : "Reset notes",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "reset_btn",
							"parameter_type" : 1
						}

					}
,
					"text" : "Reset",
					"varname" : "reset_btn"
				}

			}
, 			{
				"box" : 				{
					"comment" : "note_probs seeds prob object",
					"id" : "obj-77",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 452.013738036155701, 466.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "note value/ weight pairs",
					"id" : "obj-76",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 466.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "slider messages",
					"id" : "obj-75",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.5, 32.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "load slider",
					"id" : "obj-74",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 123.0, 32.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-304",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 257.75, 451.5, 79.0, 22.0 ],
					"text" : "prepend load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 123.0, 413.5, 155.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "stored_notes",
							"parameter_shortname" : "stored_notes",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "pattr @parameter_enable 1",
					"varname" : "u238001067"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1092",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 452.013738036155701, 413.5, 83.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "simple-prob",
						"parameter_enable" : 0
					}
,
					"text" : "js simple-prob"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "bgcolor", 0.647058823529412, 0.647058823529412, 0.647058823529412, 1 ], [ "textcolor", 1, 0.709803921568627, 0.196078431372549, 1 ], [ "border", 0 ], [ "sliderthickness", 95 ], [ "textbgcolor", 0.647058823529412, 0.647058823529412, 0.647058823529412, 1 ], [ "slideroffcolor", 0.647058823529412, 0.647058823529412, 0.647058823529412, 1 ], [ "bordercolor", 0.87843137254902, 0.87843137254902, 0.87843137254902, 1 ], [ "slideroncolor", 1, 0.709803921568627, 0.196078431372549, 1 ], [ "sliderbgcolor", 0, 0, 0, 1 ] ],
					"filename" : "note-sliders.js",
					"id" : "obj-1",
					"ignoreclick" : 1,
					"maxclass" : "jsui",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 166.5, 242.5, 496.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ],
					"varname" : "notes_slider"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1092", 0 ],
					"midpoints" : [ 414.5, 384.5, 461.513738036155701, 384.5 ],
					"order" : 0,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"order" : 2,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2907", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-1092", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-470", 0 ],
					"source" : [ "obj-1820", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-470", 0 ],
					"order" : 1,
					"source" : [ "obj-1959", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-527", 0 ],
					"order" : 0,
					"source" : [ "obj-1959", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1820", 0 ],
					"midpoints" : [ 214.0, 107.0, 763.5, 107.0 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1959", 0 ],
					"midpoints" : [ 214.0, 92.0, 871.5, 92.0 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2854", 0 ],
					"midpoints" : [ 214.0, 118.0, 363.0, 118.0, 363.0, 228.0, 725.25, 228.0 ],
					"order" : 2,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"midpoints" : [ 132.5, 448.5, 267.25, 448.5 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-470", 0 ],
					"midpoints" : [ 725.25, 504.0, 702.0, 504.0, 702.0, 255.0, 763.5, 255.0 ],
					"source" : [ "obj-2854", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2854", 1 ],
					"source" : [ "obj-2907", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2854", 0 ],
					"source" : [ "obj-2907", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 267.25, 474.0, 86.0, 474.0, 86.0, 223.0, 176.0, 223.0 ],
					"source" : [ "obj-304", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 922.0, 330.0, 852.0, 330.0, 852.0, 198.0, 176.0, 198.0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-470", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-527", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-285" : [ "stored_notes", "stored_notes", 0 ],
			"obj-470" : [ "Notes input gate", "Input", 0 ],
			"obj-527" : [ "Reset notes", "reset_btn", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "note-sliders.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "simple-prob.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
