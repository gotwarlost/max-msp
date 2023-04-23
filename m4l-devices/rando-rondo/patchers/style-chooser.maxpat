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
		"rect" : [ 521.0, 485.0, 1193.0, 752.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-729",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.0, 41.0, 135.0, 35.0 ],
					"text" : "attr_sliderthickness 95, sep 2 5, width 25 30"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Slider styles",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 656.0, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1270",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.5, 280.0, 141.0, 22.0 ],
					"text" : "prepend attr_bordercolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1016",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.5, 189.0, 148.0, 22.0 ],
					"text" : "prepend attr_slideroffcolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1274",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 500.0, 413.0, 148.0, 22.0 ],
					"text" : "prepend attr_sliderbgcolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1273",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 503.5, 377.0, 125.0, 22.0 ],
					"text" : "prepend attr_textcolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1562",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.5, 111.0, 119.0, 22.0 ],
					"text" : "prepend attr_bgcolor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1561",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.0, 151.0, 139.0, 22.0 ],
					"text" : "prepend attr_textbgcolor"
				}

			}
, 			{
				"box" : 				{
					"comment" : "Load colors on bang",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 41.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Border color",
					"id" : "obj-7",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.0, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Foreground color",
					"id" : "obj-6",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 280.5, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Background color",
					"id" : "obj-5",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 191.5, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "Off color",
					"id" : "obj-4",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.5, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "On color",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.0, 479.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2141",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 123.5, 41.0, 109.0, 20.0 ],
					"text" : "STYLES SETUP"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2133",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 364.0, 177.5, 71.0, 22.0 ],
					"text" : "control_fg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2132",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 276.5, 177.5, 74.0, 22.0 ],
					"text" : "control_bg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-923",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 30.0, 299.0, 353.0, 22.0 ],
					"text" : "route lcd_control_fg lcd_control_fg_zombie control_bg control_fg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-922",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 134.0, 177.5, 131.0, 22.0 ],
					"text" : "lcd_control_fg_zombie"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-919",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.0, 177.5, 83.0, 22.0 ],
					"text" : "lcd_control_fg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-918",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 142.0, 242.0, 72.0, 22.0 ],
					"text" : "live.colors"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2132", 0 ],
					"midpoints" : [ 39.5, 118.0, 286.0, 118.0 ],
					"order" : 2,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2133", 0 ],
					"midpoints" : [ 39.5, 105.0, 373.5, 105.0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-729", 0 ],
					"midpoints" : [ 39.5, 72.0, 495.0, 72.0, 495.0, 36.0, 518.5, 36.0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-919", 0 ],
					"order" : 4,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-922", 0 ],
					"midpoints" : [ 39.5, 137.0, 143.5, 137.0 ],
					"order" : 3,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 505.0, 266.0, 665.5, 266.0 ],
					"source" : [ "obj-1016", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 505.0, 359.0, 665.5, 359.0 ],
					"source" : [ "obj-1270", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 513.0, 395.0, 684.0, 395.0, 684.0, 461.0, 665.5, 461.0 ],
					"source" : [ "obj-1273", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 509.5, 446.0, 665.5, 446.0 ],
					"source" : [ "obj-1274", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 518.5, 176.0, 727.0, 176.0, 727.0, 446.0, 665.5, 446.0 ],
					"source" : [ "obj-1561", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 505.0, 141.0, 720.0, 141.0, 720.0, 446.0, 665.5, 446.0 ],
					"source" : [ "obj-1562", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-918", 0 ],
					"midpoints" : [ 286.0, 227.0, 151.5, 227.0 ],
					"source" : [ "obj-2132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-918", 0 ],
					"midpoints" : [ 373.5, 223.0, 151.5, 223.0 ],
					"source" : [ "obj-2133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 518.5, 101.0, 665.5, 101.0 ],
					"source" : [ "obj-729", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2132", 0 ],
					"midpoints" : [ 204.5, 266.0, 269.0, 266.0, 269.0, 173.0, 286.0, 173.0 ],
					"order" : 1,
					"source" : [ "obj-918", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2133", 0 ],
					"midpoints" : [ 204.5, 266.0, 347.0, 266.0, 347.0, 173.0, 373.5, 173.0 ],
					"order" : 0,
					"source" : [ "obj-918", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-919", 0 ],
					"midpoints" : [ 204.5, 275.0, 17.0, 275.0, 17.0, 173.0, 39.5, 173.0 ],
					"order" : 3,
					"source" : [ "obj-918", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-922", 0 ],
					"midpoints" : [ 204.5, 275.0, 128.0, 275.0, 128.0, 173.0, 143.5, 173.0 ],
					"order" : 2,
					"source" : [ "obj-918", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-923", 0 ],
					"source" : [ "obj-918", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-918", 0 ],
					"midpoints" : [ 39.5, 227.0, 151.5, 227.0 ],
					"source" : [ "obj-919", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-918", 0 ],
					"midpoints" : [ 143.5, 227.0, 151.5, 227.0 ],
					"source" : [ "obj-922", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1016", 0 ],
					"midpoints" : [ 206.5, 353.0, 482.0, 353.0, 482.0, 185.0, 505.0, 185.0 ],
					"order" : 1,
					"source" : [ "obj-923", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1270", 0 ],
					"order" : 2,
					"source" : [ "obj-923", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1273", 0 ],
					"order" : 0,
					"source" : [ "obj-923", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1274", 0 ],
					"midpoints" : [ 290.0, 407.0, 509.5, 407.0 ],
					"order" : 1,
					"source" : [ "obj-923", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1561", 0 ],
					"midpoints" : [ 206.5, 353.0, 482.0, 353.0, 482.0, 146.0, 518.5, 146.0 ],
					"order" : 0,
					"source" : [ "obj-923", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1562", 0 ],
					"midpoints" : [ 206.5, 353.0, 482.0, 353.0, 482.0, 107.0, 505.0, 107.0 ],
					"order" : 2,
					"source" : [ "obj-923", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-923", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-923", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"order" : 3,
					"source" : [ "obj-923", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 4,
					"source" : [ "obj-923", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 3,
					"source" : [ "obj-923", 3 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
