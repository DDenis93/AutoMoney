void OrdersModifyActive()
{
   
   MqlTradeRequest request1;
   MqlTradeResult result1;
   int total1=PositionsTotal();
   //Print("Всего действующих ордеров - ",total1);
   for(int i=0;i<total1;i++)
   {
      ulong position_ticket = PositionGetTicket(i); // тикет позиции
      double sl=PositionGetDouble(POSITION_SL);  // Stop Loss позиции текущий
      ENUM_POSITION_TYPE type=(ENUM_POSITION_TYPE)PositionGetInteger(POSITION_TYPE);  // тип позиции
      string coment = PositionGetString(POSITION_COMMENT);
      
      double price1 = PositionGetDouble(POSITION_PRICE_OPEN);        // цена открытия ордера
      
      //double stl0 = bid-TrallStop0*Point(); // цена нового стоп лосса
      double stl1 = ask+TrallStop1*Point(); // цена нового стоп лосса
      /*double stl2 = bid-TrallStop2*Point(); // цена нового стоп лосса
      double stl3 = ask+TrallStop3*Point(); // цена нового стоп лосса
      double stl4 = bid-TrallStop4*Point(); // цена нового стоп лосса
      double stl5 = ask+TrallStop5*Point(); // цена нового стоп лосса
      double stl6 = bid-TrallStop6*Point(); // цена нового стоп лосса
      double stl7 = ask+TrallStop7*Point(); // цена нового стоп лосса
      double stl8 = bid-TrallStop8*Point(); // цена нового стоп лосса
      double stl9 = ask+TrallStop9*Point(); // цена нового стоп лосса
      double stl10 = bid-TrallStop10*Point(); // цена нового стоп лосса
      double stl11 = ask+TrallStop11*Point(); // цена нового стоп лосса
      double stl12 = bid-TrallStop12*Point(); // цена нового стоп лосса
      double stl13 = ask+TrallStop13*Point(); // цена нового стоп лосса
      double stl14 = bid-TrallStop14*Point(); // цена нового стоп лосса
      double stl15 = ask+TrallStop15*Point(); // цена нового стоп лосса
      double stl16 = bid-TrallStop16*Point(); // цена нового стоп лосса
      double stl17 = ask+TrallStop17*Point(); // цена нового стоп лосса
      double stl18 = bid-TrallStop18*Point(); // цена нового стоп лосса
      double stl19 = ask+TrallStop19*Point(); // цена нового стоп лосса
      double stl20 = bid-TrallStop20*Point(); // цена нового стоп лосса
      double stl21 = ask+TrallStop21*Point(); // цена нового стоп лосса
      double stl22 = bid-TrallStop22*Point(); // цена нового стоп лосса
      double stl23 = ask+TrallStop23*Point(); // цена нового стоп лосса
      double stl24 = bid-TrallStop24*Point(); // цена нового стоп лосса
      double stl25 = ask+TrallStop25*Point(); // цена нового стоп лосса
      double stl26 = bid-TrallStop26*Point(); // цена нового стоп лосса
      double stl27 = ask+TrallStop27*Point(); // цена нового стоп лосса
      double stl28 = bid-TrallStop28*Point(); // цена нового стоп лосса
      double stl29 = ask+TrallStop29*Point(); // цена нового стоп лосса
      double stl30 = bid-TrallStop30*Point(); // цена нового стоп лосса
      double stl31 = ask+TrallStop31*Point(); // цена нового стоп лосса
      double stl32 = bid-TrallStop32*Point(); // цена нового стоп лосса
      double stl33 = ask+TrallStop33*Point(); // цена нового стоп лосса
      double stl34 = bid-TrallStop34*Point(); // цена нового стоп лосса
      double stl35 = ask+TrallStop35*Point(); // цена нового стоп лосса
      double stl36 = bid-TrallStop36*Point(); // цена нового стоп лосса
      double stl37 = ask+TrallStop37*Point(); // цена нового стоп лосса
      double stl38 = bid-TrallStop38*Point(); // цена нового стоп лосса
      double stl39 = ask+TrallStop39*Point(); // цена нового стоп лосса
      double stl40 = bid-TrallStop40*Point(); // цена нового стоп лосса
      double stl41 = ask+TrallStop41*Point(); // цена нового стоп лосса
      double stl42 = bid-TrallStop42*Point(); // цена нового стоп лосса
      double stl43 = ask+TrallStop43*Point(); // цена нового стоп лосса
      double stl44 = bid-TrallStop44*Point(); // цена нового стоп лосса
      double stl45 = ask+TrallStop45*Point(); // цена нового стоп лосса
      double stl46 = bid-TrallStop46*Point(); // цена нового стоп лосса
      double stl47 = ask+TrallStop47*Point(); // цена нового стоп лосса
      
      
      
      if((coment == "0") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl0 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl0 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl0; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
 */
      if((coment == "1") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl1 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl1 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl1; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      /*
      if((coment == "2") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl2 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl2 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl2; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "3") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl3 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl3 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl3; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      
      if((coment == "4") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl4 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl4 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl4; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "5") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl5 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl5 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl5; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "6") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl6 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl6 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl6; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "7") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl7 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl7 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl7; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      
      if((coment == "8") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl8 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl8 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl8; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "9") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl9 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl9 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl9; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      
      
      if((coment == "10") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl10 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl10 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl10; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "11") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl11 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl11 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl11; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "12") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl12 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl12 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl12; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "13") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl13 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl13 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl13; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      /// nenn
      
      if((coment == "14") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl14 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl14 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl14; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "15") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl15 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl15 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl15; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      
      if((coment == "16") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl16 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl16 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl16; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "17") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl17 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl17 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl17; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "18") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl18 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl18 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl18; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "19") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl19 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl19 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl19; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "20") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl20 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl20 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl20; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "21") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl21 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl21 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl21; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "22") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl22 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl22 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl22; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "23") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl23 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl23 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl23; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      
      if((coment == "24") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl24 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl24 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl24; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "25") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl25 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl25 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl25; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "26") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl26 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl26 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl26; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "27") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl27 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl27 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl27; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "28") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl28 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl28 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl28; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "29") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl29 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl29 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl29; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "30") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl30 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl30 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl30; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "31") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl31 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl31 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl31; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "32") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl32 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl32 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl32; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "33") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl33 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl33 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl33; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "34") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl34 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl34 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl34; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "35") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl35 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl35 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl35; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "36") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl36 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl36 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl36; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "37") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl37 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl37 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl37; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "38") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl38 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl38 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl38; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "39") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl39 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl39 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl39; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "40") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl40 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl40 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl40; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "41") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl41 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl41 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl41; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "42") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl42 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl42 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl42; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "43") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl43 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl43 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl43; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "44") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl44 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl44 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl44; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "45") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl45 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl45 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl45; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
      
      if((coment == "46") && // тип ордера SELL или BAY
         (bid > (price1+30*Point())) && // текущая больше цены открытия ордера
         (stl46 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl46 > sl)) // новый стоп лосс больше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl46; // текущая цена -422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера BAY %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер BAY успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
   
      if((coment == "47") &&
         (ask < (price1-30*Point())) && // текущая меньше цены открытия ордера
         (stl47 != sl) && // новый стоп лосс не равен старому стоп лоссу
         (stl47 < sl)) // новый стоп лосс меньше старого стоп лосса
      {
         {
         ZeroMemory(request1); // обнуление структуры по всей видимости
         ZeroMemory(result1);
         request1.action = TRADE_ACTION_SLTP; // выбор типа торговой операции
         request1.position = position_ticket; // тикет текущей позиции в цикле
         request1.sl = stl47; // текущая цена +422 пунктов - новый стоп лосс
         if(!OrderSend(request1,result1))                                 // если одер не открылся
         PrintFormat("Ошибка модификации ордера SELL %d", GetLastError());   // обрабатываем ошибку
         else                                                           // если ордер открылся
         {Print("Ордер SELL успешно модифицирован - ",result1.order);}          // выводится сообщение с тикетом ордера
         }
      }
  */    
      
   }
   

   
   

};