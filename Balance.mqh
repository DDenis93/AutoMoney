bool Balance()
{
   bool a = false;
   RealFreeBalance = AccountInfoDouble(ACCOUNT_EQUITY);
   //Print("Свободные для торговли средства: ",AccountInfoDouble(ACCOUNT_EQUITY)," руб.");
   //Print("Текущая прибыль по счету: ",AccountInfoDouble(ACCOUNT_PROFIT), " руб.");

   double RealPriceRUBUSD = iHigh("USDRUBrfd",PERIOD_M1,0);
   double RealZalogRub = NormalizeDouble(RealPriceRUBUSD*1000/AccountInfoInteger(ACCOUNT_LEVERAGE),2); // AccountInfoInteger(ACCOUNT_LEVERAGE)
   //Print("Залог в рублях = ",RealZalogRub); // мксимальная цена доллар рубль
   
   if(RealFreeBalance > RealZalogRub)
   {
      //Print("Есть средства, открываем ордера");
      a = true;
      lot = 0.01;//NormalizeDouble((RealFreeBalance/RealZalogRub)/100-0.01,2);
      //Print("Допустимый объем = ",lot);
   }
   
   
return(a);
};