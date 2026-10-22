# MDRG-Hidden-Variables-Viewer
This mod displays hidden in-game statistics and adds RGB "soap" for free.

Player Statistics 
Bot Statistics 
AND GLOBAL WORLD PROGRESS

Статистика игрока 
Бота 
И ГЛОБАЛЬНЫЙ ПРОГРЕСС МИРА

⚠️ IMPORTANT LICENSING WARNING / ВАЖНОЕ ПРЕДУПРЕЖДЕНИЕ О ЛИЦЕНЗИИ ⚠️

This mod is and will ALWAYS be 100% FREE and OPEN SOURCE.
I do not have a Patreon, Ko-fi, or any paid subscriptions.

Any version of this mod, or its source code, found behind a paywall, subscription service, or sold by third parties (including game developers or other content creators) is an unauthorized redistribution of this open-source project.

Please do not support unauthorized monetization of community work. For your safety and to support the project, download ONLY from the official GitHub repository

---

Этот мод есть и всегда будет НАВСЕГДА БЕСПЛАТНЫМ и с ОТКРЫТЫМ ИСХОДНЫМ КОДОМ.
У меня нет Patreon, Ko-fi или платных подписок.

Любая версия этого мода или его исходного кода, находящаяся за платным доступом, в сервисе по подписке или продаваемая третьими лицами (включая разработчиков игры или других создателей контента), является несанкционированным распространением этого Open Source проекта.

Пожалуйста, не поддерживайте несанкционированную монетизацию труда комьюнити. Для вашей безопасности и поддержки проекта скачивайте ТОЛЬКО из официального репозитория GitHub

---


**Key Features:**
- ✅ **100% Free** - No paywalls, no subscriptions
- ✅ **Open Source** - Full code available for review
- ✅ **Safe** - No malware, no telemetry, no hidden functions
- ✅ **Optimized** - Pure Lua using native game APIs
- ✅**Works on PC and Android** - cross-platform Lua scripts

**Основные особенности:**
- ✅ **Полностью бесплатно** — никаких платных доступов или подписок
- ✅ **Открытый исходный код** — весь код доступен для проверки
- ✅ **Безопасно** — без вредоносных программ, телеметрии и скрытых функций
- ✅ **Оптимизировано** — чистый код на языке Lua с использованием нативных игровых API
- ✅ **Работает на ПК и Android** — кроссплатформенные Lua-скрипты

---

## 🎮 INCLUDED MODS / ВКЛЮЧЁННЫЕ МОДЫ

### 1. 🧼 RGB Soap (scriptsoap.lua)
**Customizable neon soap with full color palette support**

Replaces the expensive (4200$), static-colored vanilla soap with a **free, fully customizable** alternative using the game's native `ColorPaletteManager` system.

**Features:**
- Price: **0$** (free in grocery shop)
- Full color customization via native color palette
- Stackable item
- Uses `ColorSlot` system for authentic integration

**Technical Details:**
```lua
itemprefab1.CanChangeColor = true
itemprefab1.ColorSlots = {ColorSlot.CreateInstance('Main color', ColorPaletteManager.GetColorPaletteByName('partpalette'))}

   ## 💬 Community & Support / Сообщество и поддержка
   🔗 **Discord Server:** [M.D.R.G Modding Lab: Making Science Project](https://discord.gg/tnz9ZwhC4h)
