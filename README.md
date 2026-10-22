# MDRG Hidden Variables Viewer

This mod displays hidden in-game statistics and adds fully customizable RGB "soap" for free.

**Player Statistics | Bot Statistics | Global World Progress**  
*(Статистика игрока | Статистика бота | Глобальный прогресс мира)*

---

## ⚠️ IMPORTANT LICENSING WARNING / ВАЖНОЕ ПРЕДУПРЕЖДЕНИЕ О ЛИЦЕНЗИИ ⚠️

This mod collection is and will **ALWAYS be 100% FREE and OPEN SOURCE**.  
I do not have a Patreon, Ko-fi, or any paid subscriptions.

Any version of this mod, or its source code, found behind a paywall, subscription service, or sold by third parties (including game developers or other content creators) is an **unauthorized redistribution** of this open-source project.

Please do not support unauthorized monetization of community work. For your safety and to support the project, download **ONLY** from this official GitHub repository.

---

*(Этот мод есть и всегда будет НАВСЕГДА БЕСПЛАТНЫМ и с ОТКРЫТЫМ ИСХОДНЫМ КОДОМ.  
У меня нет Patreon, Ko-fi или платных подписок.

Любая версия этого мода или его исходного кода, находящаяся за платным доступом, в сервисе по подписке или продаваемая третьими лицами (включая разработчиков игры или других создателей контента), является **несанкционированным распространением** этого Open Source проекта.

Пожалуйста, не поддерживайте несанкционированную монетизацию труда комьюнити. Для вашей безопасности и поддержки проекта скачивайте **ТОЛЬКО** из этого официального репозитория GitHub.)*

---
## 🎥 Video Demonstration / Видео-демонстрация

<div align="center">
  <a href="https://www.youtube.com/watch?v=AUVkv0ZHnxQ" target="_blank">
    <img src="https://img.youtube.com/vi/AUVkv0ZHnxQ/maxresdefault.jpg" alt="M.D.R.G Hidden Variables Viewer Video Preview" width="600">
  </a>
  <br>
  <sub>🎬 <a href="https://www.youtube.com/watch?v=AUVkv0ZHnxQ" target="_blank">Watch on YouTube / Смотреть на YouTube</a></sub>
</div>

## 📋 OVERVIEW / ОБЗОР

This repository contains a collection of **free, open-source Lua mods** for *My Dystopian Robot Girlfriend* that provide deep insights into game mechanics and enhanced customization options. All mods use the game's native `ModUtilities` API with **zero Harmony patches**, ensuring maximum compatibility and **0% FPS impact**.

**Key Features:**
- ✅ **100% Free** - No paywalls, no subscriptions
- ✅ **Open Source** - Full code available for review
- ✅ **Safe** - No malware, no telemetry, no hidden functions
- ✅ **Optimized** - Pure Lua using native game APIs
- ✅ **Cross-platform** - Works seamlessly on both PC and Android

---

## 🎮 INCLUDED MODS / ВКЛЮЧЁННЫЕ МОДЫ

### 1. 🧼 RGB Soap (`scriptsoap.lua`)
**Customizable neon soap with full color palette support**  
Replaces the expensive (4200$), static-colored vanilla soap with a **free, fully customizable** alternative using the game's native `ColorPaletteManager` system.
- **Price:** 0$ (free in grocery shop)
- **Features:** Full color customization, stackable item, authentic `ColorSlot` integration.
- **Technical Details:**
  ```lua
  itemprefab1.CanChangeColor = true
  itemprefab1.ColorSlots = {ColorSlot.CreateInstance('Main color', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
### 2. 📊 Player Statistics (scriptplayer.lua)
Comprehensive player diagnostic dashboard
Access hidden game variables including wallet status, police search level, vital stats, biological metrics, fishing contracts, and apartment rent status.
### 3. 🤖 Sex Bot Statistics (scriptbot.lua)
Robot girlfriend diagnostic and maintenance tracker
Deep dive into your bot's RAM logs, visual status (apparel, accessories), maintenance history, cooking stats, and detailed relationship/intimacy metrics.
### 4. 🌐 Global Game Statistics (gamestat.lua)
Universe database logs and event progression tracker
Monitor global game state, city riots status, streaming profits, Halloween event flags, church/Shanice storylines, and minigame scores (Chess, WordChain, OldMaid).
