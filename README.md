# Weather Station PIC16 with Server Communication

**Course:** Data Aquisition Systems

**Academic Year:** 2019/20

**Semester:** 2nd

**Grade:** 20 out of 20

**Technologies Used:** C, PIC16

**Brief Description:** Acquisition, analysis, monitoring and registry solution
data for a weather station

**System Architecture:**

- Aquisition and Control System (PIC16)
  1. Temperature, humidity and wind velocity aquisition
  2. 1min periodic mensage transmission
  3. System state change (start and stop)
  4. Password verification
  5. Emergency state detection
  6. Save the emergency state history
- Monitoring and Registry Application (PC)
  1. Retrieve mensages from PIC16
  2. Register data in XML files
  3. Change emergency state configuration
  4. Ask the emergency state history
  5. Send data to the remote server
- Data Manager (Remote Server)

---

### PICSimLab Simulator

![PICSimLab](https://user-images.githubusercontent.com/46992334/192907042-49589ef9-de6c-4de3-8385-192dbb938891.png)
