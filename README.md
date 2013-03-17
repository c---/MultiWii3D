MultiWii3D
==========

This is experimental. Use at your own risk. Test without props attached. Unanticipated motor spool-ups are very likely at any time even if it seems like it's working. Not all ESC's, motors, and/or batteries may be able to handle the load of high speed reversing and could be damaged.

MultiWii with changes to support inverted flight via reversing motors 

 * MultiWii-2.2 is using the MultiWii 2.2 code base
 * MultiWii-svn is the code base from MultiWii svn; currently r1370
 * MultiWii-r1253 an old personal configuration I use on my quad

Throttle above middle is forward rotation on the motors, below the middle and the motors rotate in reverse. The effect is similar to a CP helicopter.

*WARNING* You must set up the "ARM" box in MultiWii. The sticks can not be used to arm and disarm.

simonk firmware needs the following settings:
 * RC_PULS_REVERSE=1
 * RCP_DEADBAND=24
 * STOP_RC_PULS=1060
 * FULL_RC_PULS=1860
 * throttle neutral at 1460

Be careful if you calibrated the ESC's. You generally do not want that as MultiWii sends its own timing that may not match your TX.

In theory you want no calibration data on your ESC's so that they will use the values above compiled in to the firmware. However, I have had issues where my ESC's wouldn't start when I had no calibration data in the EEPROM so I manually edited my ESC's EEPROM and put in the 1060, 1860, and 1460 points (note those are not the actual values that would go in the EEPROM).
