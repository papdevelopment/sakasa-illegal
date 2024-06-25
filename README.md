# sakasa-illegal Version-2

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Resource Preview] https://www.youtube.com/watch?v=ZopcvvFlcPE&t=3s

Gerekli Scriptler/Required Scripts
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
* [nh-keyboard](https://github.com/nerohiro/nh-keyboard)
* [qb-target](https://github.com/qbcore-framework/qb-target) 
* [qb-core](https://github.com/qbcore-framework/qb-core) 
* [ik-joblimit](https://github.com/i-kulgu/ik-joblimit) 
* [cron](https://github.com/i-kulgu/cron) 

<strong>[EN]</strong>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


Setup;

1;
We have finished step 1 of the process by assigning the start file to server.cfg or script.cfg,
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

* ensure sakasa-illegal
* ensure qb-target
* ensure nh-keyboard
* ensure ik-joblimit
* ensure cron


2;
Add the following to qb-core\shared\items.lua;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --Esrar  
    ['esrar'] 			             = {['name'] = 'esrar', 			  	        ['label'] = 'Cannabis', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'esrar.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I need to process this.....'},
    ['islenmisesrar'] 			     = {['name'] = 'islenmisesrar', 			  	['label'] = 'Processed Cannabis', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmisesrar.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I gotta wrap this up.....'},
    ['paketlenmisesrar'] 			 = {['name'] = 'paketlenmisesrar', 			  	['label'] = 'Packaged Cannabis', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmisesrar.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I have to sell this.....'},

     --kenevir  
    ['kenevir'] 			         = {['name'] = 'kenevir', 			  	        ['label'] = 'Hemp', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'kenevir.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I need to process this....'},
    ['islenmiskenevir'] 			 = {['name'] = 'islenmiskenevir', 			  	['label'] = 'Processed Hemp', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmiskenevir.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I gotta wrap this up....'},
    ['paketlenmiskenevir'] 			 = {['name'] = 'paketlenmiskenevir', 			['label'] = 'Packaged Hemp', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmiskenevir.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'I have to sell this....'},

     --kokain 
    ['kokain'] 			             = {['name'] = 'kokain', 			  	        ['label'] = 'Cocaine', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'kokain.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu işlemem gerek....'},
    ['islenmiskokain'] 			     = {['name'] = 'islenmiskokain', 			  	['label'] = 'Processed Cocaine', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmiskokain.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu paketlemem gerek....'},
    ['paketlenmiskokain'] 			 = {['name'] = 'paketlenmiskokain', 		    ['label'] = 'Packaged Cocaine', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmiskokain.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu satmam gerek....'},


3;
Attach the photos we provide in the file sakasa-illegal\images.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Add it to qb-inventory\html\images,

Add it to lj-inventory\html\images.



That's all for installation.


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


<strong>[TR]</strong>
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Kurulum;

1;
server.cfg veya script.cfg'ye dosyayı başlatlarını atayarak işlemin 1. adımını bitirmiş bulunmaktayız,
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

* ensure sakasa-illegal
* ensure qb-target
* ensure nh-keyboard
* ensure ik-joblimit
* ensure cron


2;
qb-core\shared\items.lua'ya aşağıdakileri ekleyiniz;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    --Esrar  
    ['esrar'] 			             = {['name'] = 'esrar', 			  	        ['label'] = 'Esrar', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'esrar.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu işlemem gerek....'},
    ['islenmisesrar'] 			     = {['name'] = 'islenmisesrar', 			  	['label'] = 'İşlenmiş Esrar', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmisesrar.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu paketlemem gerek....'},
    ['paketlenmisesrar'] 			 = {['name'] = 'paketlenmisesrar', 			  	['label'] = 'Paketlenmiş Esrar', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmisesrar.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu satmam gerek....'},

     --kenevir  
    ['kenevir'] 			         = {['name'] = 'kenevir', 			  	        ['label'] = 'Kenevir', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'kenevir.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu işlemem gerek....'},
    ['islenmiskenevir'] 			 = {['name'] = 'islenmiskenevir', 			  	['label'] = 'İşlenmiş Kenevir', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmiskenevir.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu paketlemem gerek....'},
    ['paketlenmiskenevir'] 			 = {['name'] = 'paketlenmiskenevir', 			['label'] = 'Paketlenmiş Kenevir', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmiskenevir.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu satmam gerek....'},

     --kokain 
    ['kokain'] 			             = {['name'] = 'kokain', 			  	        ['label'] = 'Kokain', 			    ['weight'] = 2, 		['type'] = 'item', 		['image'] = 'kokain.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu işlemem gerek....'},
    ['islenmiskokain'] 			     = {['name'] = 'islenmiskokain', 			  	['label'] = 'İşlenmiş Kokain', 			    ['weight'] = 3, 		['type'] = 'item', 		['image'] = 'islenmiskokain.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu paketlemem gerek....'},
    ['paketlenmiskokain'] 			 = {['name'] = 'paketlenmiskokain', 		    ['label'] = 'Paketlenmiş Kokain', 			['weight'] = 2, 		['type'] = 'item', 		['image'] = 'paketlenmiskokain.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'bunu satmam gerek....'},


3;
sakasa-illegal\images dosyasında verdiğimiz fotoları ekleyiniz.
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
qb-inventory\html\images adresine ekleyiniz,
 
lj-inventory\html\images adresine ekleyiniz.



# Kurulum bu kadar kolay gelsin.


![sakasatr com](https://github.com/papdevelopment/qb-portak/assets/127118520/67696232-ef5a-4205-8d35-cb37fb4b6aa8)




