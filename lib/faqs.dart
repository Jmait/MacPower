import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mac_app/faqbrain.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}


class _QuestionsState extends State<Questions> {
  @override

  Widget build(BuildContext context) {
    return ListView(
      children: [
        Faq(),
        Faqtwo(
          textTitle: 'What Are Your Delivery Arrangement',
          textBody: 'We have a delivery company that delivers to our customers in most cities in Nigeria. Pre-paid orders are delivered free of charge to major cities in Nigeria. Payment on delivery (POD) orders attract delivery charges. All Lagos deliveries are free, whether pre-paid or payment on delivery. Call/text/whatsapp 08135503221 to schedule your delivery.',
        ),
        Faqtwo(
          textTitle: 'How Durable is in terms of life span',
          textBody: 'Honestly,we do not have the answer yet because the product is just 7 months old. All we can say is that it’s built to last. The battery lifespan is about 600 cycles, which is over 2 years. The battery is replaceable and we have it, as well as other parts, in stock. We have a service center in our Lagos office and the product comes with 6 months manufacturer’s warranty.',
        ),
        Faqtwo(
          textTitle: 'What is the charging capacity? Can my "I pass my neighbor"  Charge it? ',
          textBody: 'The charging input is 15V/2A. Yes, any generator including ‘I pass my neighbor’ generator can charge it. The solar panel is 40w/18V.',
        ),
        Faqtwo(
          textTitle: 'Do you have a youtube video explaining how the product works? A kind of demo video',
          textBody: 'Yes, we have a youtube video which demonstrates how the product works. It also shows how long the inverter will last'
              ' with most household appliances. Our youtube channel is available here: https://www.youtube.com/watch?v=20VkZpMXuwc',
        ),
        Faqtwo(
          textTitle: 'How many hours can it power a 65watts laptop',
          textBody: 'A 65w laptop is certainly not a modern or energy-efficient laptop, but even at that, it will power it for about 3 hours. If you are using a modern laptop of about 35watts, it can last up to 6 hours.',
        ),
        Faqtwo(
          textTitle: 'Does the product comes with solar power',
          textBody: 'The solar panel is optional and comes at an additional cost of N12,000. It’s a 40w, 18v solar panel',
        ),
        Faqtwo(
          textTitle: 'What appliances can the model M42 carry',
          textBody: 'It can carry led TV plus decoder, DC standing fan, laptop, clippers, lighting, etc provided the combined wattage of your appliances does not exceed 100w.'

        ),
        Faqtwo(
          textTitle: 'How long does the inverter last befor the battery goes down and will need to be recharged?',
          textBody: 'How long it lasts will depend on what you have plugged in. If you are using a 24inches LED TV plus decoder, it will last between 4 and 5 hours before needing to recharge the battery. With a 32inches LED TV plus decoder, it will last about 3 hours.',

        ),
        Faqtwo(
            textTitle: 'Is Plasma TV the same as LED TV',
            textBody: 'Plasma TV is different from LED TV, even though some people don&#8217;t know the difference. It can power 32 inches LED TV plus decoder for about 3 hours, but not plasma. Plasma is an old flat screen TV technology which production has been discontinued since about 10 years ago. If you bought any brand new flat screen TV in the past 7 years, it is most likely an LED. You can only find plasma in tokunbo today'

        ),
        Faqtwo(
            textTitle: 'But you have the Model M120 /400watts but you are not saying anything about it, I think that one will be more efficient and last for a higher duration',
            textBody: 'We are pushing the M42 more, because it is more affordable. Even at that, a lot of people are ordering for the M120. It is a strategic decision to advertise the M42 and then latch on that to sell the M120.'

        ),
        Faqtwo(
            textTitle: 'What is the mode of payment? Is it allowed to pay in installments?',
            textBody: 'For now, it is either pre-paid or payment on delivery (POD). It is also allowed to pay in installments, but we can only ship the product to the customer when he/she completes payment'

        ),
        Faqtwo(
            textTitle: 'Is your product available at ShopRite?',
            textBody: 'For now, our products are not available at ShopRite, but it is available on most popular online channels like Jumia, Konga, nairashop, etc as well as on our website',

        ),
        Faqtwo(
            textTitle: 'Is Plasma TV the same as LED TV',
            textBody: 'Plasma TV is different from LED TV, even though some people don&#8217;t know the difference. It can power 32 inches LED TV plus decoder for about 3 hours, but not plasma. Plasma is an old flat screen TV technology which production has been discontinued since about 10 years ago. If you bought any brand new flat screen TV in the past 7 years, it is most likely an LED. You can only find plasma in tokunbo today'

        ),
        Faqtwo(
            textTitle: 'How can One become a distributor',
            textBody: 'a. Become an Affiliate: All you need do is make a one-time payment of N50,000 to our account. We will send you a sample product of our model M42, provide you online product training and marketing support.You will earn N5,000 commission for every unit of M42 and N10,000 commission for every unit of M120 sold through your referral.b. Become a Distributor: Buy a minimum of 10 units of our model M42 at distributor price of N44,000. Full distributorship advantages will be given to you including training and marketing support.'

        ),
        Faqtwo(
          textTitle: 'I Buy MacPower with solar panel, does that mean I will be able to power my appliaces 24hours?',
          textBody: 'It will depend on the what appliances you plug in. If you are using only led lights plus phone charging and maybe other low wattage appliances, that may be possible. From the time the sun goes down in the evening to the time the sun sets in the morning is over 12 hours. The TV cannot run for 12 hours on this device without recharging.',

        ),
        Faqtwo(
            textTitle: 'How many hours does it last when used to power phone and laptop only',
            textBody: 'If you are using a modern laptop of about 35w, it will last about 5 hours. Phone charging is almost insignificant. It will fill any phone without dropping significantly.',

        ),
        Faqtwo(
          textTitle: 'What is the kva or va of MacPower M42?',
          textBody: 'It is not up to 1kva; it is a 100w inverter which is about 120va depending on the power factor.',

        ),
        Faqtwo(
          textTitle: 'Can the MacPower model M120 carry a freezer?',
          textBody: 'No, this product is not made for heavy-duty appliances like refridgerators/freezers, pumping machine, pressing iron, etc.',

        ),
        Faqtwo(
          textTitle: 'How many hours will it last on Standing fan only?',
          textBody: 'If you are using an energy-efficient standing fan of about 15w, it will last for about 11 hours. It cannot carry industrial standing fan like ox.',

        ),
        Faqtwo(
          textTitle: 'Does the product comes with warranty?',
          textBody: 'Yes, the product comes with six (6) months manufacturer’s warranty. Also, we have a service center in our Lagos office where we stock all components, including the replacement batteries.',
        ),
        Faqtwo(
          textTitle: 'How many energy saving  or led bulbs it can carry?',
          textBody: 'It depends on the wattage of the led bulbs. The device is a 100w inverter. This means if you are using 5w led bulbs, it can carry 20 pics of it. It will carry about 36pcs of the same bulb if it is DC, as the DC capacity is 180w',

        ),
        Faqtwo(
          textTitle: 'How many deskstop computer it can carry at once and how long will it last?',
          textBody: 'This product is not made for desktop computers. It is made for laptops. If you are using a modern laptop of about 35w, you will get about 5 hours. If you need to power bigger loads like desktop computers, you have to consider going for the model M120 which is a 400w inverter with 120,000mah inbuilt lithium polymer battery.',
        ),
        Faqtwo(
          textTitle: 'How do I replace the battery and is it available in market?',
          textBody: 'Yes, the battery is replaceable and we stock it.',

        ),
        Faqtwo(
          textTitle: 'How long does it take to charge?',
          textBody: 'It takes about 6 hours to charge from zero to 100% full. Avoid overcharging. During charging, the blue light will be blinking, when it stops blinking and remains steady, you know it is fully charged.',

        ),
        Faqtwo(
          textTitle: 'What is the difference between MacPower and UPS?',
          textBody: 'Basically, UPS is uninterruptible power supply, meaning it’s inline to ensure it takes over without disruption when there is power failure, and that is usually for a few minutes, to enable one change over to a generator. MacPower, on the other hand, is not in-line; you have to switch on after power failure, just like a generator, and it will run for a much longer time than a UPS. MacPower, unlike UPS is designed to run for much longer time than UPS.',
        ),



    ],

    );
  }
}


