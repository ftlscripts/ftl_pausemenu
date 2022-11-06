function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end


CreateThread(function()


  ReplaceHudColourWithRgba(117, 25, 28, 37, 255)
  SetScriptVariableHudColour(82, 115, 161)

  -- Name
  AddTextEntry("FE_THDR_GTAO", "Jmeno Serveru")

  -- Main
  AddFontTextEntry("PM_SCR_MAP", "Mapa")
  AddFontTextEntry("PM_SCR_STA", "Status")
  AddFontTextEntry("PM_SCR_GAM", "Hra")
  AddFontTextEntry("PM_SCR_INF", "Informace")
  AddFontTextEntry("PM_SCR_SET", "Nastavení")
  AddFontTextEntry("PM_SCR_GAL", "Galerie")
  AddFontTextEntry("PM_SCR_RPL", "R* Editor")

  -- Game
  AddFontTextEntry("PM_PANE_LEAVE", "~r~Odpojit se")
  AddFontTextEntry("PM_PANE_QUIT", "~r~Vypnout ~w~hru")

  -- Stats
  AddFontTextEntry("MP_STATS1", "Kariera")
  AddFontTextEntry("MP_STATS2", "Skills")
  AddFontTextEntry("MP_STATS3", "General")
  AddFontTextEntry("MP_STATS4", "Vraždy")
  AddFontTextEntry("MP_STATS5", "Vozidlá")
  AddFontTextEntry("MP_STATS6", "Peníze")
  AddFontTextEntry("MP_STATS7", "Strelba")
  AddFontTextEntry("PM_AWARDS", "Odmeny")
  AddFontTextEntry("PM_INF_UNLT", "Odomknutia")
  AddFontTextEntry("PM_WEAPONS", "Zbrane")
  -- Info
  AddFontTextEntry("PM_PANE_FEE", "Notifikace")
  AddFontTextEntry("PM_PANE_HLP", "Pomoc")
  AddFontTextEntry("PM_PANE_BRI", "Dialóg")
  AddFontTextEntry("PM_PANE_MIS", "Misie")

  -- Settings
  AddFontTextEntry("0x92320117", "Ovládač")
  AddFontTextEntry("PM_PANE_AUD", "Zvuk")
  AddFontTextEntry("PM_PANE_CAM", "Kamera")
  AddFontTextEntry("PM_PANE_DIS", "Zobrazeni")
  AddFontTextEntry("MO_VOUT", "Voice chat ingame")
  AddFontTextEntry("0xE782A771", "Rockstar editor")
  AddFontTextEntry("0xFBB6E685", "Pokročilá grafika")
  AddFontTextEntry("0xD3A0C438", "Grafika")
  AddFontTextEntry("0x82FBED04", "Nastavení ovládaní")
  AddFontTextEntry("0x0A0C22D4", "Klávesnice / Myš")
  AddFontTextEntry("GFX_VIDMEM", "Video paměť")
  AddFontTextEntry("0x51B058B3", "Výstupní monitor")
  AddFontTextEntry("0xA28A6F51", "FXAA")
  AddFontTextEntry("0x38111CA3", "MSAA")
  AddFontTextEntry("0xFB0E70C2", "V-Sync")
  AddFontTextEntry("0xC4FD3301", "Pozastavit hru na ztrátu soustředění")
  AddFontTextEntry("GFX_SCALING", "Rozlišení vykreslení")
  AddFontTextEntry("GFX_BUDGET", "Rozšířený rozpočet na textury")
  AddFontTextEntry("0x74F73ED3", "Kvalita stínu")
  AddFontTextEntry("0x78F76ACC", "Kvalita textur")
  AddFontTextEntry("0x11739C25", "Kvalita shaderu")
  AddFontTextEntry("0xC43D3B9F", "Kvalita vody")
  AddFontTextEntry("0x544B440F", "Kvalita částic")
  AddFontTextEntry("0x5CD4E15C", "Kvalita trávy")
  AddFontTextEntry("0xCD676AF6", "Kvalita odrazu")
  AddFontTextEntry("0x67117E6F", "Ignorujte doporučené limity")
  AddFontTextEntry("0x87D30231", "Verze DirectX")
  AddFontTextEntry("0xD627A8D5", "Hustota obyvatel")
  AddFontTextEntry("0x74EFCDDE", "Rozmanitost populace")
  AddFontTextEntry("0xF84B169F", "Měřítko vzdálenosti")
  AddFontTextEntry("0x30860474", "Odraz MSAA")
  AddFontTextEntry("0x73C258A0", "Měkké stíny")
  AddFontTextEntry("0x367DB5EF", "Příspěvek FX")
  AddFontTextEntry("0x1752894A", "Síla rozmazání pohybu")
  AddFontTextEntry("MO_DOF", "Efekty hloubky pole ve hře")
  AddFontTextEntry("0x19C1AD65", "Anizotropní filtrování")
  AddFontTextEntry("0xE0306CDD", "Ambient Occlusion")
  AddFontTextEntry("0x0F986BB4", "Teselace")
  AddFontTextEntry("MO_RDF", "Obnovit výchozí nastavení")
  AddFontTextEntry("MO_GFX_NORM", "Normální")
  AddFontTextEntry("MO_CS_HIGH", "Vysoká")
  AddFontTextEntry("MO_GFX_VHIGH", "Velmi vysoká")
  AddFontTextEntry("MO_GFX_ULTRA", "Ultra")
  AddFontTextEntry("MO_GFX_X2", "X2")
  AddFontTextEntry("MO_GFX_X4", "X4")
  AddFontTextEntry("MO_GFX_X8", "X8")
  AddFontTextEntry("MO_OFF", "Vypnuto")
  AddFontTextEntry("MO_ON", "Zapnuto")
  AddFontTextEntry("GFX_SHARP", "Ostrý")
  AddFontTextEntry("GFX_SOFT", "Měkký")
  AddFontTextEntry("GFX_SOFTER", "Měkčí")
  AddFontTextEntry("GFX_SOFTEST", "Nejměkčí")
  AddFontTextEntry("0xF390EF41", "AMD CHS")
  AddFontTextEntry("GFX_NVIDIA", "NVIDIA PCSS")

  -- MAP Locations
  AddFontTextEntry("SANCHIA", "San Chianski mountain range")
  AddFontTextEntry("OCEANA", "Pacifický oceán")
end)

function AddFontTextEntry(entry, text)
  AddTextEntry(entry, setFont(text, 10))
end

function setFont(text, size)
  if not size then
      return "<font face='Fire Sans'> " .. text .. " </font>"
  else
      return '<font face="Fire Sans" size="'.. size ..'">' .. text .. ' </font>'
  end
end
