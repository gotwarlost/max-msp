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
		"rect" : [ 123.0, 187.0, 1233.0, 775.0 ],
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
					"bgcolor" : [ 1, 1, 1, 1 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 89.848598480224609, 215.0, 501.0, 142.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"comment" : "slider messages",
					"id" : "obj-27",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 67.0, 72.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "load",
					"id" : "obj-25",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 72.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "rest pct",
					"id" : "obj-56",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 566.098598480224609, 451.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "note lengths prob seed",
					"id" : "obj-55",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.515265146891352, 451.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Percentage of time rests should be used instead of playing notes",
					"id" : "obj-2509",
					"maxclass" : "live.numbox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"parameter_mappable" : 0,
					"patching_rect" : [ 617.098598480224609, 13.5, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 47.0, 0.5, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_info" : "Percentage of time rests should be used instead of playing notes",
							"parameter_initial" : [ 10 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Rest percent",
							"parameter_mmax" : 80.0,
							"parameter_shortname" : "rest_pct",
							"parameter_type" : 1,
							"parameter_unitstyle" : 5
						}

					}
,
					"varname" : "rest_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-410",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.598598480224609, 13.5, 49.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 45.0, 18.0 ],
					"text" : "Rests %",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-577",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 227.348598480224609, 434.5, 79.0, 22.0 ],
					"text" : "prepend load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-576",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 227.348598480224609, 390.5, 155.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "stored_lengths",
							"parameter_shortname" : "stored_lengths",
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
					"varname" : "u238001067[1]"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "bgcolor", 1, 1, 1, 1 ], [ "textcolor", 0.952941176470588, 0.580392156862745, 0.125490196078431, 1 ], [ "border", 0 ], [ "sliderthickness", 95 ], [ "textbgcolor", 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ], [ "slideroffcolor", 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ], [ "bordercolor", 0.87843137254902, 0.87843137254902, 0.87843137254902, 1 ], [ "slideroncolor", 0.952941176470588, 0.580392156862745, 0.125490196078431, 1 ], [ "sliderbgcolor", 0.87843137254902, 0.87843137254902, 0.87843137254902, 1 ] ],
					"filename" : "note-length-sliders.js",
					"id" : "obj-79",
					"maxclass" : "jsui",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 89.848598480224609, 215.0, 501.0, 142.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-474",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 501.515265146891352, 398.0, 83.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "simple-prob",
						"parameter_enable" : 0
					}
,
					"text" : "js simple-prob"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-577", 0 ],
					"source" : [ "obj-576", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"midpoints" : [ 236.848598480224609, 482.0, 80.0, 482.0, 80.0, 188.0, 99.348598480224609, 188.0 ],
					"source" : [ "obj-577", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-474", 0 ],
					"midpoints" : [ 340.348598480224609, 375.0, 511.015265146891352, 375.0 ],
					"order" : 0,
					"source" : [ "obj-79", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-576", 0 ],
					"midpoints" : [ 340.348598480224609, 375.0, 236.848598480224609, 375.0 ],
					"order" : 1,
					"source" : [ "obj-79", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-576", 0 ],
					"midpoints" : [ 32.5, 375.0, 236.848598480224609, 375.0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"midpoints" : [ 626.598598480224609, 195.0, 626.0, 195.0, 626.0, 366.0, 626.0, 366.0, 626.0, 429.0, 575.598598480224609, 429.0 ],
					"source" : [ "obj-2509", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-474", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2509" : [ "Rest percent", "rest_pct", 0 ],
			"obj-576" : [ "stored_lengths", "stored_lengths", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "note-length-sliders.js",
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
