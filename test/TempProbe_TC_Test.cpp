#include <TempProbe_TC.h>

#include "Arduino.h"
#include "ArduinoUnitTests.h"

unittest(TempProbe_Test) {
  // Instance
  TempProbe_TC* tempProbe = TempProbe_TC::instance();

  // Test getResistance()
  uint16_t testRTD = tempProbe->getResistance();
  assertEqual(32767, testRTD);

  // Test getTemperature()
  float testTemp = tempProbe->getTemperature();
  assertEqual(988, (int)testTemp);

  // Test readFault()
  uint8_t testFault = tempProbe->readFault();
  assertEqual(255, testFault);

  // Test clearFault()
  tempProbe->clearFault();
  testFault = tempProbe->readFault();
  assertEqual(255, testFault);
}

unittest_main()
