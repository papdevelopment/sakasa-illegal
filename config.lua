
Config = {}

Config.EnableBlips = false
Config.Poset = "poset"

---------------------------------------------------------------------------------------------------

--[İTEMS]
Config.ToplaEsrarItem = "esrar"
Config.IsleEsrarItem = "islenmisesrar"
Config.PaketEsrarItem = "paketlenmisesrar"


--[ESRAR-TOPLAMA-RANDOM]
Config.EsrarMin = 1
Config.EsrarMax = 5

--[ESRAR-TOPLAMA-YERLERİ](? farklı yerde)


Config.EsrarTopla = { 
  vector3(2303.02, 2568.49, 46.69),
  vector3(2311.64, 2571.21, 46.67)
}

--[İşleme]
Config.esrarisle = {

  ["esrar_isle"] = {
      isim = "Esrarları İşle",
      konum = {x = 2328.93, y = 2571.27, z = 46.68},
      icerik  = {
          {item = "esrar", isle = 1, label = "Esrarları İşle"},
     }
  },
}

--[PAKETLEME]
Config.esrarpaket = {

  ["esrar_paketleme"] = {
     isim = "İşlenmiş Esrarları Paketle",
     konum = {x = 2331.67, y = 2571.06, z = 46.68},
     icerik  = {
         {item = "islenmisesrar", paket = 1, label = "İşlenmiş Esrarları Paketle"},
    }
  },
}
--[SAT]
Config.esrarsat = {

  ["esrar_sat"] = {
     isim = "Esrarları Sat",
     konum = {x = 1932.88, y = 3804.97, z = 32.91},
     icerik  = {
         {item = "paketlenmisesrar", fiyat = 100, label = "Esrarları Sat"},
    }
  },
}

---------------------------------------------------------------------------------------------------


--[İTEMS]
Config.ToplaKenevirItem = "kenevir"
Config.IsleKenevirItem = "islenmiskenevir"
Config.PaketKenevirItem = "paketlenmiskenevir"

--[ESRAR-TOPLAMA-RANDOM]
Config.KenevirMin = 1
Config.KenevirMax = 5


--[KENEVİR-TOPLAMA-YERLERİ](? farklı yerde)
Config.KenevirToplama = { 
  vector3(1915.66, 4760.32, 42.73)
}

--[İşleme]
Config.kenevirisle = {

  ["kenevir_isle"] = {
      isim = "Kenevirleri İşle",
      konum = {x = 1702.09, y = 4867.91, z = 42.03}, 
      icerik  = {
          {item = "kenevir", isle = 1, label = "Kenevirleri İşle"},
     }
  }
}

--[PAKETLEME]
Config.kenevirpaket = {

  ["kenevir_paketleme"] = {
     isim = "Kenevirleri Paketle",
     konum = {x = 1701.24, y = 4871.07, z = 42.03},
     icerik  = {
         {item = "islenmiskenevir", paket = 1, label = "Kenevirleri Paketle"},
    }
  }
}
--[SAT]
Config.kenevirsat = {

  ["kenevir_sat"] = {
     isim = "Kenevirleri Sat",
     konum = {x = 1701.22, y = 4857.68, z = 42.03}, 
     icerik  = {
         {item = "paketlenmiskenevir", fiyat = 100, label = "Kenevirleri Sat"},
    }
  }
}

---------------------------------------------------------------------------------------------------

--[İTEMS]
Config.ToplaKokainItem = "kokain"
Config.IsleKokainItem = "islenmiskokain"
Config.PaketKokainItem = "paketlenmiskokain"

--[ESRAR-TOPLAMA-RANDOM]
Config.KokainMin = 1
Config.KokainMax = 5


--[KENEVİR-TOPLAMA-YERLERİ](? farklı yerde)
Config.KokainToplama = { 
  vector3(1889.06, 4792.47, 44.49)
}

--[İşleme]
Config.kokainisle = {

  ["kokain_isle"] = {
      isim = "Kokainleri İşle",
      konum = {x = 1725.01, y = 4732.35, z =42.14}, 
      icerik  = {
          {item = "kokain", isle = 1, label = "Kokainleri İşle"},
     }
  }
}

--[PAKETLEME]
Config.kokainpaket = {

  ["kokain_paketleme"] = {
     isim = "Kokainleri Paketle",
     konum = {x = 1726.68, y = 4726.98, z = 42.16},
     icerik  = {
         {item = "islenmiskokain", paket = 1, label = "Kokainleri Paketle"},
    }
  }
}
--[SAT]
Config.kokainsat = {

  ["kokain_sat"] = {
     isim = "Kokainleri Sat",
     konum = {x = 1725.83, y = 4721.49, z = 42.1},
     icerik  = {
         {item = "paketlenmiskokain", fiyat = 100, label = "Kokainleri Sat"},
    }
  }
}





--[BLIPLER]
Config.Blips = {
  [1] = {label = "Esrar Toplama", konum = vector3(-2169.09, 2672.18, 2.85), color = 5, sprite = 86, scale = 0.6},
  [2] = {label = "Esrar İşleme", konum = vector3(2328.93, 2571.27, 46.68), color = 2, sprite = 605, scale = 0.7},
  [3] = {label = "Esrar Paketleme", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
  [4] = {label = "Esrar Satış", konum = vector3(1932.88, 3804.97, 32.91), color = 5, sprite = 86, scale = 0.6},
  [5] = {label = "Kenevir  Toplama", konum = vector3(3311.15, 5175.82, 19.61), color = 2, sprite = 605, scale = 0.7},
  [6] = {label = "Kenevir İşleme", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
  [7] = {label = "Kenevir Paketleme", konum = vector3(-2169.09, 2672.18, 2.85), color = 5, sprite = 86, scale = 0.6},
  [8] = {label = "Kenevir Satış", konum = vector3(3311.15, 5175.82, 19.61), color = 2, sprite = 605, scale = 0.7},
  [9] = {label = "Kokain Toplama", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
  [10] = {label = "Kokain İşleme", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
  [11] = {label = "Kokain Paketleme", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
  [12] = {label = "Kokain Satış", konum = vector3(2444.05, 4980.99, 46.81), color = 38, sprite = 280, scale = 0.7},
}

Config.Peds = {
	[1] = { handle = nil, model ="a_m_m_fatlatin_01", coords = vector3(1932.88, 3804.97, 32.91), heading = 123.17,  anim = { type = 1, name = "WORLD_HUMAN_CLIPBOARD"} }, -- scene
    [2] = { handle = nil, model ="a_m_m_indian_01", coords = vector3(1701.22, 4857.68, 42.03), heading = 278.38,  anim = { type = 1, name = "WORLD_HUMAN_CLIPBOARD"} }, -- scene
    [3] = { handle = nil, model ="a_m_m_ktown_01", coords = vector3(1725.83, 4721.49, 42.1), heading = 292.74,  anim = { type = 1, name = "WORLD_HUMAN_CLIPBOARD"} }, -- scene

}

