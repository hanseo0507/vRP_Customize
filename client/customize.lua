function tvRP.changeBackground(url)
    SendNUIMessage({act="change_bg",url=url})
end

function tvRP.changeFont(font)
    SendNUIMessage({act="change_font",font=font})
    print(font)
end
