bool OpenOrder(){

switch(caseOrder)
{
   case 0:
   {// Ордер на покупку
  /* MqlTradeRequest requestBay0={};                                    // создаем массив 
   MqlTradeResult resultBay0={0};                                     // создаем и обнуляем массив 2
   requestBay0.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay0.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay0.volume = lot;                                          // указываем объем ордера
   requestBay0.deviation = 2;                                         // указываем проскальзывание
   requestBay0.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay0.price = NormalizeDouble(ask+OpenPrice0*Point(),3);          // указываем цену открытия
   requestBay0.sl = NormalizeDouble(bid-StopLoss0*Point(),3);             // указываем стоп лосс
   requestBay0.comment = "0";
   if(!OrderSend(requestBay0,resultBay0))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay0.order);} break;}           // выводится сообщение с тикетом ордера
   */
// Ордер на продажу 1
   MqlTradeRequest requestSell0={};                                    // создаем массив 
   MqlTradeResult resultSell0={0};                                     // создаем и обнуляем массив 2
   requestSell0.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell0.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell0.volume = lot;                                          // указываем объем ордера
   requestSell0.deviation = 2;                                         // указываем проскальзывание
   requestSell0.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell0.price = NormalizeDouble(bid-OpenPrice1*Point(),3);          // указываем цену открытия
   requestSell0.sl = NormalizeDouble(ask+StopLoss1*Point(),3);             // указываем стоп лосс
   requestSell0.comment = "1";
   if(!OrderSend(requestSell0,resultSell0))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell0.order);}break;}             // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
 /*  case 1:
   {// Ордер на покупку
   MqlTradeRequest requestBay1={};                                    // создаем массив 
   MqlTradeResult resultBay1={0};                                     // создаем и обнуляем массив 2
   requestBay1.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay1.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay1.volume = lot;                                          // указываем объем ордера
   requestBay1.deviation = 2;                                         // указываем проскальзывание
   requestBay1.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay1.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay1.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay1.comment = "2";
   if(!OrderSend(requestBay1,resultBay1))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay1.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell1={};                                    // создаем массив 
   MqlTradeResult resultSell1={0};                                     // создаем и обнуляем массив 2
   requestSell1.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell1.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell1.volume = lot;                                          // указываем объем ордера
   requestSell1.deviation = 2;                                         // указываем проскальзывание
   requestSell1.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell1.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell1.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell1.comment = "3";
   if(!OrderSend(requestSell1,resultSell1))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell1.order);}break;}             // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 2:
   {// Ордер на покупку
   MqlTradeRequest requestBay2={};                                    // создаем массив 
   MqlTradeResult resultBay2={0};                                     // создаем и обнуляем массив 2
   requestBay2.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay2.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay2.volume = lot;                                          // указываем объем ордера
   requestBay2.deviation = 2;                                         // указываем проскальзывание
   requestBay2.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay2.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay2.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay2.comment = "4";
   if(!OrderSend(requestBay2,resultBay2))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay2.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell2={};                                    // создаем массив 
   MqlTradeResult resultSell2={0};                                     // создаем и обнуляем массив 2
   requestSell2.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell2.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell2.volume = lot;                                          // указываем объем ордера
   requestSell2.deviation = 2;                                         // указываем проскальзывание
   requestSell2.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell2.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell2.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell2.comment = "5";
   if(!OrderSend(requestSell2,resultSell2))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell2.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 3:
   {// Ордер на покупку
   MqlTradeRequest requestBay3={};                                    // создаем массив 
   MqlTradeResult resultBay3={0};                                     // создаем и обнуляем массив 2
   requestBay3.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay3.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay3.volume = lot;                                          // указываем объем ордера
   requestBay3.deviation = 2;                                         // указываем проскальзывание
   requestBay3.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay3.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay3.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay3.comment = "6";
   if(!OrderSend(requestBay3,resultBay3))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay3.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell3={};                                    // создаем массив 
   MqlTradeResult resultSell3={0};                                     // создаем и обнуляем массив 2
   requestSell3.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell3.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell3.volume = lot;                                          // указываем объем ордера
   requestSell3.deviation = 2;                                         // указываем проскальзывание
   requestSell3.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell3.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell3.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell3.comment = "7";
   if(!OrderSend(requestSell3,resultSell3))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell3.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 4:
   {// Ордер на покупку
   MqlTradeRequest requestBay4={};                                    // создаем массив 
   MqlTradeResult resultBay4={0};                                     // создаем и обнуляем массив 2
   requestBay4.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay4.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay4.volume = lot;                                          // указываем объем ордера
   requestBay4.deviation = 2;                                         // указываем проскальзывание
   requestBay4.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay4.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay4.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay4.comment = "8";
   if(!OrderSend(requestBay4,resultBay4))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay4.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell4={};                                    // создаем массив 
   MqlTradeResult resultSell4={0};                                     // создаем и обнуляем массив 2
   requestSell4.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell4.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell4.volume = lot;                                          // указываем объем ордера
   requestSell4.deviation = 2;                                         // указываем проскальзывание
   requestSell4.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell4.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell4.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell4.comment = "9";
   if(!OrderSend(requestSell4,resultSell4))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell4.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 5:
   {// Ордер на покупку
   MqlTradeRequest requestBay5={};                                    // создаем массив 
   MqlTradeResult resultBay5={0};                                     // создаем и обнуляем массив 2
   requestBay5.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay5.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay5.volume = lot;                                          // указываем объем ордера
   requestBay5.deviation = 2;                                         // указываем проскальзывание
   requestBay5.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay5.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay5.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay5.comment = "10";
   if(!OrderSend(requestBay5,resultBay5))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay5.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell5={};                                    // создаем массив 
   MqlTradeResult resultSell5={0};                                     // создаем и обнуляем массив 2
   requestSell5.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell5.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell5.volume = lot;                                          // указываем объем ордера
   requestSell5.deviation = 2;                                         // указываем проскальзывание
   requestSell5.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell5.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell5.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell5.comment = "11";
   if(!OrderSend(requestSell5,resultSell5))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell5.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 6:
   {// Ордер на покупку
   MqlTradeRequest requestBay6={};                                    // создаем массив 
   MqlTradeResult resultBay6={0};                                     // создаем и обнуляем массив 2
   requestBay6.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay6.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay6.volume = lot;                                          // указываем объем ордера
   requestBay6.deviation = 2;                                         // указываем проскальзывание
   requestBay6.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay6.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay6.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay6.comment = "12";
   if(!OrderSend(requestBay6,resultBay6))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay6.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell6={};                                    // создаем массив 
   MqlTradeResult resultSell6={0};                                     // создаем и обнуляем массив 2
   requestSell6.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell6.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell6.volume = lot;                                          // указываем объем ордера
   requestSell6.deviation = 2;                                         // указываем проскальзывание
   requestSell6.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell6.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell6.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell6.comment = "13";
   if(!OrderSend(requestSell6,resultSell6))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell6.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 7:
   {// Ордер на покупку
   MqlTradeRequest requestBay7={};                                    // создаем массив 
   MqlTradeResult resultBay7={0};                                     // создаем и обнуляем массив 2
   requestBay7.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay7.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay7.volume = lot;                                          // указываем объем ордера
   requestBay7.deviation = 2;                                         // указываем проскальзывание
   requestBay7.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay7.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay7.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay7.comment = "14";
   if(!OrderSend(requestBay7,resultBay7))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay7.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell7={};                                    // создаем массив 
   MqlTradeResult resultSell7={0};                                     // создаем и обнуляем массив 2
   requestSell7.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell7.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell7.volume = lot;                                          // указываем объем ордера
   requestSell7.deviation = 2;                                         // указываем проскальзывание
   requestSell7.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell7.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell7.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell7.comment = "15";
   if(!OrderSend(requestSell7,resultSell7))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell7.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 8:
   {// Ордер на покупку
   MqlTradeRequest requestBay8={};                                    // создаем массив 
   MqlTradeResult resultBay8={0};                                     // создаем и обнуляем массив 2
   requestBay8.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay8.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay8.volume = lot;                                          // указываем объем ордера
   requestBay8.deviation = 2;                                         // указываем проскальзывание
   requestBay8.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay8.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay8.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay8.comment = "16";
   if(!OrderSend(requestBay8,resultBay8))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay8.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell8={};                                    // создаем массив 
   MqlTradeResult resultSell8={0};                                     // создаем и обнуляем массив 2
   requestSell8.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell8.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell8.volume = lot;                                          // указываем объем ордера
   requestSell8.deviation = 2;                                         // указываем проскальзывание
   requestSell8.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell8.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell8.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell8.comment = "17";
   if(!OrderSend(requestSell8,resultSell8))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell8.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 9:
   {// Ордер на покупку
   MqlTradeRequest requestBay9={};                                    // создаем массив 
   MqlTradeResult resultBay9={0};                                     // создаем и обнуляем массив 2
   requestBay9.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay9.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay9.volume = lot;                                          // указываем объем ордера
   requestBay9.deviation = 2;                                         // указываем проскальзывание
   requestBay9.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay9.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay9.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay9.comment = "18";
   if(!OrderSend(requestBay9,resultBay9))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay9.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell9={};                                    // создаем массив 
   MqlTradeResult resultSell9={0};                                     // создаем и обнуляем массив 2
   requestSell9.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell9.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell9.volume = lot;                                          // указываем объем ордера
   requestSell9.deviation = 2;                                         // указываем проскальзывание
   requestSell9.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell9.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell9.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell9.comment = "19";
   if(!OrderSend(requestSell9,resultSell9))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell9.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 10:
   {// Ордер на покупку
   MqlTradeRequest requestBay10={};                                    // создаем массив 
   MqlTradeResult resultBay10={0};                                     // создаем и обнуляем массив 2
   requestBay10.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay10.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay10.volume = lot;                                          // указываем объем ордера
   requestBay10.deviation = 2;                                         // указываем проскальзывание
   requestBay10.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay10.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay10.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay10.comment = "20";
   if(!OrderSend(requestBay10,resultBay10))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay10.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell10={};                                    // создаем массив 
   MqlTradeResult resultSell10={0};                                     // создаем и обнуляем массив 2
   requestSell10.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell10.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell10.volume = lot;                                          // указываем объем ордера
   requestSell10.deviation = 2;                                         // указываем проскальзывание
   requestSell10.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell10.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell10.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell10.comment = "21";
   if(!OrderSend(requestSell10,resultSell10))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell10.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 11:
   {// Ордер на покупку
   MqlTradeRequest requestBay11={};                                    // создаем массив 
   MqlTradeResult resultBay11={0};                                     // создаем и обнуляем массив 2
   requestBay11.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay11.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay11.volume = lot;                                          // указываем объем ордера
   requestBay11.deviation = 2;                                         // указываем проскальзывание
   requestBay11.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay11.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay11.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay11.comment = "22";
   if(!OrderSend(requestBay11,resultBay11))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay11.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell11={};                                    // создаем массив 
   MqlTradeResult resultSell11={0};                                     // создаем и обнуляем массив 2
   requestSell11.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell11.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell11.volume = lot;                                          // указываем объем ордера
   requestSell11.deviation = 2;                                         // указываем проскальзывание
   requestSell11.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell11.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell11.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell11.comment = "23";
   if(!OrderSend(requestSell11,resultSell11))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell11.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 12:
   {// Ордер на покупку
   MqlTradeRequest requestBay12={};                                    // создаем массив 
   MqlTradeResult resultBay12={0};                                     // создаем и обнуляем массив 2
   requestBay12.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay12.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay12.volume = lot;                                          // указываем объем ордера
   requestBay12.deviation = 2;                                         // указываем проскальзывание
   requestBay12.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay12.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay12.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay12.comment = "24";
   if(!OrderSend(requestBay12,resultBay12))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay12.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell12={};                                    // создаем массив 
   MqlTradeResult resultSell12={0};                                     // создаем и обнуляем массив 2
   requestSell12.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell12.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell12.volume = lot;                                          // указываем объем ордера
   requestSell12.deviation = 2;                                         // указываем проскальзывание
   requestSell12.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell12.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell12.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell12.comment = "25";
   if(!OrderSend(requestSell12,resultSell12))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell12.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 13:
   {// Ордер на покупку
   MqlTradeRequest requestBay13={};                                    // создаем массив 
   MqlTradeResult resultBay13={0};                                     // создаем и обнуляем массив 2
   requestBay13.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay13.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay13.volume = lot;                                          // указываем объем ордера
   requestBay13.deviation = 2;                                         // указываем проскальзывание
   requestBay13.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay13.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay13.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay13.comment = "26";
   if(!OrderSend(requestBay13,resultBay13))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay13.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell13={};                                    // создаем массив 
   MqlTradeResult resultSell13={0};                                     // создаем и обнуляем массив 2
   requestSell13.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell13.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell13.volume = lot;                                          // указываем объем ордера
   requestSell13.deviation = 2;                                         // указываем проскальзывание
   requestSell13.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell13.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell13.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell13.comment = "27";
   if(!OrderSend(requestSell13,resultSell13))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell13.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 14:
   {// Ордер на покупку
   MqlTradeRequest requestBay14={};                                    // создаем массив 
   MqlTradeResult resultBay14={0};                                     // создаем и обнуляем массив 2
   requestBay14.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay14.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay14.volume = lot;                                          // указываем объем ордера
   requestBay14.deviation = 2;                                         // указываем проскальзывание
   requestBay14.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay14.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay14.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay14.comment = "28";
   if(!OrderSend(requestBay14,resultBay14))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay14.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell14={};                                    // создаем массив 
   MqlTradeResult resultSell14={0};                                     // создаем и обнуляем массив 2
   requestSell14.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell14.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell14.volume = lot;                                          // указываем объем ордера
   requestSell14.deviation = 2;                                         // указываем проскальзывание
   requestSell14.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell14.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell14.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell14.comment = "29";
   if(!OrderSend(requestSell14,resultSell14))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell14.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 15:
   {// Ордер на покупку
   MqlTradeRequest requestBay15={};                                    // создаем массив 
   MqlTradeResult resultBay15={0};                                     // создаем и обнуляем массив 2
   requestBay15.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay15.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay15.volume = lot;                                          // указываем объем ордера
   requestBay15.deviation = 2;                                         // указываем проскальзывание
   requestBay15.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay15.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay15.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay15.comment = "30";
   if(!OrderSend(requestBay15,resultBay15))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay15.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell15={};                                    // создаем массив 
   MqlTradeResult resultSell15={0};                                     // создаем и обнуляем массив 2
   requestSell15.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell15.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell15.volume = lot;                                          // указываем объем ордера
   requestSell15.deviation = 2;                                         // указываем проскальзывание
   requestSell15.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell15.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell15.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell15.comment = "31";
   if(!OrderSend(requestSell15,resultSell15))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell15.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 16:
   {// Ордер на покупку
   MqlTradeRequest requestBay16={};                                    // создаем массив 
   MqlTradeResult resultBay16={0};                                     // создаем и обнуляем массив 2
   requestBay16.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay16.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay16.volume = lot;                                          // указываем объем ордера
   requestBay16.deviation = 2;                                         // указываем проскальзывание
   requestBay16.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay16.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay16.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay16.comment = "32";
   if(!OrderSend(requestBay16,resultBay16))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay16.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell16={};                                    // создаем массив 
   MqlTradeResult resultSell16={0};                                     // создаем и обнуляем массив 2
   requestSell16.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell16.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell16.volume = lot;                                          // указываем объем ордера
   requestSell16.deviation = 2;                                         // указываем проскальзывание
   requestSell16.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell16.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell16.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell16.comment = "33";
   if(!OrderSend(requestSell16,resultSell16))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell16.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 17:
   {// Ордер на покупку
   MqlTradeRequest requestBay17={};                                    // создаем массив 
   MqlTradeResult resultBay17={0};                                     // создаем и обнуляем массив 2
   requestBay17.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay17.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay17.volume = lot;                                          // указываем объем ордера
   requestBay17.deviation = 2;                                         // указываем проскальзывание
   requestBay17.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay17.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay17.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay17.comment = "34";
   if(!OrderSend(requestBay17,resultBay17))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay17.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell17={};                                    // создаем массив 
   MqlTradeResult resultSell17={0};                                     // создаем и обнуляем массив 2
   requestSell17.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell17.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell17.volume = lot;                                          // указываем объем ордера
   requestSell17.deviation = 2;                                         // указываем проскальзывание
   requestSell17.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell17.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell17.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell17.comment = "35";
   if(!OrderSend(requestSell17,resultSell17))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell17.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 18:
   {// Ордер на покупку
   MqlTradeRequest requestBay18={};                                    // создаем массив 
   MqlTradeResult resultBay18={0};                                     // создаем и обнуляем массив 2
   requestBay18.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay18.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay18.volume = lot;                                          // указываем объем ордера
   requestBay18.deviation = 2;                                         // указываем проскальзывание
   requestBay18.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay18.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay18.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay18.comment = "36";
   if(!OrderSend(requestBay18,resultBay18))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay18.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell18={};                                    // создаем массив 
   MqlTradeResult resultSell18={0};                                     // создаем и обнуляем массив 2
   requestSell18.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell18.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell18.volume = lot;                                          // указываем объем ордера
   requestSell18.deviation = 2;                                         // указываем проскальзывание
   requestSell18.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell18.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell18.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell18.comment = "37";
   if(!OrderSend(requestSell18,resultSell18))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell18.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 19:
   {// Ордер на покупку
   MqlTradeRequest requestBay19={};                                    // создаем массив 
   MqlTradeResult resultBay19={0};                                     // создаем и обнуляем массив 2
   requestBay19.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay19.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay19.volume = lot;                                          // указываем объем ордера
   requestBay19.deviation = 2;                                         // указываем проскальзывание
   requestBay19.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay19.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay19.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay19.comment = "38";
   if(!OrderSend(requestBay19,resultBay19))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay19.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell19={};                                    // создаем массив 
   MqlTradeResult resultSell19={0};                                     // создаем и обнуляем массив 2
   requestSell19.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell19.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell19.volume = lot;                                          // указываем объем ордера
   requestSell19.deviation = 2;                                         // указываем проскальзывание
   requestSell19.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell19.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell19.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell19.comment = "39";
   if(!OrderSend(requestSell19,resultSell19))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell19.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 20:
   {// Ордер на покупку
   MqlTradeRequest requestBay20={};                                    // создаем массив 
   MqlTradeResult resultBay20={0};                                     // создаем и обнуляем массив 2
   requestBay20.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay20.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay20.volume = lot;                                          // указываем объем ордера
   requestBay20.deviation = 2;                                         // указываем проскальзывание
   requestBay20.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay20.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay20.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay20.comment = "40";
   if(!OrderSend(requestBay20,resultBay20))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay20.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell20={};                                    // создаем массив 
   MqlTradeResult resultSell20={0};                                     // создаем и обнуляем массив 2
   requestSell20.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell20.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell20.volume = lot;                                          // указываем объем ордера
   requestSell20.deviation = 2;                                         // указываем проскальзывание
   requestSell20.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell20.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell20.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell20.comment = "41";
   if(!OrderSend(requestSell20,resultSell20))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell20.order);}break;}         // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 21:
   {// Ордер на покупку
   MqlTradeRequest requestBay21={};                                    // создаем массив 
   MqlTradeResult resultBay21={0};                                     // создаем и обнуляем массив 2
   requestBay21.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay21.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay21.volume = lot;                                          // указываем объем ордера
   requestBay21.deviation = 2;                                         // указываем проскальзывание
   requestBay21.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay21.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay21.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay21.comment = "42";
   if(!OrderSend(requestBay21,resultBay21))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay21.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell21={};                                    // создаем массив 
   MqlTradeResult resultSell21={0};                                     // создаем и обнуляем массив 2
   requestSell21.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell21.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell21.volume = lot;                                          // указываем объем ордера
   requestSell21.deviation = 2;                                         // указываем проскальзывание
   requestSell21.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell21.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell21.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell21.comment = "43";
   if(!OrderSend(requestSell21,resultSell21))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell21.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 22:
   {// Ордер на покупку
   MqlTradeRequest requestBay22={};                                    // создаем массив 
   MqlTradeResult resultBay22={0};                                     // создаем и обнуляем массив 2
   requestBay22.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay22.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay22.volume = lot;                                          // указываем объем ордера
   requestBay22.deviation = 2;                                         // указываем проскальзывание
   requestBay22.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay22.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay22.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay22.comment = "44";
   if(!OrderSend(requestBay22,resultBay22))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay22.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell22={};                                    // создаем массив 
   MqlTradeResult resultSell22={0};                                     // создаем и обнуляем массив 2
   requestSell22.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell22.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell22.volume = lot;                                          // указываем объем ордера
   requestSell22.deviation = 2;                                         // указываем проскальзывание
   requestSell22.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell22.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell22.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell22.comment = "45";
   if(!OrderSend(requestSell22,resultSell22))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell22.order);}}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   case 23:
   {// Ордер на покупку
   MqlTradeRequest requestBay23={};                                    // создаем массив 
   MqlTradeResult resultBay23={0};                                     // создаем и обнуляем массив 2
   requestBay23.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestBay23.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestBay23.volume = lot;                                          // указываем объем ордера
   requestBay23.deviation = 2;                                         // указываем проскальзывание
   requestBay23.type = ORDER_TYPE_BUY_STOP;                            // указываем тип ордера
   requestBay23.price = NormalizeDouble(ask+OpenPrice*Point(),3);          // указываем цену открытия
   requestBay23.sl = NormalizeDouble(bid-StopLoss*Point(),3);             // указываем стоп лосс
   requestBay23.comment = "46";
   if(!OrderSend(requestBay23,resultBay23))                                 // если одер не открылся
      PrintFormat("Ошибка открытого ордера на покупку %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на покупку - ",resultBay23.order);}          // выводится сообщение с тикетом ордера

// Ордер на продажу 1
   MqlTradeRequest requestSell23={};                                    // создаем массив 
   MqlTradeResult resultSell23={0};                                     // создаем и обнуляем массив 2
   requestSell23.action = TRADE_ACTION_PENDING;                         // указываем тип открытия ордера по условиям
   requestSell23.symbol = "USDJPYrfd";                                  // указываем валюту ордера
   requestSell23.volume = lot;                                          // указываем объем ордера
   requestSell23.deviation = 2;                                         // указываем проскальзывание
   requestSell23.type = ORDER_TYPE_SELL_STOP;                            // указываем тип ордера
   requestSell23.price = NormalizeDouble(bid-OpenPrice*Point(),3);          // указываем цену открытия
   requestSell23.sl = NormalizeDouble(ask+StopLoss*Point(),3);             // указываем стоп лосс
   requestSell23.comment = "47";
   if(!OrderSend(requestSell23,resultSell23))                                 // если одер не открылся
      PrintFormat("Ошибка открытия ордера на продужу %d", GetLastError());   // обрабатываем ошибку
   else                                                           // если ордер открылся
      {Print("Тикет открытого ордера на продажу - ",resultSell23.order);}break;}          // выводится сообщение с тикетом ордера
//-------------------------------------------------------------------------------------------------------------------------
   
   */



}//swith

return(true);
};