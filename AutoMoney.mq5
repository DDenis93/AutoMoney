//+------------------------------------------------------------------+
//|                                                    AutoMoney.mq5 |
//|                                                            Denis |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Denis"
#property link      ""
#property version   "1.00"
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
#include <OrdersModifyActive.mqh>
#include <OrdersModifyPerspective.mqh>
#include <TimeServer.mqh>
#include <Balance.mqh>
#include <OpenOrder.mqh>

//input int OpenPrice0 = 50; // Цена открытия 0
input int OpenPrice1 = 50; // Цена открытия 1
/*input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия 
input int OpenPrice = 50; // Цена открытия */

//input int StopLoss0 = 50; // Стоп лосс 0
input int StopLoss1 = 50; // Стоп лосс 1

//input int TrallStop0 = 50; // Трейлинг стоп 0
input int TrallStop1 = 50; // Трейлинг стоп 1
/*input int TrallStop2 = 50; // Трейлинг стоп 2
input int TrallStop3 = 50; // Трейлинг стоп 3
input int TrallStop4 = 50; // Трейлинг стоп 4
input int TrallStop5 = 50; // Трейлинг стоп 5
input int TrallStop6 = 50; // Трейлинг стоп 6
input int TrallStop7 = 50; // Трейлинг стоп 7
input int TrallStop8 = 50; // Трейлинг стоп 8
input int TrallStop9 = 50; // Трейлинг стоп 9
input int TrallStop10 = 50; // Трейлинг стоп 10
input int TrallStop11 = 50; // Трейлинг стоп 11
input int TrallStop12 = 50; // Трейлинг стоп 12
input int TrallStop13 = 50; // Трейлинг стоп 13
input int TrallStop14 = 50; // Трейлинг стоп 14
input int TrallStop15 = 50; // Трейлинг стоп 15
input int TrallStop16 = 50; // Трейлинг стоп 16
input int TrallStop17 = 50; // Трейлинг стоп 17
input int TrallStop18 = 50; // Трейлинг стоп 18
input int TrallStop19 = 50; // Трейлинг стоп 19
input int TrallStop20 = 50; // Трейлинг стоп 20
input int TrallStop21 = 50; // Трейлинг стоп 21
input int TrallStop22 = 50; // Трейлинг стоп 22
input int TrallStop23 = 50; // Трейлинг стоп 23
input int TrallStop24 = 50; // Трейлинг стоп 24
input int TrallStop25 = 50; // Трейлинг стоп 25
input int TrallStop26 = 50; // Трейлинг стоп 26
input int TrallStop27 = 50; // Трейлинг стоп 27
input int TrallStop28 = 50; // Трейлинг стоп 28
input int TrallStop29 = 50; // Трейлинг стоп 29
input int TrallStop30 = 50; // Трейлинг стоп 30
input int TrallStop31 = 50; // Трейлинг стоп 31
input int TrallStop32 = 50; // Трейлинг стоп 32
input int TrallStop33 = 50; // Трейлинг стоп 33
input int TrallStop34 = 50; // Трейлинг стоп 34
input int TrallStop35 = 50; // Трейлинг стоп 35
input int TrallStop36 = 50; // Трейлинг стоп 36
input int TrallStop37 = 50; // Трейлинг стоп 37
input int TrallStop38 = 50; // Трейлинг стоп 38
input int TrallStop39 = 50; // Трейлинг стоп 39
input int TrallStop40 = 50; // Трейлинг стоп 40
input int TrallStop41 = 50; // Трейлинг стоп 41
input int TrallStop42 = 50; // Трейлинг стоп 42
input int TrallStop43 = 50; // Трейлинг стоп 43
input int TrallStop44 = 50; // Трейлинг стоп 44
input int TrallStop45 = 50; // Трейлинг стоп 45
input int TrallStop46 = 50; // Трейлинг стоп 46
input int TrallStop47 = 50; // Трейлинг стоп 47 */

int caseOrder = 0; // кейс для открытия ордеров по каждому часу в отдельности
double balance;
double RealFreeBalance;
bool count = true;
double balances;                // общий баланс счета
double balanceFreeMargin;       // свободная маржа
int CreditPlecho;               // кредитное плече счета
double bid = 0.0;
double ask = 0.0;
double lot = 0.0;
int ab = 0;
int OnInit()
  {
//---
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   MqlTick price;
   if(SymbolInfoTick("USDJPYrfd",price)==true)
   {bid = price.bid;
    ask = price.ask;}
    
   OrdersModifyActive();
   if((Balance() == true) && (TimeServer() == true))
      {
         OpenOrder();
         // блок управления дневными ордерами
         // блок управления ордерами по открытияю США
         // блок управления новостными ордерами
         // блок управления ордерами по часам
      }
  }
//+------------------------------------------------------------------+
//| Trade function                                                   |
//+------------------------------------------------------------------+
void OnTrade()
  {
//---
   
  }
//+------------------------------------------------------------------+
//| TradeTransaction function                                        |
//+------------------------------------------------------------------+
void OnTradeTransaction(const MqlTradeTransaction& trans,
                        const MqlTradeRequest& request,
                        const MqlTradeResult& result)
  {
//---
   
  }
//+------------------------------------------------------------------+
