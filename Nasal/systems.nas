#A310 Systems by Joshua Davidson (it0uchpods/411)
  
setlistener("/sim/signals/fdm-initialized", func {
  ap_init();
  setprop("/autopilot/locks/at-mode", 0);
  setprop("/controls/switches/at", 0);
  var autopilot = gui.Dialog.new("sim/gui/dialogs/autopilot/dialog", "Aircraft/A310/Systems/autopilot-dlg.xml");
  print("SYSTEMS ... FINE!");
});

# That is all for now.