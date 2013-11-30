MultiWii3D
==========

**WARNING** The MultiWii 2.3 branch is very new and unstable, be careful when testing it. I have at least one issue that causes all motors to stop while flying.

This is experimental. Use at your own risk. Test without props attached. Unanticipated motor spool-ups are very likely at any time even if it seems like it's working. Not all ESC's, motors, and/or batteries may be able to handle the load of high speed reversing and could be damaged.

MultiWii with changes to support inverted flight via reversing motors 

Throttle above middle is forward rotation on the motors, below the middle and the motors rotate in reverse. The effect is similar to a CP helicopter.

**WARNING** You must set up the "ARM" box in MultiWii. The sticks can not be used to arm and disarm.

simonk firmware needs the following settings:

Older versions of simonk:
 * RC_PULS_REVERSE = 1
 * RCP_DEADBAND = 24
 * STOP_RC_PULS = 1060
 * FULL_RC_PULS = 1860
 * throttle neutral at 1460

Newer versions of simonk should additionally set:
 * RC_CALIBRATION = 0

Be careful if you calibrated the ESC's. MultiWii sends its own timing that may not match your TX. Generally you want no calibration data on the ESC so that the ESC will use the above values compiled in to the firmware. However, the calibration settings can also be manually updated (see below).

Pre-built simonk hex files are provided in the simonk directory. Inside there are also EEPROM.hex file(s) that can be used to set the calibration to the exact needed values. EEPROM_16mhz.hex is for ESC's with external 16mHz oscillator.  **NOTE** The EEPROM hex file can not be flashed like a normal flash hex file, it must be flashed to the EEPROM area only. This can be done manually with avrdude using a command similar to the following:  (modify for your specific programmer setup)

<code>avrdude -c stk500v2 -b 9600 -P /dev/ttyUSB0 -u -p m8 -D -U eeprom:w:EEPROM_16mhz.hex:i</code>

Donations are accepted should you feel the desire (see donation button at bottom of page):
http://lunarflow.com/

