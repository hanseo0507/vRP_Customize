# vRP_Customize
❤ FiveM vRP Phone Customize (Fonts, Backgrounds) / 파이브엠 vRP 폰 맞춤설정 ( 폰트, 배경화면 )

## License
### Ko
1. 해당 소스는 누구나 무료로 사용할 수 있습니다.
2. 해당 소스 코드를 누구나 수정 또는 편집하여 무료로 재 배포할 수 있습니다.
3. 단, 해당 소스코드를 상업적인 목적으로 제 3자에게 판매하는 행위를 금지합니다.

### Eng
1. The source is free for anyone.
2. Anyone can modify or edit the source code and redeploy it for free.
3. However, it is prohibited from selling the source code to third parties for commercial purposes.

<strong>Copyright © 2020. HanSeo. All rights reserved.</strong>

## Setup

### Ko

1. customize.lua를 vrp/modeuls 경로에 추가합니다.
2. vrp/gui/ogrp.main.js 파일을 업로드된 ogrp.main.js로 교체합니다.
3. cfg/customize.lua를 vrp/cfg 경로에 추가합니다.
4. vrp/cfg/lang/[lang].lua 파일에 아래 코드를 추가합니다.
```lua
customize = {
      title = "🔗 [설정]",
      changeBg = "📱 [핸드폰 배경화면 변경]",
      chnageFont = "📱 [핸드폰 폰트 변경]",
      askBg = "원하는 배경 화면 사진의 URL을 입력해주세요",
      askBg2 = "png, jpg, gif 확장자만 가능하며, 일부 이미지는 지원하지 않을 수 있습니다. 배경을 원래대로 돌리고 싶다면 RESET을 입력해주세요"
}
```

5. gui/design.css에 사용하려는 폰트들을 추가하세요 ( 아래 코드는 예시입니다 )
```css
@font-face {
	font-family: "Arita-dotum-Medium";

	src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff") format("woff");
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: "NanumBarunGothic";
	font-style: normal;
	font-weight: 400;
	src: url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot");
	src: url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix") format("embedded-opentype"), url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff") format("woff"), url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf") format("truetype");
}
```
6. 즐겁게 사용하세요!

### Eng

1. Add customize.lua to the vrp/modeules path.
2. Replace the vrp/gui/ogrp.main.js file with the uploaded ogrp.main.js.
3. Add cfg/customize.lua to vrp/cfg path.
4. Add the code below to vrp/cfg/lang/[lang].lua
```lua
customize = {
      title = "🔗 [Customize]",
      changeBg = "📱 [Change Phone Background]",
      chnageFont = "📱 [Change Phone Font]",
      askBg = "Please enter the URL of the background picture you want.",
      askBg2 = "Only png, jpg, and gif extensions are allowed, and some images may not be supported. Enter RESET if you want to change the background."
}
```

5. Add the fonts you want to use for gui/design.css (the code below is an example).
```css
@font-face {
	font-family: "Arita-dotum-Medium";

	src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff") format("woff");
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: "NanumBarunGothic";
	font-style: normal;
	font-weight: 400;
	src: url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot");
	src: url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix") format("embedded-opentype"), url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff") format("woff"), url("https://cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf") format("truetype");
}
```
6. Enjoy your use!
