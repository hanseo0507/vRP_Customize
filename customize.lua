local lang = vRP.lang
local cfg = module("cfg/customize")
local types = { ["jpg"] = true, ["png"] = true, ["gif"] = true}

function chnagePhoneBG(player,choice)
  local user_id = vRP.getUserId(player)
  vRP.prompt(player, lang.customize.askBg(), lang.customize.askBg2(), function(player, url)
    if url ~= nil and url ~= "" then
      local type = splitString(url, ".")
      if types[type[#type]] ~= nil or url == "RESET" then
        if url == "RESET" then
          vRPclient.changeBackground(player, {url})
        else
          local tmpdata = vRP.getUserDataTable(user_id)
          if tmpdata.customize then
            tmpdata.customize.background = url
            vRPclient.changeBackground(player, {url})
          end
        end
      else
        vRPclient.notify(player, {"png, jpg, gif만 지원합니다"})
      end
    else
      vRPclient.notify(player, {"~r~올바른 URL을 입력해주세요"})
    end
  end)
end

function chnagePhoneFont(player, choice)
  local user_id = vRP.getUserId(player)
  vRP.buildMenu(lang.customize.chnageFont(), {player = player}, function(menu)
    menu.name = lang.customize.chnageFont()
    menu.css={ top="75px", header_color="rgba(200,0,0,0.75)"}
    menu.onclose = function(player) vRP.openMainMenu(player) end
    local tmpdata = vRP.getUserDataTable(user_id)

    for k, v in pairs(cfg.font) do
      menu[v] = { 
        function(player, choice)
          if tmpdata.customize then
            tmpdata.customize.font = k
            vRPclient.changeFont(player, {k})
          end
        end, 
        v.." 폰트로 변경합니다"
      }
    end
    
    vRP.openMenu(player, menu)
end)
end

vRP.registerMenuBuilder("main", function(add, data)
    local user_id = vRP.getUserId(data.player)
    if user_id ~= nil then
      local choices = {}
      
      -- build admin menu
      choices[lang.customize.title()] = {function(player, choice)
        vRP.buildMenu(lang.customize.title(), {player = player}, function(menu)
          menu.name = lang.customize.title()
          menu.css={top="75px",header_color="rgba(200,0,0,0.75)"}
          menu.onclose = function(player) vRP.openMainMenu(player) end -- nest menu

          menu[lang.customize.changeBg()] = {chnagePhoneBG}
          menu[lang.customize.chnageFont()] = {chnagePhoneFont}
     
          vRP.openMenu(player, menu)
        end)
      end}
  
      add(choices)
      end
  end)

AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
  local tmpdata = vRP.getUserDataTable(user_id)
  if first_spawn then
    if tmpdata.customize ~= nil then
      if tmpdata.customize.background ~= "default" then
        vRPclient.changeBackground(source, {tmpdata.customize.background})
      end
    else
      tmpdata.customize = {}
      tmpdata.customize.font = "default"
      tmpdata.customize.background = "default"
    end
  end
end)
