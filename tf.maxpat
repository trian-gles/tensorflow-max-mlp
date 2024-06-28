{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 164.0, 165.0, 948.0, 575.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
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
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 185.0, 94.0, 22.0 ],
					"text" : "script start 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 134.0, 150.0, 34.0 ],
					"text" : "0.5. Restart the main script"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 765.0, 18.0, 150.0, 34.0 ],
					"text" : "4. save/load your trained models"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 237.0, 453.0, 50.0, 36.0 ],
					"text" : "9. 10. 11."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 785.0, 101.0, 111.0, 22.0 ],
					"text" : "load weights kieran"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 783.0, 69.0, 114.0, 22.0 ],
					"text" : "save weights kieran"
				}

			}
, 			{
				"box" : 				{
					"data" : 					{
						"kieran" : 						{
							"weights" : [ 								{
									"data" : 									{
										"0" : 1.012908458709717,
										"1" : -0.620146811008453,
										"2" : -0.129914328455925,
										"3" : 0.541027724742889,
										"4" : 0.19341653585434,
										"5" : 0.360722154378891,
										"6" : 0.09280800819397,
										"7" : 1.268574237823486
									}
,
									"shape" : [ 2, 4 ]
								}
, 								{
									"data" : 									{
										"0" : -0.258607089519501,
										"1" : -0.583316743373871,
										"2" : 0.113245263695717,
										"3" : -0.051932688802481
									}
,
									"shape" : [ 4 ]
								}
, 								{
									"data" : 									{
										"0" : 0.631340265274048,
										"1" : -0.096657283604145,
										"2" : 0.223567947745323,
										"3" : 0.624955534934998,
										"4" : 0.085933394730091,
										"5" : -1.187804460525513,
										"6" : 0.306746393442154,
										"7" : 0.066343888640404,
										"8" : 0.77016669511795,
										"9" : 0.780229866504669,
										"10" : 1.183329939842224,
										"11" : 0.801688551902771
									}
,
									"shape" : [ 4, 3 ]
								}
, 								{
									"data" : 									{
										"0" : -0.4663907289505,
										"1" : 0.079067341983318,
										"2" : 0.319364786148071
									}
,
									"shape" : [ 3 ]
								}
 ],
							"model" : 							{
								"class_name" : "Sequential",
								"config" : 								{
									"name" : "sequential_1",
									"layers" : [ 										{
											"class_name" : "Dense",
											"config" : 											{
												"units" : 4,
												"activation" : "linear",
												"use_bias" : 1,
												"kernel_initializer" : 												{
													"class_name" : "VarianceScaling",
													"config" : 													{
														"scale" : 1,
														"mode" : "fan_avg",
														"distribution" : "normal",
														"seed" : null
													}

												}
,
												"bias_initializer" : 												{
													"class_name" : "Zeros",
													"config" : 													{

													}

												}
,
												"kernel_regularizer" : null,
												"bias_regularizer" : null,
												"activity_regularizer" : null,
												"kernel_constraint" : null,
												"bias_constraint" : null,
												"name" : "dense_Dense1",
												"trainable" : 1,
												"batch_input_shape" : [ null, 2 ],
												"dtype" : "float32"
											}

										}
, 										{
											"class_name" : "Dense",
											"config" : 											{
												"units" : 3,
												"activation" : "linear",
												"use_bias" : 1,
												"kernel_initializer" : 												{
													"class_name" : "VarianceScaling",
													"config" : 													{
														"scale" : 1,
														"mode" : "fan_avg",
														"distribution" : "normal",
														"seed" : null
													}

												}
,
												"bias_initializer" : 												{
													"class_name" : "Zeros",
													"config" : 													{

													}

												}
,
												"kernel_regularizer" : null,
												"bias_regularizer" : null,
												"activity_regularizer" : null,
												"kernel_constraint" : null,
												"bias_constraint" : null,
												"name" : "dense_Dense2",
												"trainable" : 1
											}

										}
 ]
								}
,
								"keras_version" : "tfjs-layers 4.20.0",
								"backend" : "tensor_flow.js"
							}

						}

					}
,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "dictionary", "", "", "", "" ],
					"patching_rect" : [ 768.0, 215.0, 133.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"legacy" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict weights @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.0, 18.0, 122.0, 20.0 ],
					"text" : "0. Install tf package"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 484.0, 230.0, 150.0, 48.0 ],
					"text" : "args are input shape, output shape, and size of the single hidden layer"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 339.0, 44.0, 152.0, 34.0 ],
					"text" : "Uses basic SGD optimizer with 0.01 learning rate"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 547.0, 18.0, 150.0, 20.0 ],
					"text" : "3. Run the trained model"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 339.0, 18.0, 150.0, 20.0 ],
					"text" : "2. Train for 100k epochs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 187.0, 25.0, 150.0, 20.0 ],
					"text" : "1. Add training points"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 204.0, 62.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 204.0, 101.0, 52.0, 22.0 ],
					"text" : "t b b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 215.0, 107.0, 22.0 ],
					"text" : "prepend dataPoint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.0, 146.0, 55.0, 22.0 ],
					"text" : "3 3 5 6 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.0, 170.0, 55.0, 22.0 ],
					"text" : "4 4 7 8 9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 170.0, 55.0, 22.0 ],
					"text" : "2 2 3 4 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 204.0, 146.0, 55.0, 22.0 ],
					"text" : "1 1 1 2 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 74.0, 65.0, 22.0 ],
					"text" : "predict 5 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 351.0, 84.0, 75.0, 22.0 ],
					"text" : "train 100000"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "n4m.monitor.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 523.0, 342.0, 400.0, 220.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 7.0, 44.0, 98.0, 22.0 ],
					"text" : "script npm install"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 230.0, 296.0, 287.0, 22.0 ],
					"saved_object_attributes" : 					{
						"args" : [ 2, 3, 4 ],
						"autostart" : 1,
						"defer" : 0,
						"watch" : 1
					}
,
					"text" : "node.script tf.js @watch 1 @autostart 1 @args 2 3 4"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 1 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-14", 0 ]
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
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-18", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "fit_jweb_to_bounds.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "n4m.monitor.maxpat",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "resize_n4m_monitor_patcher.js",
				"bootpath" : "C74:/packages/Node for Max/patchers/debug-monitor",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "tf.js",
				"bootpath" : "~/OneDrive/Documents/Max 8/tensorflow-max",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
