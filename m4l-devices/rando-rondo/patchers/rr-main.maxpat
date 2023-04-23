{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 87.0, 2092.0, 1319.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
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
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 375.401401519775391, 1476.0, 101.0, 22.0 ],
					"text" : "r ---velocity_jump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1096.5, 1271.75, 103.0, 22.0 ],
					"text" : "s ---velocity_jump"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-23",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-dynamic-help-tab.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 1225.875, 729.5, 406.0, 166.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 8.0, 496.0, 160.0 ],
					"varname" : "rr-dynamic-help-tab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 868.0, 382.5, 156.0, 22.0 ],
					"text" : "append rr-dynamic-help-tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 746.375, 423.0, 117.0, 22.0 ],
					"text" : "prepend bringtofront"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 868.0, 346.0, 171.0, 22.0 ],
					"text" : "if $i1 == 0 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 868.0, 304.5, 83.0, 22.0 ],
					"text" : "r ---has_notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1527.0, 990.5, 122.0, 20.0 ],
					"text" : "STATUS INDICATOR"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.25, 382.5, 135.0, 22.0 ],
					"text" : "append rr-dynamics-tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.122, 0.18, 0.816, 1.0 ],
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.25, 304.5, 44.0, 22.0 ],
					"text" : "r ---tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 704.25, 346.0, 164.0, 22.0 ],
					"text" : "if $i1==3 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435, 0.404, 0.702, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1451.291666666666515, 1424.166666507720947, 113.0, 22.0 ],
					"text" : "r ---drone_multiplier"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435, 0.404, 0.702, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1361.291666666666515, 1434.0, 83.0, 22.0 ],
					"text" : "r ---drone_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435, 0.404, 0.702, 1.0 ],
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1327.25, 1401.0, 105.0, 22.0 ],
					"text" : "r ---drone_velocity"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435, 0.404, 0.702, 1.0 ],
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1310.75, 1369.0, 89.0, 22.0 ],
					"text" : "r ---drone_note"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435294117647059, 0.403921568627451, 0.701960784313725, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1080.84375, 1301.75, 115.0, 22.0 ],
					"text" : "s ---drone_multiplier"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435294117647059, 0.403921568627451, 0.701960784313725, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 995.84375, 1271.75, 85.0, 22.0 ],
					"text" : "s ---drone_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435294117647059, 0.403921568627451, 0.701960784313725, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.375, 1301.75, 107.0, 22.0 ],
					"text" : "s ---drone_velocity"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.435294117647059, 0.403921568627451, 0.701960784313725, 1.0 ],
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 871.109375, 1268.0, 91.0, 22.0 ],
					"text" : "s ---drone_note"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-dynamics-tab.maxpat",
					"numinlets" : 3,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 633.3125, 1095.0, 494.59375, 161.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 8.0, 496.0, 160.0 ],
					"varname" : "rr-dynamics-tab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.761, 0.537, 0.608, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.875, 1271.0, 73.0, 22.0 ],
					"text" : "s ---rest_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-315",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.25, 382.5, 151.0, 22.0 ],
					"text" : "append rr-note-lengths-tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.122, 0.18, 0.816, 1.0 ],
					"id" : "obj-318",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.25, 304.5, 44.0, 22.0 ],
					"text" : "r ---tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-321",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 554.25, 346.0, 164.0, 22.0 ],
					"text" : "if $i1==2 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-312",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-note-lengths-tab.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 33.625, 1095.0, 496.0, 157.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 8.0, 496.0, 160.0 ],
					"varname" : "rr-note-lengths-tab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.525490196078431, 0.635294117647059, 0.815686274509804, 1.0 ],
					"id" : "obj-304",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1073.4375, 909.5, 144.0, 22.0 ],
					"text" : "send ---intervals_enabled"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-288",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 633.3125, 687.5, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-283",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.5, 382.5, 129.0, 22.0 ],
					"text" : "append rr-intervals-tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.122, 0.18, 0.816, 1.0 ],
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.5, 304.5, 44.0, 22.0 ],
					"text" : "r ---tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.5, 346.0, 164.0, 22.0 ],
					"text" : "if $i1==1 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-282",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 201.625, 323.5, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.796, 0.651, 1.0 ],
					"id" : "obj-279",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 235.625, 645.5, 102.0, 22.0 ],
					"text" : "r ---shared_styles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-277",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.901401519775391, 673.0, 148.0, 22.0 ],
					"text" : "prepend attr_slideroncolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-278",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 96.901401519775391, 645.5, 74.0, 22.0 ],
					"text" : "r ---on_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776470588235294, 0.654901960784314, 0.058823529411765, 1.0 ],
					"id" : "obj-281",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.625, 932.5, 85.0, 22.0 ],
					"text" : "s ---has_notes"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-280",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 510.625, 698.5, 81.0, 22.0 ],
					"text" : "r ---is_playing"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"hidden" : 1,
					"id" : "obj-2534",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-intervals-tab.maxpat",
					"numinlets" : 5,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 633.3125, 742.5, 496.0, 153.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 8.0, 496.0, 160.0 ],
					"varname" : "rr-intervals-tab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3067",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.25, 382.5, 114.0, 22.0 ],
					"text" : "append rr-notes-tab"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3065",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-notes-tab.maxpat",
					"numinlets" : 3,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 33.625, 752.5, 496.0, 160.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 65.0, 8.0, 496.0, 160.0 ],
					"varname" : "rr-notes-tab",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3066",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.541666666666515, 1532.0, 35.0, 22.0 ],
					"text" : "bang"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188, 0.263, 0.533, 1.0 ],
					"id" : "obj-3048",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1537.5, 1022.5, 79.0, 22.0 ],
					"text" : "r ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3056",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.5, 534.0, 85.0, 22.0 ],
					"text" : "prepend script"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3055",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1505.0, 232.5, 144.0, 20.0 ],
					"text" : "NOTE INPUT METHODS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3054",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1268.75, 25.0, 86.0, 20.0 ],
					"text" : "START/ STOP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3051",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 1110.75, 30.0, 41.0, 22.0 ],
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-3050",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1282.75, 49.0, 69.0, 22.0 ],
					"text" : "r ---is_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3049",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.75, 405.0, 119.0, 22.0 ],
					"text" : "append kslider_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 436.5, 570.0, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.122, 0.18, 0.816, 1.0 ],
					"id" : "obj-3061",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 52.25, 304.5, 44.0, 22.0 ],
					"text" : "r ---tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-11281",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1479.0, 25.0, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-11278",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "kslider-with-base.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1479.0, 65.0, 162.0, 73.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 599.0, 63.0, 162.0, 73.0 ],
					"varname" : "kslider_input",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3549",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 0,
					"patching_rect" : [ 894.0, 199.0, 50.5, 22.0 ],
					"text" : "bgcolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.796078431372549, 0.650980392156863, 1.0 ],
					"id" : "obj-3570",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 981.125, 112.0, 104.0, 22.0 ],
					"text" : "s ---shared_styles"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1917",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.5, 453.5, 117.0, 22.0 ],
					"text" : "prepend bordercolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1923",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1453.5, 418.0, 95.0, 22.0 ],
					"text" : "prepend bgcolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-1922",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.5, 383.0, 74.0, 22.0 ],
					"text" : "r ---bg_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-1921",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1453.5, 331.0, 74.0, 22.0 ],
					"text" : "r ---on_color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1920",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.5, 359.0, 101.0, 22.0 ],
					"text" : "prepend textcolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-1918",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 735.5, 26.0, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3820",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "style-chooser.maxpat",
					"numinlets" : 1,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "", "" ],
					"patching_rect" : [ 735.5, 65.0, 264.625, 31.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-2928",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.625, 698.5, 89.0, 22.0 ],
					"text" : "r ---second_init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-2927",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.5, 32.5, 89.0, 22.0 ],
					"text" : "r ---second_init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-2926",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 111.75, 224.0, 91.0, 22.0 ],
					"text" : "s ---second_init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2925",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 51.75, 161.5, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1960",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1522.5, 638.0, 124.0, 20.0 ],
					"text" : "DYNAMIC HELP TAB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.75, 72.0, 87.0, 22.0 ],
					"text" : "prepend active"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2101",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 487.75, 32.5, 83.0, 22.0 ],
					"text" : "r ---has_notes"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.625, 932.5, 71.0, 22.0 ],
					"text" : "s ---is_input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.796078431372549, 0.345098039215686, 0.047058823529412, 1.0 ],
					"id" : "obj-1818",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1479.0, 195.0, 56.0, 22.0 ],
					"text" : "s ---input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1819",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1479.0, 158.0, 89.0, 22.0 ],
					"text" : "prepend toggle"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2266",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.75, 346.0, 98.0, 22.0 ],
					"text" : "s ---reset_device"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2265",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.625, 294.5, 69.0, 22.0 ],
					"text" : "r ---is_input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2264",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.75, 373.0, 171.0, 22.0 ],
					"text" : "if $i1 == 1 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2262",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.75, 76.0, 63.0, 22.0 ],
					"text" : "setwidth 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2252",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.75, 32.5, 96.0, 22.0 ],
					"text" : "r ---reset_device"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2260",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1282.75, 81.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2259",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 1167.75, 81.0, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-2257",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.0, 100.0, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2256",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1167.75, 30.0, 81.0, 22.0 ],
					"text" : "r ---is_playing"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.584, 0.192, 1.0 ],
					"id" : "obj-2255",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.25, 25.0, 69.0, 22.0 ],
					"text" : "r ---is_input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.584313725490196, 0.192156862745098, 1.0 ],
					"id" : "obj-2253",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 224.0, 83.0, 22.0 ],
					"text" : "s ---is_playing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2251",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 351.0, 166.5, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2250",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "int", "float", "list", "float", "float", "int", "int" ],
					"patching_rect" : [ 351.0, 131.0, 103.0, 22.0 ],
					"text" : "plugsync~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2249",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.75, 1271.75, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "intervals.js",
						"parameter_enable" : 0
					}
,
					"text" : "js intervals.js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3140",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1256.0, 1243.0, 150.0, 20.0 ],
					"text" : "HACKS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3137",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1411.75, 1243.0, 56.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "attrs.js",
						"parameter_enable" : 0
					}
,
					"text" : "js attrs.js"
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "bordercolor", 0.2, 0.2, 0.2, 1 ], [ "sliderthickness", 100 ], [ "border", 1 ], [ "textbgcolor", 0, 0, 0, 1 ], [ "slideroffcolor", 0.349, 0.349, 0.349, 1 ], [ "slideroncolor", 0.808, 0.898, 0.91, 1 ], [ "sliderbgcolor", 0.2, 0.2, 0.2, 1 ], [ "textcolor", 1, 1, 1, 1 ], [ "bgcolor", 0.58, 0.612, 0.776, 1 ] ],
					"id" : "obj-3136",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 1252.541666666666515, 1271.75, 143.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "sliders-core.js",
						"parameter_enable" : 0
					}
,
					"text" : "js sliders-core.js disabled"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1519.5, 300.0, 130.0, 20.0 ],
					"text" : "WEIGHT TEMPLATES"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3158",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1499.5, 543.0, 121.0, 22.0 ],
					"text" : "s ---lengths_template"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3157",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1379.375, 565.0, 127.0, 22.0 ],
					"text" : "s ---intervals_template"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1336.75, 591.5, 112.0, 22.0 ],
					"text" : "s ---notes_template"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1336.75, 366.5, 72.0, 22.0 ],
					"text" : "expr $i1 + 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 1336.75, 517.0, 104.25, 22.0 ],
					"text" : "gate 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1102.5, 351.0, 212.0, 22.0 ],
					"text" : "if $i1 == 3 then hidden 1 else hidden 0"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.122, 0.18, 0.816, 1.0 ],
					"id" : "obj-3134",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1336.75, 305.5, 44.0, 22.0 ],
					"text" : "r ---tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3132",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 286.0, 1003.0, 119.0, 22.0 ],
					"text" : "r ---lengths_template"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3131",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 752.5625, 645.5, 125.0, 22.0 ],
					"text" : "r ---intervals_template"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1152.0, 567.5, 143.0, 22.0 ],
					"text" : "prepend weight_template"
				}

			}
, 			{
				"box" : 				{
					"activebgoncolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"bgoncolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"bordercolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"button" : 1,
					"focusbordercolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"id" : "obj-3119",
					"livemode" : 1,
					"maxclass" : "live.tab",
					"num_lines_patching" : 6,
					"num_lines_presentation" : 6,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1178.5, 410.5, 27.5, 116.0 ],
					"pictures" : [ "template-random.svg", "template-flat.svg", "template-line-up.svg", "template-exp-up.svg", "template-line-down.svg", "template-exp-down.svg" ],
					"presentation" : 1,
					"presentation_rect" : [ 565.5, 30.0, 28.5, 136.0 ],
					"remapsvgcolors" : 1,
					"saved_attribute_attributes" : 					{
						"activebgoncolor" : 						{
							"expression" : ""
						}
,
						"bgcolor" : 						{
							"expression" : ""
						}
,
						"bgoncolor" : 						{
							"expression" : ""
						}
,
						"bordercolor" : 						{
							"expression" : ""
						}
,
						"focusbordercolor" : 						{
							"expression" : ""
						}
,
						"textcolor" : 						{
							"expression" : ""
						}
,
						"textoncolor" : 						{
							"expression" : ""
						}
,
						"valueof" : 						{
							"parameter_enum" : [ "random", "flat", "line_up", "exp_up", "line_down", "exp_down" ],
							"parameter_longname" : "live.tab",
							"parameter_mmax" : 5,
							"parameter_shortname" : "live.tab",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"textcolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"textoncolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"usepicture" : 1,
					"usesvgviewbox" : 1,
					"varname" : "live.tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.765, 0.467, 0.871, 1.0 ],
					"id" : "obj-3118",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 334.375, 698.5, 110.0, 22.0 ],
					"text" : "r ---notes_template"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2357",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1451.291666666666515, 1491.0, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2356",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "float" ],
					"patching_rect" : [ 1397.291666666666515, 1491.0, 40.0, 22.0 ],
					"text" : "t b b f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2302",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1586.791666666666515, 1638.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2301",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1511.791666666666515, 1605.5, 79.0, 22.0 ],
					"text" : "expr $f1 / $f2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2300",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1586.791666666666515, 1572.0, 39.0, 22.0 ],
					"text" : "metro"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2327",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1327.25, 1022.5, 74.0, 22.0 ],
					"text" : "r ---off_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-1272",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1050.15625, 1053.0, 95.0, 22.0 ],
					"text" : "r ---border_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-1268",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 932.0, 137.0, 103.0, 22.0 ],
					"text" : "s ---border_color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2141",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 981.125, 26.0, 97.0, 20.0 ],
					"text" : " STYLE  SETUP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2139",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1327.25, 1083.833333492279053, 117.0, 22.0 ],
					"text" : "prepend outlinecolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.041666666666515, 1083.833333492279053, 95.0, 22.0 ],
					"text" : "prepend bgcolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 916.375, 166.5, 80.0, 22.0 ],
					"text" : "s ---fg_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 809.875, 131.0, 83.0, 22.0 ],
					"text" : "s ---bg_color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2887",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1443.0, 1083.833333492279053, 107.0, 22.0 ],
					"text" : "prepend blinkcolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2886",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1435.25, 1022.5, 74.0, 22.0 ],
					"text" : "r ---on_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2885",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1236.041666666666515, 1022.5, 74.0, 22.0 ],
					"text" : "r ---bg_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"blinkcolor" : [ 0.952941176470588, 0.580392156862745, 0.125490196078431, 1.0 ],
					"id" : "obj-2884",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"outlinecolor" : [ 0.588235294117647, 0.588235294117647, 0.588235294117647, 1.0 ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1327.25, 1199.333333492279053, 18.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 569.25, 6.0, 21.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-2880",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 871.109375, 1053.0, 74.0, 22.0 ],
					"text" : "r ---bg_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.082, 0.361, 0.247, 1.0 ],
					"id" : "obj-1992",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1564.791666666666515, 1401.0, 51.0, 22.0 ],
					"text" : "r ---start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1737",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 1045.0, 148.0, 22.0 ],
					"text" : "prepend attr_slideroncolor"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-1738",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 465.0, 1019.25, 74.0, 22.0 ],
					"text" : "r ---on_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-927",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 991.0625, 669.5, 74.0, 22.0 ],
					"text" : "r ---off_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-926",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1110.3125, 669.5, 74.0, 22.0 ],
					"text" : "r ---on_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.518, 0.318, 0.357, 1.0 ],
					"id" : "obj-925",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 785.0, 158.0, 84.0, 22.0 ],
					"text" : "s ---off_color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.517647058823529, 0.317647058823529, 0.356862745098039, 1.0 ],
					"id" : "obj-924",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 735.75, 184.0, 83.0, 22.0 ],
					"text" : "s ---on_color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1434",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1225.901401519775391, 1537.0, 29.5, 22.0 ],
					"text" : "4."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1429",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1021.75, 1542.0, 72.0, 22.0 ],
					"text" : "expr $i1 + 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1428",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1066.401401519775391, 1578.166666507720947, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.365, 0.365, 1.0 ],
					"id" : "obj-1424",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1021.75, 1508.0, 96.0, 22.0 ],
					"text" : "r ---const_length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1432",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1059.901401519775391, 1683.0, 107.0, 22.0 ],
					"text" : "expr $f1 / $f2 * $f3"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.365, 0.365, 1.0 ],
					"id" : "obj-1427",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 820.71875, 1301.75, 98.0, 22.0 ],
					"text" : "s ---const_length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2530",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 802.75, 1465.166666507720947, 72.0, 22.0 ],
					"text" : "expr $i1 + 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2529",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.665139555931091, 1511.166666507720947, 52.0, 22.0 ],
					"text" : "switch 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2528",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 1059.901401519775391, 1465.166666507720947, 33.0, 22.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.525, 0.635, 0.816, 1.0 ],
					"id" : "obj-2527",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 802.75, 1410.0, 122.0, 22.0 ],
					"text" : "r ---intervals_enabled"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.365, 0.365, 1.0 ],
					"id" : "obj-2525",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1150.401401519775391, 1628.0, 87.0, 22.0 ],
					"text" : "r ---press_mult"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.365, 0.365, 1.0 ],
					"id" : "obj-2524",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1030.25, 1770.0, 91.0, 22.0 ],
					"text" : "r ---max_voices"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-2523",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 633.3125, 1049.75, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776470588235294, 0.364705882352941, 0.364705882352941, 1.0 ],
					"id" : "obj-2522",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 633.3125, 1301.75, 93.0, 22.0 ],
					"text" : "s ---max_voices"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.365, 0.365, 1.0 ],
					"id" : "obj-2521",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 732.28125, 1301.75, 89.0, 22.0 ],
					"text" : "s ---press_mult"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2512",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1020.1875, 999.25, 187.0, 20.0 ],
					"text" : "DRONE/ DYNAMICS TAB"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.102, 0.4, 0.776, 1.0 ],
					"id" : "obj-5062",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1059.901401519775391, 1410.0, 103.0, 22.0 ],
					"text" : "r ---interval_probs"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.102, 0.4, 0.776, 1.0 ],
					"id" : "obj-5061",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 633.3125, 909.5, 105.0, 22.0 ],
					"text" : "s ---interval_probs"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.796, 0.651, 1.0 ],
					"id" : "obj-733",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.625, 1003.0, 102.0, 22.0 ],
					"text" : "r ---shared_styles"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.796, 0.651, 1.0 ],
					"id" : "obj-732",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 652.5625, 645.5, 102.0, 22.0 ],
					"text" : "r ---shared_styles"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.250980392156863, 0.603921568627451, 0.890196078431372, 1.0 ],
					"id" : "obj-3884",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.625, 932.5, 101.0, 22.0 ],
					"text" : "s ---note_weights"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.251, 0.604, 0.89, 1.0 ],
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 871.8125, 669.5, 99.0, 22.0 ],
					"text" : "r ---note_weights"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-132",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1106.0, 645.5, 100.0, 20.0 ],
					"text" : "INTERVALS TAB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-597",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 821.401401519775391, 1766.0, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "midi-voices",
						"parameter_enable" : 0
					}
,
					"text" : "js midi-voices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-748",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 250.5, 1435.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-740",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.5, 1453.0, 52.0, 22.0 ],
					"text" : "expr $f1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.38, 0.549, 0.796, 1.0 ],
					"id" : "obj-753",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.401401519775391, 1556.0, 83.0, 22.0 ],
					"text" : "r ---rest_value"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188, 0.263, 0.533, 1.0 ],
					"id" : "obj-752",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 142.5, 1388.0, 79.0, 22.0 ],
					"text" : "r ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.380392156862745, 0.549019607843137, 0.796078431372549, 1.0 ],
					"id" : "obj-751",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 41.5, 1532.0, 85.0, 22.0 ],
					"text" : "s ---rest_value"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-750",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.5, 1491.0, 137.0, 22.0 ],
					"text" : "if $f1 > $f2 then 1 else 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-747",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 142.5, 1419.0, 73.0, 22.0 ],
					"text" : "random 101"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.761, 0.537, 0.608, 1.0 ],
					"id" : "obj-745",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 41.5, 1378.0, 71.0, 22.0 ],
					"text" : "r ---rest_pct"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-743",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 124.5, 1358.5, 150.0, 20.0 ],
					"text" : "RESTS"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-301",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.625, 698.5, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-324",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 568.5, 26.0, 97.0, 20.0 ],
					"text" : "INITIALIZATION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-319",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 617.3125, 1358.5, 150.0, 20.0 ],
					"text" : "TICK GENERATION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-316",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 451.0, 645.5, 150.0, 20.0 ],
					"text" : "NOTES TAB"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-313",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1186.25, 1352.5, 96.0, 20.0 ],
					"text" : "NOTE PLAYING"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.102, 0.4, 0.776, 1.0 ],
					"id" : "obj-310",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.665139555931091, 1410.0, 88.0, 22.0 ],
					"text" : "r ---note_probs"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.101960784313725, 0.4, 0.776470588235294, 1.0 ],
					"id" : "obj-309",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 192.625, 932.5, 90.0, 22.0 ],
					"text" : "s ---note_probs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-308",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 820.71875, 593.5, 253.0, 20.0 ],
					"text" : "INPUT CONTROLS VISIBILITY/ ACTIVATION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-305",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.401401519775391, 1358.5, 150.0, 20.0 ],
					"text" : "VELOCITY GENERATION"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188, 0.263, 0.533, 1.0 ],
					"id" : "obj-300",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 348.625, 1254.5, 79.0, 22.0 ],
					"text" : "r ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-302",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 423.25, 999.25, 176.0, 20.0 ],
					"text" : "NOTE LENGTH GENERATION"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-290",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1492.791666666666515, 1358.5, 150.0, 20.0 ],
					"text" : "DRONE GENERATION"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188, 0.263, 0.533, 1.0 ],
					"id" : "obj-299",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 429.401401519775391, 1401.0, 79.0, 22.0 ],
					"text" : "r ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188, 0.263, 0.533, 1.0 ],
					"id" : "obj-298",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1168.401401519775391, 1410.0, 79.0, 22.0 ],
					"text" : "r ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.188235294117647, 0.262745098039216, 0.533333333333333, 1.0 ],
					"id" : "obj-297",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 539.541666666666515, 1572.0, 81.0, 22.0 ],
					"text" : "s ---each_tick"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.133333333333333, 0.76078431372549, 0.701960784313725, 1.0 ],
					"id" : "obj-295",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.665139555931091, 1657.0, 97.0, 22.0 ],
					"text" : "r ---next_velocity"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.133333333333333, 0.76078431372549, 0.701960784313725, 1.0 ],
					"id" : "obj-294",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.401401519775391, 1654.0, 99.0, 22.0 ],
					"text" : "s ---next_velocity"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.118, 0.369, 0.686, 1.0 ],
					"id" : "obj-293",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 656.541666666666515, 1434.0, 91.0, 22.0 ],
					"text" : "r ---next_tempo"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-292",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.401401519775391, 1401.0, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.118, 0.369, 0.686, 1.0 ],
					"id" : "obj-291",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1131.25, 1508.0, 91.0, 22.0 ],
					"text" : "r ---next_tempo"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.117647058823529, 0.368627450980392, 0.686274509803922, 1.0 ],
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.75, 1301.75, 93.0, 22.0 ],
					"text" : "s ---next_tempo"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.475, 0.161, 1.0 ],
					"id" : "obj-286",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 598.875, 1434.0, 51.0, 22.0 ],
					"text" : "r ---bpm"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.796, 0.345, 0.047, 1.0 ],
					"id" : "obj-362",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 272.125, 698.5, 54.0, 22.0 ],
					"text" : "r ---input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.796078431372549, 0.345098039215686, 0.047058823529412, 1.0 ],
					"id" : "obj-361",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1381.25, 224.0, 56.0, 22.0 ],
					"text" : "s ---input"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.12156862745098, 0.180392156862745, 0.815686274509804, 1.0 ],
					"id" : "obj-350",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 487.75, 224.0, 47.0, 22.0 ],
					"text" : "s ---tab"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.776, 0.655, 0.059, 1.0 ],
					"id" : "obj-499",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 372.401401519775391, 1401.0, 54.0, 22.0 ],
					"text" : "r ---reset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486, 0.012, 0.012, 1.0 ],
					"id" : "obj-491",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 33.625, 990.5, 43.0, 22.0 ],
					"text" : "r ---init"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.486274509803922, 0.011764705882353, 0.011764705882353, 1.0 ],
					"id" : "obj-484",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.75, 224.0, 45.0, 22.0 ],
					"text" : "s ---init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-479",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 936.665139555931091, 1727.0, 58.0, 22.0 ],
					"text" : "pak 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-476",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.401401519775391, 1620.0, 133.0, 22.0 ],
					"text" : "if $i1 == 1 then 0 else 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-466",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 813.401401519775391, 1665.0, 52.0, 22.0 ],
					"text" : "switch 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.475, 0.161, 1.0 ],
					"id" : "obj-497",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1511.791666666666515, 1453.0, 44.0, 22.0 ],
					"text" : "r ---ms"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.475, 0.161, 1.0 ],
					"id" : "obj-496",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 986.901401519775391, 1578.166666507720947, 44.0, 22.0 ],
					"text" : "r ---ms"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741, 0.475, 0.161, 1.0 ],
					"id" : "obj-495",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.25, 224.0, 46.0, 22.0 ],
					"text" : "s ---ms"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-489",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.25, 141.0, 120.0, 22.0 ],
					"text" : "expr 60000. * 4. / $f1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-485",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 1066.401401519775391, 1628.0, 29.5, 22.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.741176470588235, 0.474509803921569, 0.16078431372549, 1.0 ],
					"id" : "obj-494",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 263.75, 224.0, 53.0, 22.0 ],
					"text" : "s ---bpm"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-486",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 9,
					"outlettype" : [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
					"patching_rect" : [ 144.25, 76.0, 103.0, 22.0 ],
					"text" : "transport"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-482",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 813.401401519775391, 1709.0, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-481",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 1310.791666666666515, 1752.5, 61.0, 22.0 ],
					"text" : "makenote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-480",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1389.291666666666515, 1647.5, 80.0, 22.0 ],
					"text" : "expr $f1 * $f2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-490",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1121.25, 131.0, 253.0, 22.0 ],
					"text" : "if ($i1 >0 || $i2 == 1) && $i3 == 0 then 1 else 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-483",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1121.25, 166.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-488",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.25, 123.0, 52.0, 22.0 ],
					"text" : "switch 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.082352941176471, 0.36078431372549, 0.247058823529412, 1.0 ],
					"id" : "obj-473",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1121.25, 212.0, 53.0, 22.0 ],
					"text" : "s ---start"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.082, 0.361, 0.247, 1.0 ],
					"id" : "obj-453",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.541666666666515, 1434.0, 51.0, 22.0 ],
					"text" : "r ---start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-475",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 263.75, 1275.5, 33.0, 22.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-469",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 539.541666666666515, 1490.0, 92.0, 22.0 ],
					"text" : "tempo 120 1 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-467",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 828.401401519775391, 1808.5, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1093",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 936.665139555931091, 1465.166666507720947, 33.0, 22.0 ],
					"save" : [ "#N", "prob", ";" ],
					"text" : "prob"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-463",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1310.75, 1719.5, 58.0, 22.0 ],
					"text" : "pak 0 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-462",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 0,
					"patching_rect" : [ 1315.791666666666515, 1799.5, 49.0, 22.0 ],
					"text" : "noteout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2241",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 322.401401519775391, 1613.0, 32.0, 22.0 ],
					"text" : "+ 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2240",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 322.401401519775391, 1518.019232034683228, 41.0, 22.0 ],
					"text" : "set 80"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2236",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 322.401401519775391, 1563.0, 72.0, 22.0 ],
					"text" : "drunk 60 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-454",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 38.75, 351.0, 171.0, 22.0 ],
					"text" : "if $i1 == 0 then show else hide"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 80.875, 1030.0, 71.0, 22.0 ],
					"text" : "set 2 4 8 16"
				}

			}
, 			{
				"box" : 				{
					"annotation" : "Select the aspect you want to comtrol",
					"id" : "obj-73",
					"livemode" : 1,
					"maxclass" : "live.tab",
					"num_lines_patching" : 4,
					"num_lines_presentation" : 4,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 487.75, 105.0, 60.0, 110.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 6.0, 60.0, 162.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "Notes", "Intervals", "Note lengths", "Play modes" ],
							"parameter_info" : "Select the aspect you want to comtrol",
							"parameter_initial" : [ 0 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "Main tab",
							"parameter_mmax" : 3,
							"parameter_shortname" : "main_tab",
							"parameter_type" : 2,
							"parameter_unitstyle" : 9
						}

					}
,
					"varname" : "main_tab"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1381.25, 191.0, 89.0, 22.0 ],
					"text" : "prepend toggle"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1415.5, 91.5, 34.0, 22.0 ],
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1381.25, 158.0, 55.0, 22.0 ],
					"text" : "stripnote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-516",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 1415.5, 56.0, 41.0, 22.0 ],
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "int", "int" ],
					"patching_rect" : [ 51.75, 119.0, 83.0, 22.0 ],
					"text" : "live.thisdevice"
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
					"id" : "obj-3138",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1226.5, 1235.5, 422.5, 92.25 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.509803921568627, 0.592156862745098, 0.533333333333333, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1226.5, 990.5, 422.5, 236.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.72156862745098, 0.690196078431373, 0.643137254901961, 1.0 ],
					"id" : "obj-3053",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 294.5, 1055.5, 326.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.72156862745098, 0.690196078431373, 0.643137254901961, 1.0 ],
					"id" : "obj-3052",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1370.0, 15.5, 280.5, 237.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.635294117647059, 0.815686274509804, 0.768627450980392, 1.0 ],
					"id" : "obj-2508",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.6875, 990.5, 579.5, 337.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.352941176470588, 0.337254901960784, 0.337254901960784, 1.0 ],
					"bordercolor" : [ 0.890196078431372, 0.905882352941176, 0.905882352941176, 1.0 ],
					"id" : "obj-289",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1282.041666666666515, 1352.5, 366.958333333333485, 480.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.447058823529412, 0.501960784313725, 0.403921568627451, 1.0 ],
					"id" : "obj-296",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 990.5, 582.625, 332.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.690196078431373, 0.509803921568627, 0.474509803921569, 1.0 ],
					"id" : "obj-113",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 627.6875, 638.0, 582.625, 332.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.556862745098039, 0.556862745098039, 0.666666666666667, 1.0 ],
					"id" : "obj-303",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.401401519775391, 1352.5, 207.0, 484.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.733333333333333, 0.741176470588235, 0.607843137254902, 1.0 ],
					"id" : "obj-311",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 780.25, 1352.5, 492.0, 484.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.72156862745098, 0.647058823529412, 0.682352941176471, 1.0 ],
					"id" : "obj-317",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 510.875, 1352.5, 265.0, 484.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.850980392156863, 0.772549019607843, 0.627450980392157, 1.0 ],
					"id" : "obj-320",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 20.5, 642.0, 238.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.635294117647059, 0.741176470588235, 0.815686274509804, 1.0 ],
					"id" : "obj-314",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 638.0, 582.625, 331.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.72156862745098, 0.690196078431373, 0.643137254901961, 1.0 ],
					"id" : "obj-306",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1096.5, 20.5, 258.25, 232.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.623529411764706, 0.72156862745098, 0.627450980392157, 1.0 ],
					"id" : "obj-741",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.5, 1352.5, 261.0, 484.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"id" : "obj-917",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 679.375, 20.5, 399.625, 232.0 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.435294117647059, 0.482352941176471, 0.392156862745098, 1.0 ],
					"id" : "obj-3133",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1096.5, 294.5, 552.5, 326.5 ],
					"proportion" : 0.39
				}

			}
, 			{
				"box" : 				{
					"angle" : 270.0,
					"background" : 1,
					"bgcolor" : [ 0.509803921568627, 0.592156862745098, 0.533333333333333, 1.0 ],
					"id" : "obj-1956",
					"maxclass" : "panel",
					"mode" : 0,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1217.5, 638.0, 431.5, 332.0 ],
					"proportion" : 0.39
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2357", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2529", 1 ],
					"midpoints" : [ 946.165139555931091, 1496.0, 962.665139555931091, 1496.0 ],
					"source" : [ "obj-1093", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 713.75, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1819", 0 ],
					"source" : [ "obj-11278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11278", 0 ],
					"source" : [ "obj-11281", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2925", 0 ],
					"source" : [ "obj-1182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 2 ],
					"source" : [ "obj-1272", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 2 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1429", 0 ],
					"source" : [ "obj-1424", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-485", 0 ],
					"source" : [ "obj-1428", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1428", 0 ],
					"source" : [ "obj-1429", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 2 ],
					"source" : [ "obj-1432", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1428", 2 ],
					"source" : [ "obj-1434", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 877.5, 327.0, 855.0, 327.0, 855.0, 417.0, 755.875, 417.0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 1 ],
					"source" : [ "obj-1737", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1737", 0 ],
					"source" : [ "obj-1738", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1818", 0 ],
					"source" : [ "obj-1819", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2236", 2 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3119", 0 ],
					"source" : [ "obj-1917", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3820", 0 ],
					"source" : [ "obj-1918", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3119", 0 ],
					"midpoints" : [ 1450.0, 380.0, 1406.0, 380.0, 1406.0, 404.0, 1188.0, 404.0 ],
					"source" : [ "obj-1920", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1920", 0 ],
					"source" : [ "obj-1921", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1917", 0 ],
					"order" : 1,
					"source" : [ "obj-1922", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1923", 0 ],
					"order" : 0,
					"source" : [ "obj-1922", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3119", 0 ],
					"source" : [ "obj-1923", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2300", 0 ],
					"source" : [ "obj-1992", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1427", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-2", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2521", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2522", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 1050.464285714285779, 1287.0, 1090.34375, 1287.0 ],
					"source" : [ "obj-2", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 755.875, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2102", 0 ],
					"source" : [ "obj-2101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-2102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2884", 0 ],
					"midpoints" : [ 1245.541666666666515, 1184.0, 1336.75, 1184.0 ],
					"source" : [ "obj-2138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2884", 0 ],
					"midpoints" : [ 1336.75, 1115.0, 1336.75, 1115.0 ],
					"source" : [ "obj-2139", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 877.5, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2241", 0 ],
					"source" : [ "obj-2236", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2236", 0 ],
					"source" : [ "obj-2240", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-294", 0 ],
					"source" : [ "obj-2241", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2251", 0 ],
					"source" : [ "obj-2250", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2253", 0 ],
					"source" : [ "obj-2251", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2262", 0 ],
					"source" : [ "obj-2252", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-488", 0 ],
					"source" : [ "obj-2255", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2259", 0 ],
					"midpoints" : [ 1177.25, 80.0, 1177.25, 80.0 ],
					"source" : [ "obj-2256", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2250", 0 ],
					"source" : [ "obj-2257", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 1 ],
					"source" : [ "obj-2259", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 0 ],
					"source" : [ "obj-2259", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 2 ],
					"source" : [ "obj-2260", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 0 ],
					"source" : [ "obj-2260", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1182", 0 ],
					"source" : [ "obj-2262", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3049", 0 ],
					"source" : [ "obj-2264", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-282", 0 ],
					"source" : [ "obj-2265", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2302", 0 ],
					"source" : [ "obj-2300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2300", 1 ],
					"midpoints" : [ 1521.291666666666515, 1562.0, 1616.291666666666515, 1562.0 ],
					"order" : 0,
					"source" : [ "obj-2301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 0 ],
					"order" : 1,
					"source" : [ "obj-2301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"source" : [ "obj-2302", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2139", 0 ],
					"midpoints" : [ 1336.75, 1077.0, 1336.75, 1077.0 ],
					"source" : [ "obj-2327", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2301", 1 ],
					"source" : [ "obj-2356", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2301", 0 ],
					"source" : [ "obj-2356", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 0 ],
					"source" : [ "obj-2356", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 1 ],
					"source" : [ "obj-2357", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-480", 0 ],
					"source" : [ "obj-2357", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-2523", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-597", 2 ],
					"source" : [ "obj-2524", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1432", 2 ],
					"source" : [ "obj-2525", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2530", 0 ],
					"source" : [ "obj-2527", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2529", 2 ],
					"midpoints" : [ 1069.401401519775391, 1496.0, 979.165139555931091, 1496.0 ],
					"source" : [ "obj-2528", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 0 ],
					"source" : [ "obj-2529", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2529", 0 ],
					"source" : [ "obj-2530", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-304", 0 ],
					"source" : [ "obj-2534", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5061", 0 ],
					"source" : [ "obj-2534", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 1 ],
					"midpoints" : [ 106.401401519775391, 738.0, 281.625, 738.0 ],
					"source" : [ "obj-277", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-277", 0 ],
					"source" : [ "obj-278", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 1 ],
					"midpoints" : [ 245.125, 669.0, 267.0, 669.0, 267.0, 738.0, 281.625, 738.0 ],
					"source" : [ "obj-279", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 2 ],
					"source" : [ "obj-280", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2264", 0 ],
					"midpoints" : [ 221.625, 358.0, 221.25, 358.0 ],
					"source" : [ "obj-282", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2266", 0 ],
					"midpoints" : [ 211.125, 349.0, 258.125, 349.0, 258.125, 340.0, 273.25, 340.0 ],
					"source" : [ "obj-282", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 407.0, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-283", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-283", 0 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-469", 1 ],
					"midpoints" : [ 608.375, 1476.0, 573.374999999999886, 1476.0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 1 ],
					"source" : [ "obj-2880", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2138", 0 ],
					"midpoints" : [ 1245.541666666666515, 1068.0, 1245.541666666666515, 1068.0 ],
					"source" : [ "obj-2885", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2887", 0 ],
					"midpoints" : [ 1444.75, 1044.0, 1452.5, 1044.0 ],
					"source" : [ "obj-2886", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2884", 0 ],
					"midpoints" : [ 1452.5, 1184.0, 1336.75, 1184.0 ],
					"source" : [ "obj-2887", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1428", 1 ],
					"source" : [ "obj-291", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2240", 0 ],
					"source" : [ "obj-292", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2926", 0 ],
					"source" : [ "obj-2925", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-484", 0 ],
					"source" : [ "obj-2925", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-2927", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 1 ],
					"midpoints" : [ 191.125, 738.0, 281.625, 738.0 ],
					"source" : [ "obj-2928", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-469", 3 ],
					"midpoints" : [ 666.041666666666515, 1476.0, 622.041666666666515, 1476.0 ],
					"source" : [ "obj-293", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-479", 1 ],
					"source" : [ "obj-295", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1093", 0 ],
					"midpoints" : [ 1177.901401519775391, 1451.0, 946.165139555931091, 1451.0 ],
					"order" : 2,
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1434", 0 ],
					"order" : 0,
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2528", 0 ],
					"order" : 1,
					"source" : [ "obj-298", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2236", 0 ],
					"midpoints" : [ 438.901401519775391, 1548.0, 331.901401519775391, 1548.0 ],
					"source" : [ "obj-299", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-475", 0 ],
					"midpoints" : [ 358.125, 1279.0, 306.0, 1279.0, 306.0, 1270.0, 273.25, 1270.0 ],
					"source" : [ "obj-300", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 0 ],
					"midpoints" : [ 43.125, 720.0, 43.125, 720.0 ],
					"source" : [ "obj-301", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2884", 0 ],
					"midpoints" : [ 1547.0, 1185.0, 1336.75, 1185.0 ],
					"source" : [ "obj-3048", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 221.25, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-3049", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2260", 0 ],
					"source" : [ "obj-3050", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-490", 0 ],
					"source" : [ "obj-3051", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3192", 0 ],
					"source" : [ "obj-3056", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-454", 0 ],
					"source" : [ "obj-3061", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2100", 0 ],
					"source" : [ "obj-3065", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-281", 0 ],
					"source" : [ "obj-3065", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-309", 0 ],
					"source" : [ "obj-3065", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3884", 0 ],
					"source" : [ "obj-3065", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-297", 0 ],
					"source" : [ "obj-3066", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 61.75, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-3067", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1093", 0 ],
					"source" : [ "obj-310", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 1 ],
					"midpoints" : [ 343.875, 738.0, 281.625, 738.0 ],
					"source" : [ "obj-3118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3120", 0 ],
					"midpoints" : [ 1192.25, 553.0, 1161.5, 553.0 ],
					"source" : [ "obj-3119", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-312", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-475", 0 ],
					"midpoints" : [ 43.125, 1270.0, 273.25, 1270.0 ],
					"source" : [ "obj-312", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3154", 1 ],
					"midpoints" : [ 1161.5, 599.0, 1322.0, 599.0, 1322.0, 503.0, 1431.5, 503.0 ],
					"source" : [ "obj-3120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 1 ],
					"source" : [ "obj-3131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 1 ],
					"source" : [ "obj-3132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3135", 0 ],
					"order" : 1,
					"source" : [ "obj-3134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3155", 0 ],
					"order" : 0,
					"source" : [ "obj-3134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3119", 0 ],
					"midpoints" : [ 1112.0, 397.0, 1188.0, 397.0 ],
					"source" : [ "obj-3135", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3056", 0 ],
					"midpoints" : [ 563.75, 519.0, 446.0, 519.0 ],
					"source" : [ "obj-315", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3156", 0 ],
					"source" : [ "obj-3154", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3157", 0 ],
					"source" : [ "obj-3154", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3158", 0 ],
					"midpoints" : [ 1431.5, 539.0, 1509.0, 539.0 ],
					"source" : [ "obj-3154", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3154", 0 ],
					"source" : [ "obj-3155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-318", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-315", 0 ],
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3065", 1 ],
					"midpoints" : [ 281.625, 720.0, 281.625, 720.0 ],
					"source" : [ "obj-362", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1268", 0 ],
					"source" : [ "obj-3820", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2134", 0 ],
					"midpoints" : [ 843.25, 117.0, 819.375, 117.0 ],
					"order" : 1,
					"source" : [ "obj-3820", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2135", 0 ],
					"midpoints" : [ 892.375, 117.0, 918.0, 117.0, 918.0, 159.0, 925.875, 159.0 ],
					"source" : [ "obj-3820", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3549", 0 ],
					"midpoints" : [ 843.25, 123.0, 903.5, 123.0 ],
					"order" : 0,
					"source" : [ "obj-3820", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3570", 0 ],
					"source" : [ "obj-3820", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-924", 0 ],
					"source" : [ "obj-3820", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-925", 0 ],
					"midpoints" : [ 794.125, 108.0, 794.5, 108.0 ],
					"source" : [ "obj-3820", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-469", 0 ],
					"source" : [ "obj-453", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3067", 0 ],
					"source" : [ "obj-454", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-481", 0 ],
					"source" : [ "obj-463", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-482", 0 ],
					"source" : [ "obj-466", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3066", 0 ],
					"source" : [ "obj-469", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"midpoints" : [ 273.25, 1297.0, 273.25, 1297.0 ],
					"source" : [ "obj-475", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-466", 0 ],
					"source" : [ "obj-476", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-466", 1 ],
					"source" : [ "obj-479", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 2 ],
					"source" : [ "obj-480", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-462", 1 ],
					"source" : [ "obj-481", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-462", 0 ],
					"source" : [ "obj-481", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-597", 1 ],
					"source" : [ "obj-482", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-597", 0 ],
					"source" : [ "obj-482", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-473", 0 ],
					"source" : [ "obj-483", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1432", 1 ],
					"source" : [ "obj-485", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1432", 0 ],
					"source" : [ "obj-485", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-489", 0 ],
					"order" : 1,
					"source" : [ "obj-486", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-494", 0 ],
					"midpoints" : [ 195.75, 126.0, 195.0, 126.0, 195.0, 183.0, 273.25, 183.0 ],
					"order" : 0,
					"source" : [ "obj-486", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-488", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-495", 0 ],
					"source" : [ "obj-489", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-483", 0 ],
					"source" : [ "obj-490", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 0 ],
					"order" : 1,
					"source" : [ "obj-491", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 43.125, 1026.0, 90.375, 1026.0 ],
					"order" : 0,
					"source" : [ "obj-491", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1432", 0 ],
					"source" : [ "obj-496", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2301", 0 ],
					"midpoints" : [ 1521.291666666666515, 1590.0, 1521.291666666666515, 1590.0 ],
					"source" : [ "obj-497", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2240", 0 ],
					"source" : [ "obj-499", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2528", 0 ],
					"source" : [ "obj-5062", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-516", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-516", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-467", 1 ],
					"source" : [ "obj-597", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-467", 0 ],
					"source" : [ "obj-597", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-488", 1 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-350", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 1 ],
					"source" : [ "obj-732", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 1 ],
					"source" : [ "obj-733", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-750", 1 ],
					"source" : [ "obj-740", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-750", 0 ],
					"source" : [ "obj-745", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-740", 0 ],
					"source" : [ "obj-747", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-751", 0 ],
					"source" : [ "obj-750", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-747", 0 ],
					"order" : 0,
					"source" : [ "obj-752", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-750", 0 ],
					"order" : 1,
					"source" : [ "obj-752", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-476", 0 ],
					"source" : [ "obj-753", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-361", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-463", 1 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-312", 1 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2356", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 4 ],
					"source" : [ "obj-926", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2534", 3 ],
					"source" : [ "obj-927", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11278::obj-3172" : [ "live.menu", "live.menu", 0 ],
			"obj-2534::obj-2515" : [ "Enable interval weights", "enable_weights", 0 ],
			"obj-2534::obj-3091" : [ "stored_intervals", "stored_intervals", 0 ],
			"obj-2::obj-11" : [ "live.dial", "live.dial", 0 ],
			"obj-2::obj-14" : [ "note_mult", "note_mult", 0 ],
			"obj-2::obj-1425" : [ "Constant note length", "const_note_length", 0 ],
			"obj-2::obj-15" : [ "velocity_variation", "velocity_variation", 0 ],
			"obj-2::obj-23" : [ "drone_press_mult", "drone_press_mult", 0 ],
			"obj-2::obj-24" : [ "max_voices", "max_voices", 0 ],
			"obj-2::obj-28" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-2::obj-455" : [ "Drone note", "drone_note", 0 ],
			"obj-2::obj-457" : [ "Drone velocity", "drone_velocity", 0 ],
			"obj-2::obj-459" : [ "Drone tick", "drone_tempo", 0 ],
			"obj-3065::obj-285" : [ "stored_notes", "stored_notes", 0 ],
			"obj-3065::obj-470" : [ "Notes input gate", "Input", 0 ],
			"obj-3065::obj-527" : [ "Reset notes", "reset_btn", 0 ],
			"obj-3119" : [ "live.tab", "live.tab", 0 ],
			"obj-312::obj-2509" : [ "Rest percent", "rest_pct", 0 ],
			"obj-312::obj-576" : [ "stored_lengths", "stored_lengths", 0 ],
			"obj-73" : [ "Main tab", "main_tab", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "attrs.js",
				"bootpath" : "~/projects/max-msp/lib/attrs",
				"patcherrelativepath" : "../../../lib/attrs",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "extract-intervals.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-prob.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "intervals.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "kslider-with-base.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "midi-voices.js",
				"bootpath" : "~/projects/max-msp/lib/midi-voices",
				"patcherrelativepath" : "../../../lib/midi-voices",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "non-linear-range.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "note-length-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "note-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "rr-dynamic-help-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-dynamics-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-intervals-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-note-lengths-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-notes-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "simple-prob.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sliders-core.js",
				"bootpath" : "~/projects/max-msp/lib/multi-slider",
				"patcherrelativepath" : "../../../lib/multi-slider",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "style-chooser.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "template-exp-down.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-exp-up.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-flat.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-line-down.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-line-up.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-random.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"patcherrelativepath" : "../media",
				"type" : "svg",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
		"editing_bgcolor" : [ 0.356862745098039, 0.356862745098039, 0.356862745098039, 1.0 ]
	}

}
