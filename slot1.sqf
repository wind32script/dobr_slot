      
private _dobr_game = 0;  
private _rukzak = backpackItems player; 
  for "_i" from 0 to (count _rukzak) -1 do {  
   _item = _rukzak select _i; 
   if ( _item == "Exile_Item_RubberDuck"  ) then {  
    _dobr_game = 2; 
    }; 
  }; 
 
 if ( _dobr_game < 1) exitWith{ 
        ["ErrorTitleAndText", ["Уточки где?", "У вас в рюкзаке нет уточек( В казино играют за уточек!!!"]] call ExileClient_gui_toaster_addTemplateToast; 
      };  
 
player  RemoveItemFromBackpack  "Exile_Item_RubberDuck" ;   
private _winnings = 0; 
private _slot11 = ceil(random 7); 
private _slot21 = ceil(random 7); 
private _slot31 = ceil(random 7); 
_slotstr = str _slot11 +str _slot21+ str _slot31; 
_slot = parseNumber _slotstr; 
switch (_slot) do 
{ 
     
    
 case 110:{_winnings = 1;}; 
 case 111:{_winnings = 1;}; 
 case 112:{_winnings = 1;}; 
 case 113:{_winnings = 1;}; 
 case 114:{_winnings = 1;}; 
 case 115:{_winnings = 1;}; 
 case 116:{_winnings = 1;}; 
 case 117:{_winnings = 1;}; 
 case 118:{_winnings = 1;}; 
 case 119:{_winnings = 1;}; 
 case 220:{_winnings = 1;}; 
 case 221:{_winnings = 1;}; 
 case 222:{_winnings = 1;}; 
 case 223:{_winnings = 1;}; 
 case 224:{_winnings = 1;}; 
 case 225:{_winnings = 1;}; 
 case 226:{_winnings = 1;}; 
 case 227:{_winnings = 1;}; 
 case 228:{_winnings = 1;}; 
 case 229:{_winnings = 1;}; 
  
 case 330:{_winnings = 1;}; 
 case 331:{_winnings = 1;}; 
 case 332:{_winnings = 1;}; 
 case 334:{_winnings = 1;}; 
 case 335:{_winnings = 1;}; 
 case 336:{_winnings = 1;}; 
 case 337:{_winnings = 1;}; 
 case 338:{_winnings = 1;}; 
 case 339:{_winnings = 1;};  
  
 case 440:{_winnings = 1;}; 
 case 441:{_winnings = 1;}; 
 case 442:{_winnings = 1;}; 
 case 443:{_winnings = 1;}; 
 case 445:{_winnings = 1;}; 
 case 446:{_winnings = 1;}; 
 case 447:{_winnings = 1;}; 
 case 448:{_winnings = 1;}; 
 case 449:{_winnings = 1;}; 
  
 case 550:{_winnings = 2;}; 
 case 551:{_winnings = 2;}; 
 case 552:{_winnings = 2;}; 
 case 553:{_winnings = 2;}; 
 case 554:{_winnings = 2;}; 
 case 556:{_winnings = 2;}; 
 case 557:{_winnings = 2;}; 
 case 558:{_winnings = 2;}; 
 case 559:{_winnings = 2;};  
  
 case 660:{_winnings = 1;}; 
 case 661:{_winnings = 1;}; 
 case 662:{_winnings = 1;}; 
 case 663:{_winnings = 1;}; 
 case 664:{_winnings = 1;}; 
 case 665:{_winnings = 1;}; 
 case 667:{_winnings = 1;}; 
 case 668:{_winnings = 1;}; 
 case 669:{_winnings = 1;};  
  
 case 770:{_winnings = 3;}; 
 case 771:{_winnings = 3;}; 
 case 772:{_winnings = 3;}; 
 case 773:{_winnings = 3;}; 
 case 774:{_winnings = 3;}; 
 case 775:{_winnings = 3;}; 
 case 776:{_winnings = 3;}; 
 case 778:{_winnings = 3;}; 
 case 779:{_winnings = 3;};   
  
 case 880:{_winnings = 1;}; 
 case 881:{_winnings = 1;}; 
 case 882:{_winnings = 1;}; 
 case 883:{_winnings = 1;}; 
 case 884:{_winnings = 1;}; 
 case 885:{_winnings = 1;}; 
 case 886:{_winnings = 1;}; 
 case 887:{_winnings = 1;}; 
 case 889:{_winnings = 1;};  
 
 case 990:{_winnings = 1;}; 
 case 991:{_winnings = 1;}; 
 case 992:{_winnings = 1;}; 
 case 993:{_winnings = 1;}; 
 case 994:{_winnings = 1;}; 
 case 995:{_winnings = 1;}; 
 case 996:{_winnings = 1;}; 
 case 997:{_winnings = 1;}; 
 case 998:{_winnings = 1;}; 

    case 111:{_winnings = 3;}; 
    case 222:{_winnings = 3;}; 
    case 333:{_winnings = 3;}; 
    case 444:{_winnings = 5;}; 
    case 555:{_winnings = 5;}; 
    case 666:{_winnings = 5;}; 
    case 777:{_winnings = 111;}; 
	case 888:{_winnings = 5;}; 
	case 999:{_winnings = 5;};   
    default {_winnings = 0;} 
}; 
 
 if ( _winnings < 1) then { 
        ["SuccessTitleAndText", [ "Вы проиграли", str _slot +" Вы проиграли, попробуй снова испытать удачу!" ]] call ExileClient_gui_toaster_addTemplateToast; 
      }else{ 
    
   dobr_slot_box_2 addItemCargoGlobal  [ "CUP_item_Money" , _winnings] ; 
   ["SuccessTitleAndText", [ "Победа!!!", str _slot + " Ваш приз у вас в коробке рядом: " +str _winnings ]] call ExileClient_gui_toaster_addTemplateToast; 
  }; 
 
 
 
 