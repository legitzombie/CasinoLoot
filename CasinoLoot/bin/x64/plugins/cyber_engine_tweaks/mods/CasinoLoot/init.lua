
local CasinoLootKeys = {
     "Items.CasinoLoot_SlashToken_COMMON",
     "Items.CasinoLoot_SlashToken_UNCOMMON",
     "Items.CasinoLoot_SlashToken_RARE",
     "Items.CasinoLoot_SlashToken_EPIC",
     "Items.CasinoLoot_SlashToken_LEGENDARY",

     "Items.CasinoLoot_BluntToken_COMMON",
     "Items.CasinoLoot_BluntToken_UNCOMMON",
     "Items.CasinoLoot_BluntToken_RARE",
     "Items.CasinoLoot_BluntToken_EPIC",
     "Items.CasinoLoot_BluntToken_LEGENDARY",

     "Items.CasinoLoot_ThrowToken_COMMON",
     "Items.CasinoLoot_ThrowToken_UNCOMMON",
     "Items.CasinoLoot_ThrowToken_RARE",
     "Items.CasinoLoot_ThrowToken_EPIC",
     "Items.CasinoLoot_ThrowToken_LEGENDARY",

     "Items.CasinoLoot_PistolToken_COMMON",
     "Items.CasinoLoot_PistolToken_UNCOMMON",
     "Items.CasinoLoot_PistolToken_RARE",
     "Items.CasinoLoot_PistolToken_EPIC",
     "Items.CasinoLoot_PistolToken_LEGENDARY",

     "Items.CasinoLoot_ShotgunToken_COMMON",
     "Items.CasinoLoot_ShotgunToken_UNCOMMON",
     "Items.CasinoLoot_ShotgunToken_RARE",
     "Items.CasinoLoot_ShotgunToken_EPIC",
     "Items.CasinoLoot_ShotgunToken_LEGENDARY",

     "Items.CasinoLoot_SniperToken_COMMON",
     "Items.CasinoLoot_SniperToken_UNCOMMON",
     "Items.CasinoLoot_SniperToken_RARE",
     "Items.CasinoLoot_SniperToken_EPIC",
     "Items.CasinoLoot_SniperToken_LEGENDARY",

     "Items.CasinoLoot_RifleToken_COMMON",
     "Items.CasinoLoot_RifleToken_UNCOMMON",
     "Items.CasinoLoot_RifleToken_RARE",
     "Items.CasinoLoot_RifleToken_EPIC",
     "Items.CasinoLoot_RifleToken_LEGENDARY",

     "Items.CasinoLoot_SMGToken_COMMON",
     "Items.CasinoLoot_SMGToken_UNCOMMON",
     "Items.CasinoLoot_SMGToken_RARE",
     "Items.CasinoLoot_SMGToken_EPIC",
     "Items.CasinoLoot_SMGToken_LEGENDARY"
}

local lootTables = {

  ["Items.CasinoLoot_SlashToken_COMMON"] = {
"Items.Preset_Katana_Default",
"Items.Preset_Machete_Default",
"Items.Preset_Machete_Borg_Default",
"Items.Preset_Kukri_Default",
"Items.Preset_Chainsword_Default"
  },
  ["Items.CasinoLoot_SlashToken_UNCOMMON"] = {
"Items.Preset_Katana_Military",
"Items.Preset_Machete_Borg_Military",
"Items.Preset_Chainsword_Military"
  },
  ["Items.CasinoLoot_SlashToken_RARE"] = {
"Items.Preset_Katana_Pimp",
"Items.Preset_Katana_Pimp_03",
"Items.Preset_Machete_Borg_Pimp",
"Items.Preset_Chainsword_Pimp"
  },
  ["Items.CasinoLoot_SlashToken_EPIC"] = {
"Items.Preset_Katana_Neon",
"Items.Preset_Katana_Neon_03",
"Items.Preset_Machete_Borg_Neon",
"Items.Preset_Chainsword_Neon"
  },
  ["Items.CasinoLoot_SlashToken_LEGENDARY"] = {
"Items.Preset_Katana_Arasaka_2020",
"Items.Preset_Katana_Arasaka_2077",
"Items.Preset_Katana_Cocktail",
"Items.Preset_Katana_E3",
"Items.Preset_Katana_GoG",
"Items.Preset_Katana_Hiromi",
"Items.Preset_Katana_Saburo",
"Items.Preset_Katana_Surgeon",
"Items.Preset_Katana_Takemura",
"Items.Preset_Katana_Training",
"Items.Preset_Katana_Wakako",
"Items.Preset_Machete_Maelstrom",
"Items.Preset_Machete_Valentinos",
"Items.Preset_Machete_Kurt",
"Items.Preset_Kukri_Voodoo",
"Items.Preset_Chainsword_Legendary"
  },

  ["Items.CasinoLoot_BluntToken_COMMON"] = {
"Items.Preset_Kanabo_Default",
"Items.Preset_Iron_Pipe_Default",
"Items.Preset_Tire_Iron_Default"
  },
  ["Items.CasinoLoot_BluntToken_UNCOMMON"] = {
"Items.Preset_Crowbar_Default",
"Items.Preset_Hammer_Default",
"Items.Preset_Baseball_Bat_Default"
  },
  ["Items.CasinoLoot_BluntToken_RARE"] = {
"Items.Preset_Baseball_Bat_Pimp"
  },
  ["Items.CasinoLoot_BluntToken_EPIC"] = {
"Items.Preset_Baseball_Bat_Neon"
  },
  ["Items.CasinoLoot_BluntToken_LEGENDARY"] = {
"Items.Preset_Crowbar_Bunker",
"Items.Preset_Hammer_Sasquatch",
"Items.Preset_Baton_Alpha",
"Items.Preset_Baton_Beta",
"Items.Preset_Baton_Gamma",
"Items.Preset_Baton_Murphy",
"Items.Preset_Baton_Tinker_Bell",
"Items.Preset_Baseball_Bat_Mox",
"Items.Preset_Baseball_Bat_SixStreet",
"Items.Preset_Baseball_Bat_TygerClaws",
"Items.Preset_Baseball_Bat_Valentinos",
"Items.Preset_Baseball_Bat_Wraiths",
"Items.Preset_Baseball_Bat_Aldecados",
"Items.Preset_Baseball_Bat_Denny",
"Items.Preset_Baseball_Bat_Malina"
  },

  ["Items.CasinoLoot_ThrowToken_COMMON"] = {
"Items.Preset_Knife_Default",
"Items.Preset_Chefs_Knife_Default",
"Items.Preset_Neurotoxin_Knife_Default",
"Items.Preset_Punk_Knife_Default",
"Items.Preset_Tanto_Default",
"Items.Preset_Tomahawk_Default",
"Items.Preset_Fanged_Axe_Default"
  },
  ["Items.CasinoLoot_ThrowToken_UNCOMMON"] = {
"Items.Preset_Knife_Military",
"Items.Preset_Neurotoxin_Knife_Military",
"Items.Preset_Punk_Knife_Military",
"Items.Preset_Fanged_Axe_Military"
  },
  ["Items.CasinoLoot_ThrowToken_RARE"] = {
"Items.Preset_Neurotoxin_Knife_Pimp",
"Items.Preset_Punk_Knife_Pimp"
  },
  ["Items.CasinoLoot_ThrowToken_EPIC"] = {
"Items.Preset_Neurotoxin_Knife_Neon",
"Items.Preset_Punk_Knife_Neon",
"Items.Preset_Fanged_Axe_Neon"
  },
  ["Items.CasinoLoot_ThrowToken_LEGENDARY"] = {
"Items.Preset_Knife_Kurtz_1",
"Items.Preset_Knife_Stinger",
"Items.Preset_Neurotoxin_Knife_Iconic",
"Items.Preset_Punk_Knife_Iconic",
"Items.Preset_Tanto_Saburo",
"Items.Preset_Tanto_Saburo_Retrofix",
"Items.Preset_Fanged_Axe_Collectible"
  },

  ["Items.CasinoLoot_PistolToken_COMMON"] = {
"Items.Preset_Lexington_Default",
"Items.Preset_Nue_Default",
"Items.Preset_Unity_Default",
"Items.Preset_Nova_Default",
"Items.Preset_Metel_Default",
"Items.Preset_Liberty_Default",
"Items.Preset_Omaha_Default",
"Items.Preset_Ticon_Default",
"Items.Preset_Grit_Default",
"Items.Preset_Quasar_Default",
"Items.Preset_Burya_Default",
"Items.Preset_Chao_Default",
"Items.Preset_Yukimura_Default",
"Items.Preset_Kappa_Default",
"Items.Preset_Kenshin_Default"
  },
  ["Items.CasinoLoot_PistolToken_UNCOMMON"] = {
"Items.Preset_Lexington_Military",
"Items.Preset_Nue_Military",
"Items.Preset_Unity_Military",
"Items.Preset_Nova_Military",
"Items.Preset_Metel_Military",
"Items.Preset_Liberty_Military",
"Items.Preset_Omaha_Military",
"Items.Preset_Ticon_Military",
"Items.Preset_Grit_Military",
"Items.Preset_Quasar_Military",
"Items.Preset_Burya_Military",
"Items.Preset_Chao_Military",
"Items.Preset_Yukimura_Military",
"Items.Preset_Kappa_Military",
"Items.Preset_Kenshin_Military"
  },
  ["Items.CasinoLoot_PistolToken_RARE"] = {
"Items.Preset_Lexington_Pimp",
"Items.Preset_Nue_Pimp",
"Items.Preset_Unity_Pimp",
"Items.Preset_Nova_Pimp",
"Items.Preset_Metel_Pimp",
"Items.Preset_Liberty_Pimp",
"Items.Preset_Omaha_Pimp",
"Items.Preset_Ticon_Pimp",
"Items.Preset_Grit_Pimp",
"Items.Preset_Quasar_Pimp",
"Items.Preset_Burya_Pimp",
"Items.Preset_Chao_Pimp",
"Items.Preset_Yukimura_Pimp",
"Items.Preset_Kappa_Pimp",
"Items.Preset_Kenshin_Pimp"
  },
  ["Items.CasinoLoot_PistolToken_EPIC"] = {
"Items.Preset_Lexington_Neon",
"Items.Preset_Nue_Neon",
"Items.Preset_Unity_Neon",
"Items.Preset_Nova_Neon",
"Items.Preset_Metel_Neon",
"Items.Preset_Liberty_Neon",
"Items.Preset_Omaha_Neon",
"Items.Preset_Ticon_Neon",
"Items.Preset_Grit_Neon",
"Items.Preset_Quasar_Neon",
"Items.Preset_Burya_Neon",
"Items.Preset_Chao_Neon",
"Items.Preset_Yukimura_Neon",
"Items.Preset_Kappa_Neon",
"Items.Preset_Kenshin_Neon"
  },
  ["Items.CasinoLoot_PistolToken_LEGENDARY"] = {
"Items.Preset_Lexington_Krausser",
"Items.Preset_Lexington_Prevention",
"Items.Preset_Lexington_Rook",
"Items.Preset_Lexington_Shooting_Competition",
"Items.Preset_Lexington_Toygun",
"Items.Preset_Lexington_Training",
"Items.Preset_Lexington_Wilson",
"Items.Preset_Nue_Arasaka_2077",
"Items.Preset_Nue_Arasaka_2020",
"Items.Preset_Nue_Boris",
"Items.Preset_Nue_Bree",
"Items.Preset_Nue_Jackie",
"Items.Preset_Nue_Maiko",
"Items.Preset_Unity_Agent",
"Items.Preset_Unity_Angelica",
"Items.Preset_Nova_Doom_Doom",
"Items.Preset_Nova_Hutman",
"Items.Preset_Nova_Q000_Nomad",
"Items.Preset_Nova_Scene",
"Items.Preset_Metel_Kurt",
"Items.Preset_Metel_Legendary",
"Items.Preset_Liberty_Dex",
"Items.Preset_Liberty_Padre",
"Items.Preset_Liberty_Rogue",
"Items.Preset_Liberty_Yurinobu",
"Items.Preset_Omaha_Krauser",
"Items.Preset_Omaha_Maelstrom",
"Items.Preset_Omaha_Suzie",
"Items.Preset_Ticon_Gwent",
"Items.Preset_Ticon_Legendary",
"Items.Preset_Ticon_Reed",
"Items.Preset_Grit_Amazon",
"Items.Preset_Grit_Krausser",
"Items.Preset_Grit_Legendary",
"Items.Preset_Grit_Prevention",
"Items.Preset_Quasar_Baron",
"Items.Preset_Quasar_Patricia",
"Items.Preset_Burya_Comrade",
"Items.Preset_Chao_VooDoo",
"Items.Preset_Chao_Workspot",
"Items.Preset_Yukimura_Skippy",
"Items.Preset_Yukimura_Trauma",
"Items.Preset_Yukimura_Kiji",
"Items.Preset_Kappa_George",
"Items.Preset_Kappa_Workspot",
"Items.Preset_Kappa_Legendary",
"Items.Preset_Base_Slaughtomatic",
"Items.Preset_Kenshin_Frank",
"Items.Preset_Kenshin_MQ041",
"Items.Preset_Kenshin_Royce",
"Items.Preset_Kenshin_Spy",
"Items.Preset_Kenshin_Takemura"
  },

  ["Items.CasinoLoot_ShotgunToken_COMMON"] = {
"Items.Preset_Carnage_Default",
"Items.Preset_Crusher_Default",
"Items.Preset_Tactician_Default",
"Items.Preset_Pozhar_Default",
"Items.Preset_Testera_Default",
"Items.Preset_Satara_Default",
"Items.Preset_Palica_Default",
"Items.Preset_Zhuo_Default",
"Items.Preset_Igla_Default"
  },
  ["Items.CasinoLoot_ShotgunToken_UNCOMMON"] = {
"Items.Preset_Carnage_Military",
"Items.Preset_Crusher_Military",
"Items.Preset_Tactician_Military",
"Items.Preset_Pozhar_Military",
"Items.Preset_Testera_Military",
"Items.Preset_Satara_Military",
"Items.Preset_Palica_Military",
"Items.Preset_Zhuo_Military",
"Items.Preset_Igla_Military"
  },
  ["Items.CasinoLoot_ShotgunToken_RARE"] = {
"Items.Preset_Carnage_Pimp",
"Items.Preset_Crusher_Pimp",
"Items.Preset_Tactician_Pimp",
"Items.Preset_Pozhar_Pimp",
"Items.Preset_Testera_Pimp",
"Items.Preset_Satara_Pimp",
"Items.Preset_Palica_Pimp",
"Items.Preset_Zhuo_Pimp",
"Items.Preset_Igla_Pimp"
  },
  ["Items.CasinoLoot_ShotgunToken_EPIC"] = {
"Items.Preset_Carnage_Neon",
"Items.Preset_Crusher_Neon",
"Items.Preset_Tactician_Neon",
"Items.Preset_Pozhar_Neon",
"Items.Preset_Testera_Neon",
"Items.Preset_Satara_Neon",
"Items.Preset_Palica_Neon",
"Items.Preset_Zhuo_Neon",
"Items.Preset_Igla_Neon"
  },
  ["Items.CasinoLoot_ShotgunToken_LEGENDARY"] = {
"Items.Preset_Carnage_Mox",
"Items.Preset_Carnage_Edgerunners",
"Items.Preset_Crusher_Amazon",
"Items.Preset_Crusher_Krausser",
"Items.Preset_Tactician_Dino",
"Items.Preset_Tactician_Headsman",
"Items.Preset_Tactician_Krausser",
"Items.Preset_Tactician_Prevention",
"Items.Preset_Pozhar_Legendary",
"Items.Preset_Testera_Nicolas",
"Items.Preset_Satara_Brick",
"Items.Preset_Zhuo_Eight_Star",
"Items.Preset_Zhuo_Trauma",
"Items.Preset_Igla_Sovereign"
  },

  ["Items.CasinoLoot_SniperToken_COMMON"] = {
"Items.Preset_Nekomata_Default",
"Items.Preset_Tech_Sniper_Rifle_Default",
"Items.Preset_Grad_Default",
"Items.Preset_Osprey_Default",
"Items.Preset_Ashura_Default"
  },
  ["Items.CasinoLoot_SniperToken_UNCOMMON"] = {
"Items.Preset_Nekomata_Military",
"Items.Preset_Grad_Military",
"Items.Preset_Osprey_Military",
"Items.Preset_Ashura_Military"
  },
  ["Items.CasinoLoot_SniperToken_RARE"] = {
"Items.Preset_Nekomata_Pimp",
"Items.Preset_Grad_Pimp",
"Items.Preset_Osprey_Pimp",
"Items.Preset_Ashura_Pimp"
  },
  ["Items.CasinoLoot_SniperToken_EPIC"] = {
    "Items.Preset_Nekomata_Neon",
"Items.Preset_Grad_Neon",
"Items.Preset_Osprey_Neon",
"Items.Preset_Ashura_Neon"
  },
  ["Items.CasinoLoot_SniperToken_LEGENDARY"] = {
"Items.Preset_Nekomata_Amazon",
"Items.Preset_Nekomata_Boris",
"Items.Preset_Nekomata_Breakthrough",
"Items.Preset_Nekomata_Krausser",
"Items.Preset_Nekomata_Legendary",
"Items.Preset_Nekomata_Prevention",
"Items.Preset_Nekomata_MaxTac",
"Items.Preset_Grad_Buck",
"Items.Preset_Grad_Panam",
"Items.Preset_Grad_Scav",
"Items.Preset_Osprey_Prototype",
"Items.Preset_Osprey_Legendary",
"Items.Preset_Ashura_Prevention_MaxTac",
"Items.Preset_Ashura_Prevention_MaxTac_2nd_wave",
"Items.Preset_Ashura_Reed",
"Items.Preset_Ashura_Twitch"
  },

  ["Items.CasinoLoot_RifleToken_COMMON"] = {
        "Items.Preset_Kolac_Default",
"Items.Preset_Sor22_Default",
"Items.Preset_Copperhead_Default",
"Items.Preset_Umbra_Default",
"Items.Preset_Kyubi_Default",
"Items.Preset_Ajax_Default",
"Items.Preset_Defender_Default",
"Items.Preset_MA70_Default",
"Items.Preset_Sidewinder_Default",
"Items.Preset_Hercules_Default",
"Items.Preset_Achilles_Default",
"Items.Preset_Masamune_Default"
  },
  ["Items.CasinoLoot_RifleToken_UNCOMMON"] = {
"Items.Preset_Sor22_Military",
"Items.Preset_Copperhead_Military",
"Items.Preset_Umbra_Military",
"Items.Preset_Kyubi_Military",
"Items.Preset_Ajax_Military",
"Items.Preset_Ajax_Military_MaxTac_2nd_wave",
"Items.Preset_Defender_Military",
"Items.Preset_MA70_Military",
"Items.Preset_Sidewinder_Military",
"Items.Preset_Achilles_Military",
"Items.Preset_Masamune_Military"
  },
  ["Items.CasinoLoot_RifleToken_RARE"] = {
    "Items.Preset_Sor22_Pimp",
"Items.Preset_Copperhead_Pimp",
"Items.Preset_Umbra_Pimp",
"Items.Preset_Kyubi_Pimp",
"Items.Preset_Ajax_Pimp",
"Items.Preset_Defender_Pimp",
"Items.Preset_MA70_Pimp",
"Items.Preset_Sidewinder_Pimp",
"Items.Preset_Achilles_Pimp",
"Items.Preset_Masamune_Pimp"
  },
  ["Items.CasinoLoot_RifleToken_EPIC"] = {
    "Items.Preset_Sor22_Neon",
"Items.Preset_Copperhead_Neon",
"Items.Preset_Umbra_Neon",
"Items.Preset_Kyubi_Neon",
"Items.Preset_Ajax_Neon",
"Items.Preset_Defender_Neon",
"Items.Preset_MA70_Neon",
"Items.Preset_Sidewinder_Neon",
"Items.Preset_Achilles_Neon",
"Items.Preset_Masamune_Neon"
  },
  ["Items.CasinoLoot_RifleToken_LEGENDARY"] = {
    "Items.Preset_Kolac_Tiny_Mike",
"Items.Preset_Sor22_Nusa_Black",
"Items.Preset_Sor22_Nusa_White",
"Items.Preset_Copperhead_Genesis",
"Items.Preset_Copperhead_Krausser",
"Items.Preset_Copperhead_Prevention",
"Items.Preset_Umbra_Bebe",
"Items.Preset_Umbra_Collectible",
"Items.Preset_Umbra_Legendary",
"Items.Preset_Kyubi_Amazon",
"Items.Preset_Kyubi_Krausser",
"Items.Preset_Kyubi_Legendary",
"Items.Preset_Kyubi_Myers",
"Items.Preset_Kyubi_Nusa",
"Items.Preset_Kyubi_Prevention",
"Items.Preset_Ajax_Amazon",
"Items.Preset_Ajax_Krausser",
"Items.Preset_Ajax_Moron",
"Items.Preset_Ajax_Scene",
"Items.Preset_Ajax_Training",
"Items.Preset_Defender_Kurt",
"Items.Preset_Defender_MaxTac_2nd_wave",
"Items.Preset_MA70_Collectible",
"Items.Preset_MA70_Legendary",
"Items.Preset_Sidewinder_Divided",
"Items.Preset_Hercules_Prototype",
"Items.Preset_Achilles_Collectible",
"Items.Preset_Achilles_Nash",
"Items.Preset_Achilles_Nusa_Black",
"Items.Preset_Achilles_Nusa_White",
"Items.Preset_Masamune_Arasaka_2077",
"Items.Preset_Masamune_Rogue",
"Items.Preset_Masamune_Rogue_Stash",
"Items.Preset_Masamune_Trauma",
"Items.Preset_Masamune_Arasaka_2020"
  },

  ["Items.CasinoLoot_SMGToken_COMMON"] = {
    "Items.Preset_Saratoga_Default",
"Items.Preset_Pulsar_Default",
"Items.Preset_Dian_Default",
"Items.Preset_Shingen_Default",
"Items.Preset_Warden_Default",
"Items.Preset_Senkoh_Default",
"Items.Preset_Guillotine_Default"
},
  ["Items.CasinoLoot_SMGToken_UNCOMMON"] = {
    "Items.Preset_Saratoga_Military",
"Items.Preset_Pulsar_Military",
"Items.Preset_Dian_Military",
"Items.Preset_Shingen_Military",
"Items.Preset_Warden_Military",
"Items.Preset_Senkoh_Military",
"Items.Preset_Guillotine_Military"
  },
  ["Items.CasinoLoot_SMGToken_RARE"] = {
"Items.Preset_Saratoga_Pimp",
"Items.Preset_Pulsar_Pimp",
"Items.Preset_Dian_Pimp",
"Items.Preset_Shingen_Pimp",
"Items.Preset_Warden_Pimp",
"Items.Preset_Senkoh_Pimp",
"Items.Preset_Guillotine_Pimp"
  },
  ["Items.CasinoLoot_SMGToken_EPIC"] = {
    "Items.Preset_Saratoga_Neon",
"Items.Preset_Pulsar_Neon",
"Items.Preset_Dian_Neon",
"Items.Preset_Shingen_Neon",
"Items.Preset_Warden_Neon",
"Items.Preset_Senkoh_Neon",
"Items.Preset_Guillotine_Neon",
"Items.Preset_Saratoga_Krausser",
"Items.Preset_Warden_Krausser",
"Items.Preset_Saratoga_Arasaka_2077",
"Items.Preset_Saratoga_Arasaka_2020"
  },
  ["Items.CasinoLoot_SMGToken_LEGENDARY"] = {
    "Items.Preset_Pulsar_Buzzsaw",
    "Items.Preset_Dian_Trauma",
    "Items.Preset_Dian_Yinglong",
    "Items.Preset_Shingen_Prototype",
"Items.Preset_Senkoh_Prototype",
"Items.Preset_Warden_Boris",
"Items.Preset_Warden_Legendary",
"Items.Preset_Senkoh_Legendary",
"Items.Preset_Guillotine_Legendary",
"Items.Preset_Warden_Amazon",
"Items.Preset_Guillotine_Collectible"
  }

}

function giveRandomItem(itemList)

  local player = Game.GetPlayer()
  local ts = Game.GetTransactionSystem()
  
  local selected = itemList[math.random(#itemList)]
  local itemID = ItemID.CreateQuery(TweakDBID.new(selected))  
  ts:GiveItem(player, itemID, 1)

end


registerForEvent("onUpdate", function()
  local player = Game.GetPlayer()
  local ts = Game.GetTransactionSystem()

  for _, key in ipairs(CasinoLootKeys) do
     local itemID = ItemID.CreateQuery(TweakDBID.new(key))  
    if ts:HasItem(player, itemID) then
      ts:RemoveItem(player, itemID, 1)
      local lootTable = lootTables[key]
      if lootTable then
        giveRandomItem(lootTable)
      end
    end
  end
end)

