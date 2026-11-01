# MDRG Hidden Variables Viewer

This mod displays hidden in-game statistics and adds fully customizable RGB "soap" for free.  
Этот мод отображает скрытую внутриигровую статистику и добавляет полностью настраиваемое RGB-мыло бесплатно.

**Player Statistics | Bot Statistics | Global World Progress**  
*(Статистика игрока | Статистика бота | Глобальный прогресс мира)*

---

## ⚠️ IMPORTANT LICENSING WARNING / ВАЖНОЕ ПРЕДУПРЕЖДЕНИЕ О ЛИЦЕНЗИИ ⚠️

This mod collection is and will **ALWAYS be 100% FREE and OPEN SOURCE**.  
I do not have a Patreon, Ko-fi, or any paid subscriptions.  
Any version of this mod, or its source code, found behind a paywall, subscription service, or sold by third parties (including game developers or other content creators) is an **unauthorized redistribution** of this open-source project.  
Please do not support unauthorized monetization of community work. For your safety and to support the project, download **ONLY** from this official GitHub repository.

---

Эта коллекция модов является и всегда будет **НАВСЕГДА БЕСПЛАТНОЙ** и с **ОТКРЫТЫМ ИСХОДНЫМ КОДОМ**.  
У меня нет Patreon, Ko-fi или платных подписок.  
Любая версия этого мода или его исходного кода, находящаяся за платным доступом, в сервисе по подписке или продаваемая третьими лицами (включая разработчиков игры или других создателей контента), является **несанкционированным распространением** этого Open Source проекта.  
Пожалуйста, не поддерживайте несанкционированную монетизацию труда комьюнити. Для вашей безопасности и поддержки проекта скачивайте моды **ТОЛЬКО** из этого официального репозитория GitHub.

---

## 🎥 Video Demonstration / Видео-демонстрация

<div align="center">
  <a href="https://www.youtube.com/watch?v=AUVkv0ZHnxQ" target="_blank">
    <img src="https://img.youtube.com/vi/AUVkv0ZHnxQ/maxresdefault.jpg" alt="M.D.R.G Hidden Variables Viewer Video Preview" width="600">
  </a>
  <br>
  <sub>🎬 <a href="https://www.youtube.com/watch?v=AUVkv0ZHnxQ" target="_blank">Watch on YouTube / Смотреть на YouTube</a></sub>
</div>

<br>

## 📋 OVERVIEW / ОБЗОР

This repository contains a collection of **free, open-source Lua mods** for *My Dystopian Robot Girlfriend* that provide deep insights into game mechanics and enhanced customization options. All mods use the game's native `ModUtilities` API with **zero Harmony patches**, ensuring maximum compatibility and **0% FPS impact**.

Этот репозиторий содержит коллекцию **бесплатных Lua-модов с открытым исходным кодом** для *My Dystopian Robot Girlfriend*, которые обеспечивают глубокое понимание игровых механик и расширенные возможности кастомизации. Все моды используют нативный API игры `ModUtilities` с **нулевым использованием Harmony-патчей**, что гарантирует максимальную совместимость и **0% влияния на FPS**.

### Key Features / Ключевые особенности:
- ✅ **100% Free / 100% Бесплатно** — No paywalls, no subscriptions / Никаких платных доступов или подписок.
- ✅ **Open Source / Открытый код** — Full code available for review / Полный код доступен для проверки.
- ✅ **Safe / Безопасно** — No malware, no telemetry, no hidden functions / Никакого вредоносного ПО, телеметрии или скрытых функций.
- ✅ **Optimized / Оптимизировано** — Pure Lua using native game APIs / Чистый Lua с использованием нативных API игры.
- ✅ **Cross-platform / Кроссплатформенно** — Works seamlessly on both PC and Android / Бесперебойно работает как на ПК, так и на Android.

---

## 🎮 INCLUDED MOD / ВКЛЮЧЁННЫй МОД

### 🧼 RGB Soap (`scriptsoap.lua`)
**Customizable neon soap with full color palette support**  
Replaces the expensive (4200$), static-colored vanilla soap with a **free, fully customizable** alternative using the game's native `ColorPaletteManager` system.
- **Price:** 0$ (free in grocery shop)
- **Features:** Full color customization, stackable item, authentic `ColorSlot` integration.

**Настраиваемое неоновое мыло с поддержкой полной цветовой палитры**  
Заменяет дорогое (4200$) ванильное мыло статического цвета на **бесплатную, полностью настраиваемую** альтернативу с использованием нативной системы `ColorPaletteManager` игры.
- **Цена:** 0$ (бесплатно в продуктовом магазине)
- **Особенности:** Полная настройка цвета, стакаемый предмет, аутентичная интеграция `ColorSlot`.

**Technical Details / Технические детали:**
```lua
itemprefab1.CanChangeColor = true
itemprefab1.ColorSlots = {ColorSlot.CreateInstance('Main color', ColorPaletteManager.GetColorPaletteByName('partpalette'))}
