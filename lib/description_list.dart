import 'package:mac_app/description_constructor.dart';
import 'package:flutter/material.dart';
//product M42 has links that needs to be launched
//description_constructor defines the format of what is in product details

class DescriptionList {



  List<ProductDetails> productDescription = [
    ProductDetails(
      name: 'Bulb-Pin',
      details: 'Our LED bulbs can save you over N1,000 (in NEPA bills alone) '
          'Long Life (5 to 10 years life span)No filament, so does not blow at high voltageDoes not '
          'generate heatVery bright light (like flourescent)'
          'Generator friendly (low fuel consumption)Non-breakable '
          '(made of hard plastic)Cost-saving (over N1,000 per month, '
          'if you have 10 in your flat)1year waranty (Returns allowed) '
          '*Very bright light *Saves energy cost*8 years life span',
      productImage: AssetImage('images/bulb-pin.jpg'),

    ),
    ProductDetails(
      name: 'Bulb-Screw',
      details: '5W LED Energy Saving Bulb - ScrewOur LED bulbs '
          'can save you over N1,000 (in NEPA bills alone)Long Life (5 to 10 years life span)'
          'No filament, so does not blow at high voltageDoes not generate heatVery bright light '
          '(like flourescent)Generator friendly (low fuel consumption)'
          'Non-breakable (made of hard plastic)Cost-saving (over N1,000 per month, '
          'if you have 10 in your flat)1 year waranty (Returns allowed) *Very bright light *Saves energy cost '
          '*8 years life span',
      productImage: AssetImage('images/bulb-screw.jpg'),
    ),
    ProductDetails(
      name: 'DC5521 Connector',
      details: 'DC to DC cable connector is used to connect direct current (DC)'
          ' appliances to inverters like MacPower inverter. It can be used to connect DC television, '
          'rechargeable standing fan, DSTV/Gotv decoder, DC blender and other household direct current '
          'appliances to'
          ' MacPower and other inverters or batteries with DC5521 output port.',
      productImage: AssetImage('images/connector2.jpg'),
    ),
    ProductDetails(
      name: 'Car Fridge',
      details: """Car Mini Portable Fridge Cooler Warmer 7.5L
  Can vertically store 0.5L bottled beverage or 0.33L canned beverage, can be cooled and heated.
  With magnetic box cover, shoulder strap is convenient for carrying, easy to use and operate.
  When using, turn the switch to the middle OFF position, insert one end of the cable into the refrigerator socket and the other end into the car's lighter.
  Cooling: Turn the switch to the COOL position, the green light is on, and the cooling function is started.
  Heating: Turn the switch to the HOT position, the red light is on, and the heating function is started.
  Can also be used to store cosmetics, fruit and other items, bringing much convenience for you.
  Do not suddenly turn on the heating function during cooling. When heating, do not suddenly turn on the cooling function (put the switch to OFF for 30 minutes before starting).

  Specification:
  Condition: 100% New
  Material: ABS
  Voltage: 12V
  Power: 30W
  Capacity: 7.5L
  Function: cooling / heating
  Noise: 28dBHeating maximum temperature: about 65?
  Insulation: high quality PU insulation, no fluorine
  Size: Approx. 312*175*300 mm / 12.3*6.9*11.8 in
  Weight: Approx. 2156g / 76.1 oz""",
      productImage: AssetImage('images/fridge1.jpg'),
    ),//updated
    ProductDetails(
      name: 'Light Bulb',
      details: """This is a USB powered 5W light bulb, complete with cable and USB connector. It is energy-saving (only 5w) and can be powered by any power bank or any device with a USB output like laptop. This works very nicely with other MacPower range of products (inverters and power banks). It shines very brightly, is very suitable for reading and also it is environmentally friendly. This light bulb is very portable (can be easily carried around) and has low luminous decay. 
Features 
Energy saving (5W)
Shines very brightly
Portable
Can be powered with any power bank
Suitable for reading
Low luminous decay""",
      productImage: AssetImage('images/lightbulb.jpeg'),
    ),
    ProductDetails(
      name: 'M2 Powerbank',
      details: """Portable Keyholder Powerbank (Real 2600mah)
 This portable powerbank is small keyholder size, meant to top up your phone when you are running out of battery power on the go. It is built with intelligent chips to ensure over-charge, over-current, over-voltage and short-circuit protections. It is made of high effficiency, high quality 18650 lithium-ion battery. Special ABS material with leather effect. The key ring contains a USB to charge your phone, so you do not need to carry a USB cable.
 
  Small pocket size
  Has a keyring
  Comes with a mini USB cable
  ABS material
  Leather effect
  Fast charging
  Reliable brandname MacPower""",
      productImage: AssetImage('images/M2.jpeg'),
    ),
    ProductDetails(
      name: 'M5 Powerbank',
      details: """Portable BatteryBank PowerBank (Real 10,000mah)
  This portable powerbank is small in size but mighty in capacity. This powerbank can fill up an average android phone three (3) times when you are running out of battery power on the go. It is built with intelligent chips to ensure over-charge, over-current, over-voltage and short-circuit protections. It is made of high effficiency, high quality lithium-polymer batteries. Special ABS material with leather effect. The package contains a USB cable to charge your phone, so you do not need to carry an extra USB cable.

  Small pocket size
  Comes with a USB cable
  ABS material
  Leather effect
  Fast charging
  Reliable brandname MacPower""",
      productImage: AssetImage('images/M5-3.jpeg'),
    ),
    ProductDetails(
      name: 'M10 Powerbank',
      details: """MacPower M10 Portable Powerbank and Car Jump-Starter

  This is a HUGE (10,000mah real) PowerBank plus car jump-starter.
  It can charge your phones and power other USB devices like DC bulbs and fluorescent tubes, bluetooth earpiece, android/smart wristwatch, etc.
  It can also jump-start your car when your car battery is weak.
  It is a very useful tool for drivers and car owners, as well as mechanics and auto-electricians.
  It comes with jumper cables/battery terminals for easy connection.
  It has a 4-bar LED battery level indicator to tell you the battery level.
  It also has a very bright 3-stage LED torchlight that also serves as an emergency light (light, strobe and SOS).

  Features:
  Charges phones and other USB devices
  Huge Battery capacity (10,000mah real)
  Can jump-start your car
  Comes with jumper cables
  6 months warranty
  AC wall Charger included""",
      productImage: AssetImage('images/M10Green.jpg'),
    ),
    ProductDetails(
      name: 'M42',
      details: """MacPower Model M42

  Do you need constant electricity to power your laptop, TV, fan or other household appliances?
  MacPower Model M42 has come to your rescue.
  MacPower M42 is a 100w inverter with 42,000mah inbuilt lithium-ion battery, all packaged together.
  MacPower M42 provides you several hours of electricity in the event of power failure.
  MacPower M42 saves you at least N300 daily on the cost of fueling your generator, thereby paying for itself in less than 6 months. It is portable, noiseless, has huge battery capacity, can be recharged with solar panel, NEPA/generator or car cigarette lighter port.

  One-off payment
  No hidden costs
  No monthly payments
  No fuel or other consumables

  KEY FEATURES
  Charges your phones indefinitely
  Powers your laptop for long
  Gives you steady light for days
  Powers your TV for hours
  Sustains your Public Address System
  Powers your fan for hours

  WHAT'S IN THE BOX
  1 no. Inverter (Model M42)
  1 no. AC Charger/Adapter
  1 no. Car Charger (12V DC)
  1 no. Car Kit Adapter (12V DC)
  1 no. Product Manual


  Youtube Links:
  Demo Video:

  https://www.youtube.com/watch?v=20VkZpMXuwc	
  Marketing Video: https://youtu.be/n9yfObLcf8A""",
      productImage: AssetImage('images/M42Front.jpg'),
    ),
    ProductDetails(
      name: 'M60',
      details: """MacPower Model M60
  Do you need constant electricity to power your laptop, TV, fan or other household appliances?
  MacPower Model M60 has come to your rescue. MacPower M60 is a 200w inverter with 60,000mah inbuilt lithium polymer battery, all packaged together.
  MacPower M60 provides you several hours of electricity in the event of power failure.
  MacPower M60 saves you at least N400 daily on the cost of fueling your generator, thereby paying for itself in about 6 months.
  It is portable, noiseless, has huge battery capacity, can be recharged with solar panel, NEPA/generator or car cigarette lighter port.

  One-off payment
  No hidden costs
  No monthly payments
  No fuel or other consumables

  KEY FEATURES
  Charges your phones indefinitely
  Powers your laptop for long
  Gives you steady light for days
  Powers your TV for hours
  Sustains your Public Address System
  Powers your fan for hours

  WHAT'S IN THE BOX
  1 no. Inverter (Model M60)
  1 no. AC Charger/Adapter
  1 no. Car Charger (12V DC)
  1 no. Car Kit Adapter (12V DC)
  1 no. Product Manual""",
      productImage: AssetImage('images/M60-1.jpeg'),
    ),
    ProductDetails(
      name: 'M-120',
      details: """MacPower Model M120

  Do you need constant electricity to power your laptop, TV, fan or other household appliances?
  MacPower Model M120 has come to your rescue.
  MacPower M120 is a 400w inverter with 120,000mah inbuilt lithium polymer battery, all packaged together.
  MacPower M120 provides you several hours of electricity in the event of power failure.
  MacPower M120 saves you at least N500 daily on the cost of fueling your generator, thereby paying for itself in less than 9 months.
  It is portable, noiseless, has huge battery capacity, can be recharged with solar panel, NEPA/generator or car cigarette lighter port.

  One-off payment
  No hidden costs
  No monthly payments
  No fuel or other consumables

  KEY FEATURES
  Charges your phones indefinitely
  Powers your laptop for long
  Gives you steady light for days
  Powers your TV for hours
  Sustains your Public Address System
  Powers your fan for hours

  WHAT'S IN THE BOX
  1 no. Inverter (Model M120)
  1 no. AC Charger/Adapter
  1 no. Car Charger (12V DC)
  1 no. Product Manual


  Youtube Links:
  Demo Video:

  https://www.youtube.com/watch?v=20VkZpMXuwc	
  Marketing Video: https://youtu.be/n9yfObLcf8A


  """,
      productImage: AssetImage('images/M120Front.jpg'),
    ),
    ProductDetails(
      name: '18650 Battery',
      details: """High Capacity 18650 Rechargeable Li-ion Battery 3.7V, 2600mah

      This is a high capacity 18650 lithium-ion battery, 3.7v, 2600mah.
    It has no memory effect and can be recharged up to 1,000 times when fully or partially drained.
    It is light weight, small size, high performance with low internal resistance.
    Suitable for portable electronic devices like laptops, flashlights, rechargeable fans, inverters and other solar/Dc appliances.
    The battery's low self discharge function makes it still maintain 75% of capacity after like 3 years of non-use.

      Features
      High capacity 3.7v, 2600mah
      No memory effect
      Can be recharged up to 1,000 times
      Light weight, small size, high performance
      Suitable for solar/DC appliances
      Low self discharge""" ,
      productImage: AssetImage('images/mah1.jpg'),
    ),
    ProductDetails(
      name: 'MC4 Connector',
      details:"""MC4 M42 Connector

    MC4 connectors are single-contact electrical connectors commonly used for connecting solar panels. The MC in MC4 stands for the manufacturer Multi-Contact and the 4 for the 4 mm diameter contact pin.

    MC4 connector for M42 is used to connect a solar panel to a DC input to MacPower model M42 inverter.  This plugs nicely into the socket that comes with standard solar panels and connects at the other end to the DC5521 input to the MacPower inverter. You may cut the connector at the middle and join wire of similar thickness to extend the lenght of the cable.

    KEY FEATURES
      Connects to solar panel
      Plugs into MacPower model M42
      Prevents current/voltage leakages
    Environmentally friendly
    Avoids sparks of currents
      Ensures full supply of voltage/amperage""" ,
      productImage: AssetImage('images/MC4 Connector4.jpg'),
    ),
    ProductDetails(
      name: 'MC4-120',
      details: """MC4 M120 Connector

    MC4 connectors are single-contact electrical connectors commonly used for connecting solar panels. The MC in MC4 stands for the manufacturer Multi-Contact and the 4 for the 4 mm diameter contact pin.

    MC4 connector for M120 is used to connect a solar panel to a DC input to MacPower model M120 inverter.  This plugs nicely into the socket that comes with standard solar panels and connects at the other end to the DC5521 input to the MacPower inverter. You may cut the connector at the middle and join wire of similar thickness to extend the lenght of the cable.

    KEY FEATURES
      Connects to solar panel
      Plugs into MacPower model M120
      Prevents current/voltage leakages
    Environmentally friendly
    Avoids sparks of currents
      Ensures full supply of voltage/amperage""" ,
      productImage: AssetImage('images/MC4120b.jpg'),
    ),
    ProductDetails(
      name: 'Mini Fan',
      details: """MacPower portable rechargeable hand-held mini fan provides strong air for your comfort. It can be used at home, in the vehicle, office, makeup studios, social functions, etc. It can be charged with a USB adapter or any USB outlet like a Computer USB port or power bank USB port. It has three (3) speed levels (low, medium, high) and  is made of high quality plastic material. The mini fan can be hand-held or placed on a stool/table. It comes with a high quality rechargeable, removable and replaceable battery, that lasts between 3 to 6 hours depending on the selected speed.

  Features

  Provides strong air for comfort
  High quality fan motor
  High quality lithium-ion battery
  Rechargeable, removeable, replaceable battery
  Very fashionable
  Perfect for social functions
  Long battery life (1000 cycles)
  Reliable brand name (MacPower)""",
      productImage: AssetImage('images/MiniFan2.jpg'),
    ),
    ProductDetails(
      name: 'Mini Light Bar',
      details: """5W USB LED Fluorescent Mini Light Bar

  This is a USB powered fluorescent light. It is energy-saving (only 5w) and can be powered by any power bank or any device with a USB output like laptop. This works very nicely with other MacPower range of products (inverters and power banks). It shines very brightly, is very suitable for reading and also it is environmentally friendly. This light bar is very portable (can be easily carried around) and has low luminous decay. It comes with accessories that makes it easy to hang on the wall and it is safe to use anywhere.

  Features
  Energy saving (5W)
  Shines very brightly
  Portable
  Can be powered with any power bank
  Suitable for reading
  Low luminous decay

  In The Box
  Mini fluorescent tube complete with cable, switch and USB connector
  Wall mounting accessories""",
      productImage: AssetImage('images/MLB-Final1.jpg'),
    ),
    ProductDetails(
      name: 'Panorama CCTV',
      details: """360 Panorama WiFi CCTV Camera Bulb

  This Wi-Fi IP camera bulb is mainly designed for personal surveillance. The chipset and sensor are specifically optimized for mobile phone use. It can be used in a variety of applications, such as a baby monitor, elderly care, small store management and room surveillance. The camera system is simple and practical. Simply set up the camera network, then you can use your phone to do remote view when you are outside, at the office, other cities, or other countries. If you are looking for a Wi-Fi IP camera for easy remote viewing, this is the perfect product for you. 360° panoramic view provides full viewing of the room without rotating the camera or blind spots.  features
  High resolution, image clear and exquisite
  Use the advanced H.264 High Profile compression technology,which can be the lowest code rate and HD image quality
  Low illumination,0.1Lux@(F1.2 , AGC ON),0 Lux with IR On
  Support dual-stream,support Micro SD storage(optional)
  Support Mobile view(iPhone,Android,Windows Mobile, BlackBerry, Symbian)
  Support the view by browser(IE,Chrome,Firefox,Safari)
  Support auto IR-CUT filter removal function/ICR,can be monitoring day and night
  Support butt join with HVR/NVR,support ONVIF
  Support Cloud,P2P,WIFI""",
      productImage: AssetImage('images/Panorama4.jpg'),
    ),
    ProductDetails(
      name: 'Pen Camera',
      details: """Spy Camera Pen with SD Card Slot Real HD Hidden Camera Pen - 8GB

  This pen writes normally like every other pen but has a hidden (spy) camera inbuilt to record high definition (HD) video without attracting suspicion. It can actually record video or audio as well as take photo shots depending on the mode it is set to. It features a high capacity lithium polymer battery that can last well over 2 hours when recording video and 8 hours when recording audio. It also has a HD2643 lens with 8M mega pixels as well as a removable TF card of 8GB and can take up to 32GB memory.
  It is a must have for security conscious individuals.

  Features:
  1. Records both Video and audio as well as photo shots
  2. High capacity lithium polymer battery that lasts for hours
  3. High Definition HD2643 lens, 8MP
  4. No visible light to attract attention
  5. Comes with 8GB removeable TF Card expandable to 32GB
  6. Compartible with Windows98/me/2000/xp/2003/vista/7/10;MacOS10.""",
      productImage: AssetImage('images/PenCamera2.jpg'),
    ),
    ProductDetails(
      name: 'Fruit Blender',
      details: """Portable Fruit Juice Blender With Powerbank

    This is a portable fruit blender, can be used to make fruit juice out of regular fruits. It has a rechargeable that also doubles as a power bank that can be used to recharge mobile phones and other USB powered devices. It can mix different types of fruit and vegetables. It has safety switch and charge/discharge protection, healthy and environmental friendly

    Features

    Portable and can be used as common cup
    Can mix different types of fruits and vegetables
    Can be used as power bank to charge phones
    Healthy and environmentally friendly
    Safety protection
    High speed: can make a cup of juice within a minute""",
      productImage: AssetImage('images/Portable Fruit Blender.jpg'),
    ),
    ProductDetails(
      name: 'Pen Recorder',
      details: """Spy Pen Voice Recorder With Inbuilt Memory - 8GB

  This pen writes normally like every other pen but has a hidden (spy) high quality in-built microphone that records high quality audio without attracting suspicion. It features a top grade lithium polymer battery that can last well over 8 hours when recording audio. This pen can actually be used as a regular USB flash drive to store documents. It comes with an in-built 8GB high quality internal memory that can store several days of audio recording as well as other documents.
  Perfect for recording interviews, meetings and lectures.

  Features:
  1. Records high quality audio
  2. Top grade lithium polymer battery that lasts for hours
  3. No visible light to attract attention
  4. Comes with 8GB in-built memory
  5. Can also be used as flash drive
  6. Compartible with Windows98/me/2000/xp/2003/vista/7/10;MacOS10.""",
      productImage: AssetImage('images/PR1.jpg'),
    ),
    ProductDetails(
      name: 'Rechargeable Bulb',
      details: """9w LED Rechargeable Bulb (E27)

  This is an energy-saving LED 9w intelligent rechargeable bulb with inbuilt battery. It functions like a normal LED bulb when NEPA is available. However, when there is power failure, the inbuilt battery immediately takes over and powers the bulb for 3 to 4 hours before the battery runs out.

  - High brightness (9w)
  - Less heat
  - Low power consumption""",
      productImage: AssetImage('images/rech1.jpg'),
    ),
    ProductDetails(
      name: 'Smartwatch',
      details: """Smart Sports Watch Pedometer Fitness Tracker

  This smart watch does not only keep time, it also keeps you healthy. It measures basic fitness and health parameters like the number of steps you take in a day, the distance covered in kilometers, how many calories burned, your heart beat rate in beats per minute (bpm). It also measures how long you sleep per day, the quality of sleep as well as your blood pressure. Yes, you heard me right, it measures blood pressure in mmHg. It has inbuilt battery that lasts about 5 days with battery level indicator. It can connect to your android or iphone and works with Yoho Sports app.

  Features
  Measures steps per day, also distance in km
  Measures your heart beat per minute
  Measures how long you sleep and quality of sleep
  Measures calories burned
  Measures blood pressure in mmHg
  5 days battery life plus battery level indicator
  Pairs with your android/iphone
  Works with Yoho sports app""",
      productImage: AssetImage('images/SmartWatch1.jpg'),
    ),
    ProductDetails(
      name: 'Solar Fan',
      details: """Foresolar 16" Rechargeable Standing Fan

  This is a very energy-efficient  (only 15w) rechargeable and replaceable battery standing fan with 3-speed efficient and durable motor. It features a USB output port for charging mobile phones. It provides the room with cool fresh air. Also has a 15-point LED light that can light up the room. Very suitable for people using solar or inverter systems. This fan oscillates left and right without noise, and the battery can last you a whole night in the event of power failure.
  USB function
  Power Source: 200-240V 50/60Hz V
  Solar/AC/DC Operated
  Battery: 2x6v  4.5 Sealed Lead Acid Rechargeable Batteries
  Light: 15 Pcs LED Light
  Charge: 7 Hours
  It is advised that you charge this unit for about eight (8) hours or more the first time. Subsequently, do not overcharge. Once the charging light turns to green, you know its fully charged and remove the charger.
  This fan can also be used with any battery or via the DC output of powerbanks or inverters like MacPower with a DC output port. Just connect to the fan via a DC to DC cable, and you're good to go.

  KEY FEATURES
  Long-lasting Rechargeable & Replaceable Battery
  Solar/AC/DC Powered
  USB Output port for charging phones
  Energy-saving/Good for Inverters (only 15w)
  3-speed Fan with Charging Indicator
  AC Charger included""",
      productImage: AssetImage('images/solarfan.jpg'),
    ),
    ProductDetails(
      name: 'USB VR',
      details: """USB Spy Voice Recorder - 8GB

    This is a normal USB flash drive, but has a high quality in-built microphone that records high quality audio. It features a top grade lithium polymer battery that takes only 2 - 3 hours to charge but can last well over 12 hours when recording audio. This device can actually be used as a regular USB flash drive to store documents. It comes with an in-built 8GB high quality internal memory that can store several days of audio recording as well as other documents.
      Perfect for recording interviews, meetings and lectures.

    Features:
    1. Records high quality audio
      2. Top grade lithium polymer battery that lasts for hours
    3. Comes with 8GB in-built memory
    4. Can also be used as flash drive
      5. Charges for only 3 hours but records for over 12 hours
    6. Compartible with Windows98/me/2000/xp/2003/vista/7/10;MacOS10.""",
      productImage: AssetImage('images/USB VR1.jpg'),
    ),

  ];
}
