ampf   mmmmmeta      ptch�  {
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
		"rect" : [ 34.0, 87.0, 1702.0, 1319.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 169.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial Bold",
		"gridonopen" : 2,
		"gridsize" : [ 8.0, 8.0 ],
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
		"boxanimatetime" : 500,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 1,
		"boxes" : [ 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "rr-main.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 385.0, 457.0, 784.0, 190.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 0.0, 784.0, 190.0 ],
					"varname" : "rr-main",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-1::obj-11278::obj-3172" : [ "live.menu", "live.menu", 0 ],
			"obj-1::obj-2534::obj-2515" : [ "Enable interval weights", "enable_weights", 0 ],
			"obj-1::obj-2534::obj-3091" : [ "stored_intervals", "stored_intervals", 0 ],
			"obj-1::obj-2::obj-11" : [ "live.dial", "live.dial", 0 ],
			"obj-1::obj-2::obj-14" : [ "note_mult", "note_mult", 0 ],
			"obj-1::obj-2::obj-1425" : [ "Constant note length", "const_note_length", 0 ],
			"obj-1::obj-2::obj-15" : [ "velocity_variation", "velocity_variation", 0 ],
			"obj-1::obj-2::obj-23" : [ "drone_press_mult", "drone_press_mult", 0 ],
			"obj-1::obj-2::obj-24" : [ "max_voices", "max_voices", 0 ],
			"obj-1::obj-2::obj-28" : [ "live.dial[1]", "live.dial", 0 ],
			"obj-1::obj-2::obj-455" : [ "Drone note", "drone_note", 0 ],
			"obj-1::obj-2::obj-457" : [ "Drone velocity", "drone_velocity", 0 ],
			"obj-1::obj-2::obj-459" : [ "Drone tick", "drone_tempo", 0 ],
			"obj-1::obj-3065::obj-285" : [ "stored_notes", "stored_notes", 0 ],
			"obj-1::obj-3065::obj-470" : [ "Notes input gate", "Input", 0 ],
			"obj-1::obj-3065::obj-527" : [ "Reset notes", "reset_btn", 0 ],
			"obj-1::obj-3119" : [ "live.tab", "live.tab", 0 ],
			"obj-1::obj-312::obj-2509" : [ "Rest percent", "rest_pct", 0 ],
			"obj-1::obj-312::obj-576" : [ "stored_lengths", "stored_lengths", 0 ],
			"obj-1::obj-73" : [ "Main tab", "main_tab", 0 ],
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
				"bootpath" : "~/Documents/Max 8/Max for Live Devices/gen-sunday Project/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "extract-intervals.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-prob.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "interval-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "intervals.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "kslider-with-base.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "midi-voices.js",
				"bootpath" : "~/Documents/Max 8/Max for Live Devices/gen-sunday Project/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "non-linear-range.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "note-length-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "note-sliders.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "rr-dynamic-help-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-dynamics-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-intervals-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-main.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-note-lengths-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rr-notes-tab.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "simple-prob.js",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "sliders-core.js",
				"bootpath" : "~/Documents/Max 8/Max for Live Devices/gen-sunday Project/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "style-chooser.maxpat",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "template-exp-down.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-exp-up.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-flat.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-line-down.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-line-up.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
, 			{
				"name" : "template-random.svg",
				"bootpath" : "~/projects/max-msp/m4l-devices/rando-rondo/media",
				"type" : "svg",
				"implicit" : 1
			}
 ],
		"latency" : 0,
		"is_mpe" : 0,
		"minimum_live_version" : "",
		"minimum_max_version" : "",
		"platform_compatibility" : 0,
		"project" : 		{
			"version" : 1,
			"creationdate" : 3590052786,
			"modificationdate" : 3590052786,
			"viewrect" : [ 25.0, 106.0, 300.0, 500.0 ],
			"autoorganize" : 1,
			"hideprojectwindow" : 1,
			"showdependencies" : 1,
			"autolocalize" : 0,
			"contents" : 			{
				"patchers" : 				{

				}
,
				"media" : 				{

				}
,
				"code" : 				{

				}

			}
,
			"layout" : 			{

			}
,
			"searchpath" : 			{

			}
,
			"detailsvisible" : 0,
			"amxdtype" : 1835887981,
			"readonly" : 0,
			"devpathtype" : 0,
			"devpath" : ".",
			"sortmode" : 0,
			"viewmode" : 0,
			"includepackages" : 0
		}
,
		"autosave" : 0,
		"default_bgcolor" : [ 0.07843137254902, 0.07843137254902, 0.07843137254902, 1.0 ],
		"bgcolor" : [ 0.235294117647059, 0.235294117647059, 0.235294117647059, 1.0 ],
		"stripecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
		"saved_attribute_attributes" : 		{
			"locked_bgcolor" : 			{
				"expression" : ""
			}

		}

	}

}
 