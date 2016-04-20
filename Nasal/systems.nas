# System file by it0uchpods.
#############################

# NOTE: This file contains a loop for running all update functions, so it should be loaded last

## SYSTEMS LOOP
###############

var systems =
 {
 stopUpdate: 0,
 init: func
  {
  print("Stuff initialized!!!");
  systems.stop();
  settimer(func
   {
   systems.stopUpdate = 0;
   systems.update();
   }, 0.5);
  },
 stop: func
  {
  systems.stopUpdate = 1;
  },
 update: func
  {
  setprop("engines/engine[0]/egt-degc", (getprop("engines/engine[0]/egt-degf") - 32) / 1.8);
  setprop("engines/engine[1]/egt-degc", (getprop("engines/engine[1]/egt-degf") - 32) / 1.8);
#  apu1.update();
#  engine1.update();
#  engine2.update();
#  speedbrakes.update();
#  instruments.update();
#  update_electrical();

  # stop calling our systems code if the stop() function was called or the aircraft crashes
  if (!systems.stopUpdate and !props.globals.getNode("sim/crashed").getBoolValue())
   {
   settimer(systems.update, 0);
   }
  }
 };
