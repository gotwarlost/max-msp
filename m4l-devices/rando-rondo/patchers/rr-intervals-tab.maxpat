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
		"rect" : [ 59.0, 106.0, 1220.0, 721.0 ],
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
					"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ],
					"border" : 1,
					"bordercolor" : [ 0.87843137254902, 0.87843137254902, 0.87843137254902, 1.0 ],
					"id" : "obj-35",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.5, 193.0, 496.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"annotation" : "When enabled, takes interval weights into account to find the next note to be played. When disabled, only note weights are used.",
					"automation" : "EnableOff",
					"automationon" : "EnableOn",
					"id" : "obj-2515",
					"maxclass" : "live.text",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 600.0, 9.0, 44.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 44.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "EnableOff", "EnableOn" ],
							"parameter_info" : "When enabled, takes interval weights into account to find the next note to be played. When disabled, only note weights are used.",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Enable interval weights",
							"parameter_mmax" : 1.0,
							"parameter_shortname" : "enable_weights",
							"parameter_type" : 1
						}

					}
,
					"text" : "Enable",
					"texton" : "Enable",
					"varname" : "enable_weights"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 726.625, 19.0, 40.0, 22.0 ],
					"text" : "t b b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 874.151401519775391, 123.0, 65.0, 49.0 ],
					"text" : "0.952941 0.580392 0.12549 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 785.0, 123.0, 82.0, 49.0 ],
					"text" : "0.588235 0.588235 0.588235 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 634.625, 123.0, 68.0, 22.0 ],
					"text" : "expr $i1 +1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 634.625, 259.0, 148.0, 22.0 ],
					"text" : "prepend attr_slideroncolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 634.625, 205.0, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2046",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 1065.0, 713.0, 40.0, 22.0 ],
					"text" : "t b b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2646",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1213.151401519775391, 771.0, 65.0, 49.0 ],
					"text" : "0.952941 0.580392 0.12549 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2640",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1124.0, 771.0, 82.0, 49.0 ],
					"text" : "0.588235 0.588235 0.588235 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1655",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1054.625, 771.0, 68.0, 22.0 ],
					"text" : "expr $i1 +1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1732",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 969.0, 861.0, 148.0, 22.0 ],
					"text" : "prepend attr_slideroncolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2258",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1110.5, 839.0, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"comment" : "disabled color",
					"id" : "obj-28",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 187.0, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "on color",
					"id" : "obj-27",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 230.5, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "interval weights enabled",
					"id" : "obj-25",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 214.0, 505.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "interval probs",
					"id" : "obj-92",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 148.25, 505.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "slider messages",
					"id" : "obj-91",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 91.0, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "note weights",
					"id" : "obj-90",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "load",
					"id" : "obj-89",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.5, 24.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3092",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 201.0, 458.0, 79.0, 22.0 ],
					"text" : "prepend load"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3091",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 279.0, 397.0, 155.0, 22.0 ],
					"restore" : [ 0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "stored_intervals",
							"parameter_shortname" : "stored_intervals",
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
					"varname" : "u238001067[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5060",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 148.25, 397.0, 87.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "interval-prob",
						"parameter_enable" : 0
					}
,
					"text" : "js interval-prob"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 141.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 98.0, 105.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "extract-intervals",
						"parameter_enable" : 0
					}
,
					"text" : "js extract-intervals"
				}

			}
, 			{
				"box" : 				{
					"border" : 0,
					"embedstate" : [ [ "bgcolor", 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ], [ "textcolor", 0.952941176470588, 0.580392156862745, 0.125490196078431, 1 ], [ "border", 0 ], [ "sliderthickness", 95 ], [ "textbgcolor", 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ], [ "slideroffcolor", 0.235294117647059, 0.235294117647059, 0.235294117647059, 1 ], [ "bordercolor", 0.87843137254902, 0.87843137254902, 0.87843137254902, 1 ], [ "slideroncolor", 0.588235, 0.588235, 0.588235, 1 ], [ "sliderbgcolor", 0.87843137254902, 0.87843137254902, 0.87843137254902, 1 ] ],
					"filename" : "interval-sliders.js",
					"id" : "obj-129",
					"maxclass" : "jsui",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 40.5, 193.0, 496.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 23.0, 496.0, 136.0 ],
					"varname" : "notes_slider[1]"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 2 ],
					"hidden" : 1,
					"source" : [ "", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3091", 0 ],
					"order" : 0,
					"source" : [ "obj-129", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5060", 1 ],
					"midpoints" : [ 288.5, 343.0, 225.75, 343.0 ],
					"order" : 1,
					"source" : [ "obj-129", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"source" : [ "obj-139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2258", 0 ],
					"source" : [ "obj-1655", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1655", 0 ],
					"source" : [ "obj-2046", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2640", 0 ],
					"source" : [ "obj-2046", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2646", 0 ],
					"midpoints" : [ 1085.0, 756.0, 1222.651401519775391, 756.0 ],
					"source" : [ "obj-2046", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1732", 0 ],
					"midpoints" : [ 1120.0, 861.0, 1101.0, 861.0, 1101.0, 846.0, 978.5, 846.0 ],
					"source" : [ "obj-2258", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 609.5, 84.0, 609.0, 84.0, 609.0, 492.0, 223.5, 492.0 ],
					"order" : 1,
					"source" : [ "obj-2515", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"order" : 0,
					"source" : [ "obj-2515", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2258", 1 ],
					"midpoints" : [ 1133.5, 834.0, 1136.5, 834.0 ],
					"source" : [ "obj-2640", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2258", 2 ],
					"midpoints" : [ 1222.651401519775391, 834.0, 1153.0, 834.0 ],
					"source" : [ "obj-2646", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 240.0, 70.0, 883.651401519775391, 70.0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 196.5, 84.0, 794.5, 84.0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"midpoints" : [ 746.625, 108.0, 883.651401519775391, 108.0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 2 ],
					"midpoints" : [ 883.651401519775391, 192.0, 677.125, 192.0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3092", 0 ],
					"midpoints" : [ 288.5, 444.0, 210.5, 444.0 ],
					"source" : [ "obj-3091", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 210.5, 483.0, 186.0, 483.0, 186.0, 483.0, 27.0, 483.0, 27.0, 189.0, 50.0, 189.0 ],
					"source" : [ "obj-3092", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"midpoints" : [ 794.5, 183.0, 660.625, 183.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 644.125, 282.0, 546.0, 282.0, 546.0, 180.0, 50.0, 180.0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 644.125, 246.0, 644.125, 246.0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-5060", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3091", 0 ],
					"midpoints" : [ 50.0, 65.0, 6.0, 65.0, 6.0, 360.0, 288.5, 360.0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-136", 0 ],
					"midpoints" : [ 143.5, 81.0, 143.5, 81.0 ],
					"order" : 1,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5060", 0 ],
					"midpoints" : [ 143.5, 84.0, 564.0, 84.0, 564.0, 374.0, 157.75, 374.0 ],
					"order" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"midpoints" : [ 100.5, 89.0, 14.0, 89.0, 14.0, 180.0, 50.0, 180.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2515" : [ "Enable interval weights", "enable_weights", 0 ],
			"obj-3091" : [ "stored_intervals", "stored_intervals", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "extract-intervals.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-prob.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-sliders.js",
				"bootpath" : "~/max/max-experiments/Library",
				"patcherrelativepath" : "../Library",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
