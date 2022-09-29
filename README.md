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

---

### PICSimLab Demo

<details>
 <summary>Initial State</summary>

![InitialState](https://user-images.githubusercontent.com/46992334/193118577-d101125b-f260-44ed-8ec9-07874c74b3ab.png)
</details>

<details>
 <summary>Password Insertion</summary>

![PassInsertion](https://user-images.githubusercontent.com/46992334/193118623-44b8778c-f7e3-4077-9ee5-6d523dc0f2b6.png)
</details>

<details>
 <summary>Normal Situation</summary>

![PICSimLab](https://user-images.githubusercontent.com/46992334/192907042-49589ef9-de6c-4de3-8385-192dbb938891.png)
</details>

<details>
 <summary>Stop System</summary>

![StopSystem](https://user-images.githubusercontent.com/46992334/193118641-50eca19e-1d4e-444a-9f49-9bc91a79b12e.png)
</details>

<details>
 <summary>Turn Off Heat Resistance</summary>

![TurnOffHeatResistance](https://user-images.githubusercontent.com/46992334/193118657-258a18aa-a3cc-48b8-bd6c-49560973cb1d.png)
</details>





