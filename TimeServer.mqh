bool TimeServer()
{
int TimePeriod = 0;
string RealTimeServer = TimeToString(TimeCurrent());

string RealTimeMonth = RealTimeServer.Substr(5,2);
if((RealTimeMonth == "11") || (RealTimeMonth == "12") || (RealTimeMonth == "01") || (RealTimeMonth == "02") || (RealTimeMonth == "03"))
   {Print("Зимнее время");
   TimePeriod = 1;}
else
   {Print("Летнее время");
   TimePeriod = 2;}

string RealTimeHor = RealTimeServer.Substr(11,2);
string RealTimeMinut = RealTimeServer.Substr(14,2);
bool b = false;

   if((TimePeriod == 1) && (RealTimeHor == "16") && (RealTimeMinut == "29") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 0; // зимнее время открытия США по летнему
        }   
   if((TimePeriod == 2) && (RealTimeHor == "15") && (RealTimeMinut == "29") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 0; // летнее время открытия США
        }
/*      
   if((TimePeriod == 1) && (RealTimeHor == "01") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 1; // зимнее время 1 час ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "00") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 1; // летнее время 1 час ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "02") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 2; // зимнее время 2 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "01") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 2; // летнее время 2 часа ночи
        }
   
   if((TimePeriod == 1) && (RealTimeHor == "03") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 3; // зимнее время 3 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "02") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 3; // летнее время 3 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "04") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 4; // зимнее время 4 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "03") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 4; // летнее время 4 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "05") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 5; // зимнее время 5 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "04") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 5; // летнее время 5 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "06") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 6; // зимнее время 6 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "05") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 6; // летнее время 6 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "07") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 7; // зимнее время 7 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "06") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 7; // летнее время 7 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "08") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 8; // зимнее время 8 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "07") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 8; // летнее время 8 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "09") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 9; // зимнее время 9 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "08") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 9; // летнее время 9 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "10") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 10; // зимнее время 10 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "09") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 10; // летнее время 10 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "11") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 11; // зимнее время 11 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "10") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 11; // летнее время 11 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "12") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 12; // зимнее время 12 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "11") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 12; // летнее время 12 часа ночи
        }
   
   if((TimePeriod == 1) && (RealTimeHor == "13") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 13; // зимнее время 13 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "12") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 13; // летнее время 13 часа ночи
        }

   if((TimePeriod == 1) && (RealTimeHor == "14") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 14; // зимнее время 14 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "13") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 14; // летнее время 14 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "15") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 15; // зимнее время 15 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "14") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 15; // летнее время 15 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "16") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 16; // зимнее время 16 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "15") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 16; // летнее время 16 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "17") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 17; // зимнее время 17 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "16") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 17; // летнее время 17 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "18") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 18; // зимнее время 18 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "17") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 18; // летнее время 18 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "19") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 19; // зимнее время 19 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "18") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 19; // летнее время 19 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "20") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 20; // зимнее время 20 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "19") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 20; // летнее время 20 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "21") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 21; // зимнее время 21 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "20") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 21; // летнее время 21 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "22") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 22; // зимнее время 22 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "21") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 22; // летнее время 22 часа ночи
        }
      
   if((TimePeriod == 1) && (RealTimeHor == "23") && (RealTimeMinut == "59") && (count == true))////
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 23; // зимнее время 23 часа ночи по летнему
        }
   if((TimePeriod == 2) && (RealTimeHor == "22") && (RealTimeMinut == "59") && (count == true))
      {
      OrdersModifyPerspective();
      count = false;
      b = true;
      caseOrder = 23; // летнее время 23 часа ночи
        }
        
        
     */   
    if(RealTimeMinut == "59")
    {OrdersModifyPerspective();}

      
if((RealTimeMinut != "04") &&
   (RealTimeMinut != "09") &&
   (RealTimeMinut != "14") &&
   (RealTimeMinut != "19") &&
   (RealTimeMinut != "24") &&
   (RealTimeMinut != "29") &&
   (RealTimeMinut != "34") &&
   (RealTimeMinut != "39") &&
   (RealTimeMinut != "44") &&
   (RealTimeMinut != "49") &&
   (RealTimeMinut != "54") &&
   (RealTimeMinut != "59") && (count == false))
      {count = true;
       b = false;
       //Print("Только модификация");
      }


return(b);
};


