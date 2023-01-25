void OrdersModifyPerspective()
{
   MqlTradeRequest request2 = {};
   MqlTradeResult result2 = {};
   int total2=OrdersTotal();
   for(int i=total2-1;i>=0;i--)
   {
      ulong  order_ticket=OrderGetTicket(i);                   // тикет ордера
      ZeroMemory(request2);
      ZeroMemory(result2);
      request2.action=TRADE_ACTION_REMOVE;                     // тип торговой операции
      request2.order = order_ticket;                           // тикет ордера
      if(!OrderSend(request2,result2))
         PrintFormat("OrderSend error %d",GetLastError());
   }
};