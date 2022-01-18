Config = {}

--esx
Config.Clienttrigger = 'esx:getSharedObject' --client esx trigger
Config.Serverrigger = 'esx:getSharedObject' --server esx trigger

--minigame
Config.Levels = 1 --minigame level min. 1 - 4 max
Config.Lifes = 5 --minigame lifes min. 1 - 6 max
Config.Time = 2 --minigame time min. 1 - 9 max

--progressbar
function progress(time, msg)
    exports['pogressBar']:drawBar(time, msg)
end
Config.msghack = "Hacking!"
Config.msgsteal = "Stealing!"


--debuging
Config.debuging = false -- don't touch

--blips
Config.deletetoblip = 15 --distance from blip to delete
Config.Blip = {Sprite = 1, Colour = 76, Scale = 0.75} --blip

--getitem
Config.textdistan = 15 --distance from text to show
Config.msg = "[E]Take item" --text of taking
--items is in config-s

--npc 
Config.gun = 'WEAPON_ASSAULTRIFLE' --gun npc
Config.npc = 'a_m_y_salton_01' --npc
Config.npchp = 100 --hp npc
Config.npcarmour = 100 --armour npc


Config.Zones = {
    ['usb_blue'] = {  --usb blue
        [1] = {
            Pos = vector3(714.45257568359,4103.8969726563,35.785190582275),    --position of text 
            Npc1 = vector3(719.97509765625,4182.2998046875,40.70922088623),    --position of 1 npc 
            Npc2 = vector3(726.46508789063,4169.9609375,40.709224700928),      --position of 2 npc
            Npc3 = vector3(738.82476806641,4175.6796875,40.727397918701),      --position of 3 npc
            Npc4 = vector3(730.84753417969,4194.9545898438,40.708786010742),   --position of 4 npc
            Npc5 = vector3(711.68524169922,4169.0034179688,40.712890625),      --position of 5 npc
            Npc6 = vector3(711.68524169922,4169.0034179688,40.712890625),      --position of 6 npc

        },


    },
    ['usb_red'] = { --usb red
        [1] = {
            Pos = vector3(470.40078735352,-3132.9453125,6.0700583457947),    --position of text 
            Npc1 = vector3(473.69592285156,-3123.3361816406,6.0700540542603),    --position of 1 npc 
            Npc2 = vector3(493.02017211914,-3121.8420410156,6.070056438446),      --position of 2 npc
            Npc3 = vector3(486.66705322266,-3107.8913574219,6.07005310058591),      --position of 3 npc
            Npc4 = vector3(481.76425170898,-3108.5224609375,6.0700535774231),   --position of 4 npc
            Npc5 = vector3(504.22439575195,-3129.3010253906,6.0697937011719),      --position of 5 npc
            Npc6 = vector3(498.89599609375,-3146.5361328125,6.0698223114014),      --position of 6 npc

        },

    },
    ['usb_gold'] = { --usb gold
        [1] = {
            Pos = vector3(-3418.0146484375,970.80816650391,11.93544960022),    --position of text 
            Npc1 = vector3(-3415.3037109375,971.02227783203,11.903624534607),    --position of 1 npc 
            Npc2 = vector3(-3413.0515136719,964.66070556641,11.910991668701),      --position of 2 npc
            Npc3 = vector3(-3410.6013183594,960.12957763672,8.3466863632202),      --position of 3 npc
            Npc4 = vector3(-3408.95703125,972.68395996094,8.3466949462891),   --position of 4 npc
            Npc5 = vector3(-3427.0239257813,965.69189453125,8.3466863632202),      --position of 5 npc
            Npc6 = vector3(-3426.1518554688,970.38000488281,8.3466815948486),      --position of 6 npc

        },
    },
    ['usb_diamond'] = { --usb diamond
        [1] = {
            Pos = vector3(-917.27423095703,4824.8237304688,307.37316894531),    --position of text 
            Npc1 = vector3(-911.59594726563,4839.7954101563,308.13012695313),    --position of 1 npc 
            Npc2 = vector3(-931.49377441406,4840.80859375,310.0051574707),      --position of 2 npc
            Npc3 = vector3(-949.16479492188,4839.8388671875,313.00872802734),      --position of 3 npc
            Npc4 = vector3(-942.37042236328,4824.4282226563,311.1135559082),   --position of 4 npc
            Npc5 = vector3(-926.71221923828,4810.1079101563,308.59368896484),      --position of 5 npc
            Npc6 = vector3(-902.48980712891,4806.3159179688,303.36016845703),      --position of 6 npc

        },
    },
}
