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
		"rect" : [ 240.0, 180.0, 982.0, 620.0 ],
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
					"comment" : "kslider output",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 57.0, 237.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "kslider messages",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 18.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3176",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 244.0, 108.5, 85.0, 22.0 ],
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3175",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 244.0, 64.5, 32.0, 22.0 ],
					"text" : "+ 36"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3174",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 144.0, 97.5, 30.0, 22.0 ],
					"text" : "* 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3173",
					"maxclass" : "live.comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 68.5, 58.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 1.0, 58.0, 18.0 ],
					"text" : "Base note:",
					"textjustification" : 0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3172",
					"maxclass" : "live.menu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 144.0, 68.5, 35.0, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.0, 2.5, 36.0, 15.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_enum" : [ "C1", "C2", "C3", "C4", "C5", "C6" ],
							"parameter_initial" : [ 2 ],
							"parameter_initial_enable" : 1,
							"parameter_longname" : "live.menu",
							"parameter_mmax" : 5,
							"parameter_shortname" : "live.menu",
							"parameter_type" : 2
						}

					}
,
					"varname" : "live.menu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2263",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : 60,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 57.0, 151.5, 168.0, 53.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1.0, 21.0, 168.0, 53.0 ],
					"range" : 24
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3172", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-2263", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3174", 0 ],
					"midpoints" : [ 153.5, 78.0, 153.5, 78.0 ],
					"source" : [ "obj-3172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3175", 0 ],
					"source" : [ "obj-3174", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3176", 0 ],
					"source" : [ "obj-3175", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2263", 0 ],
					"midpoints" : [ 253.5, 139.0, 66.5, 139.0 ],
					"source" : [ "obj-3176", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-3172" : [ "live.menu", "live.menu", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
