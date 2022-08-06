local L = LibStub("AceLocale-3.0"):NewLocale("BuffEnough", "deDE")
if not L then return end

-- basics

L["BuffEnough"] = true
L["Buff Enough"] = true
L["buffenough"] = true
L["be"] = true

L["Yes"] = "Ja"
L["No"] = "Nein"
L["Warning"] = "Warnung"

-- config strings

L["config"] = "Konfiguration"
L["Toggle the configuration dialog"] = "Konfiguration ein-/ausblenden"

L["General"] = "Allgemein"
L["Enable While Solo"] = "Aktivieren wenn allein"
L["Enable BuffEnough while not in a party/raid"] = "Aktivieren wenn nicht in Gruppe/Schlachtzug"
L["Check In Combat"] = "Pr\195\188fe im Kampf"
L["Continue to do buff checks even while in combat"] = "\195\156berpr\195\188fen der Buffs im Kampf"
L["Warn"] = "Warnen"
L["Display shows warning color when you are buff enough but one or more buffs is about to expire"] = "Warnung anzeigen falls du voll gebufft bist und ein Buff kurz vor dem Auslaufen ist"
L["Warn Minimum Buff Time"] = "Mindestbuffdauer fuer Warnungspr\195\188fung"
L["The minimum buff duration in minutes before we check for expiration. Set to 0 for no minimum"] = "Minimale Zeitspanne bevor gepr\195\188ft wird, ob ein Buff ausl\195\164uft. Auf 0 stellen f\195\188r keine minimale Zeitspanne"
L["Warn Threshold"] = "Warnungsgrenzwert"
L["The number of minutes left on the buff before we warn"] = "Verbleibende Buffzeit in Minuten ab der gewarnt wird"
L["Fade"] = "Verblassen"
L["Fade frame after this many seconds of being buff enough. Set to 0 for no fading"] = "Zeitspanne in Sekunden, nach der das Fenster ausgeblendet wird, wenn du voll gebufft bist. Auf 0 stellen um Ausblenden zu deaktivieren."

L["Blessings"] = "Segen"
L["None"] = "Kein"
L["Override"] = "\195\156berschreiben"
L["Overrides the default paladin blessing priority and uses the priority you specify."] = "\195\156berschreibt die Standard-Segen-Priorisierung von Paladinen und nutzt deine eigene Priorisierung"
L["Blessing"] = "Segen"

L["Consumables"] = "Verbrauchbares"
L["Check Flask/Elixirs"] = "Pr\195\188fe Fl\195\164schchen/Elixiere"
L["Check whether or not you have either a flask or Guardian and Battle elixirs"] = "Pr\195\188fe, ob ein Fl\195\164schchen oder ein W\195\164chter- und ein Kampfelixier aktiv sind"
L["Check Food"] = "Pr\195\188fe Bufffood"
L["Check whether or not you have a food buff"] = "Pr\195\188fe, ob ein Satt-Buff auf dir aktiv ist"
L["Check Pet Food"] = "Pr\195\188fe Begleiter-Bufffood"
L["Check whether or not your pet has a food buff"] = "Pr\195\188fe, ob ein Satt-Buff auf deinem Begleiter aktiv ist"
L["Check Weapon"] = "Pr\195\188fe Waffe"
L["Check whether or not you have a temporary weapon enchant"] = "Pr\195\188fe, ob eine tempor\195\164re Waffenverzauberung aktiv ist"
L["Check Chest"] = "Pr\195\188fe Brust"
L["Check whether or not your chest has a Rune of Warding"] = "Pr\195\188fe, ob auf deiner Brust eine Rune des Schutzes aktiv ist"
L["Only Check In Raid"] = "Pr\195\188fe nur im Schlachtzug"
L["Only check consumable use when in a raid"] = "Pr\195\188fe Verbrauchbares nur wenn du Mitglied eines Schlachtzuges bist"

L["Custom"] = "Benutzerdefiniert"
L["Select the desired category and behavior from the dropdown menu and enter the name of a buff. You can use this to ignore an existing buff check or add a new one."] = "W\195\164hle die gew\195\188nschte Kategorie und Verhalten aus den Dropdown-Men\195\188s und gib den Namen des Buffs ein. Du kannst diese Funktion benutzen, um eine bestehende Buffpr\195\188fung zu ignorieren, oder eine neue anzulegen"
L["You must select an action and category from the dropdown menu to associate with this buff"] = "Du musst eine Aktion und Kategorie aus den Dropdown-Men\195\188s w\195\164hlen um diese mit diesem Buff zu verkn\195\188pfen"
L["You must enter a value for the buff name"] = "Du musst einen Wert f\195\188r den Buffnamen eingeben"
L["Buff"] = true
L["Action"] = "Aktion"
L["Category"] = "Kategorie"
L["Expected"] = "Erwartet"
L["Ignored"] = "Ignoriert"
L["Delete"] = "L\195\182schen"
L["Are you sure you want to delete this custom buff?"] = "Bist du sicher, dass du diesen benutzerdefinierten Buff l\195\182schen m\195\182chtest?"

L["Display"] = "Anzeige"
L["Show Display"] = "Fenster anzeigen"
L["Shows the display"] = "Zeigt das Fenster an"
L["Lock"] = "Sperren"
L["Lock the display"] = "Sperrt das Fenster"
L["Scale"] = "Skalierung"
L["Scale of the display"] = "Skalierung des Fensters"
L["Opacity"] = "Transparenz"
L["Opacity of the display"] = "Transparenz des Fensters"
L["Strata"] = "Anzeigeschicht"
L["Strata of the display"] = "Anzeigeschicht des Fensters"
L["Buff Color"] = "Gebufft Farbe"
L["Color to display when you are buff enough"] = "Anzeigefarbe wenn du voll gebufft bist"
L["Unbuff Color"] = "Ungebufft Farbe"
L["Color to display when you are not buff enough"] = "Anzeigefarbe wenn du nicht voll gebufft bist"
L["Warn Buff Color"] = "Warnungsfarbe"
L["Color to display when you are buffs are at a warning level"] = "Anzeigefarbe wenn vor einem ablaufenden Buff gewarnt wird"
L["Border Color"] = "Rahmenfarbe"
L["Color of the display border"] = "Farbe des Fensterrahmens"
L["Border Size"] = "Rahmengr\195\182\195\159e"
L["Thickness of the display border"] = "Dicke des Fensterrahmens"
L["Background Inset"] = "Hintergrund-Innenabstand"
L["How far inside the border to set the background of the display"] = "Abstand zwischen Rahmen und Hintergrund des Fensters"
L["Background Texture"] = "Hintergrundtextur"
L["The background texture of the display"] = "Die Hintergrundtextur des Fensters"
L["Border Texture"] = "Rahmentextur"
L["The border texture of the display"] = "Rahmentextur des Fensters"

L["Check Pet Buffs"] = "Pr\195\188fe Begleiter Buffs"
L["Check pet for the same raid buffs as the player"] = "Pr\195\188fe ob der Begleiter die gleichen Schlachtzugsbuffs hat wie der Spieler"

L["Profile: %s"] = "Profil: %s"

-- gear

L["HeadSlot"] = "Kopf"
L["NeckSlot"] = "Hals"
L["ShoulderSlot"] = "Schultern"
L["BackSlot"] = "R\195\188cken"
L["ChestSlot"] = "Brust"
L["WristSlot"] = "Handgelenke"
L["HandsSlot"] = "H\195\164nde"
L["WaistSlot"] = "G\195\188rtel"
L["LegsSlot"] = "Beine"
L["FeetSlot"] = "F\195\188\195\159e"
L["Finger0Slot"] = "Finger1"
L["Finger1Slot"] = "Finger2"
L["Trinket0Slot"] = "Trinket1"
L["Trinket1Slot"] = "Trinket2"
L["MainHandSlot"] = "Waffenhand"
L["SecondaryHandSlot"] = "Neben-/Schildhand"
L["RangedSlot"] = "Distanz"

L["Mainhand Buff"] = "Waffenhand Buff"
L["Offhand Buff"] = "Neben-/Schildhand Buff"
L["Rune of Warding"] = "Rune des Schutzes"

-- tooltip output

L["Buffs"] = true
L["Gear"] = "Ausr\195\188stung"
L["Pet"] = "Begleiter"

L["Missing"] = "Fehlend"
L["Broken"] = "Kaputt"
L["Unexpected"] = "Unerwartet"
L["Low"] = "Niedrig"
L["Unhappy"] = "Unzufrieden"

L["Aura"] = true

L["Hint"] = "\n\n|cffafa4ffHinweis:|r |cffffffffLinksklick zum Pr\195\188fen|r\n|cffafa4ffHinweis:|r |cffffffffRechtsklick zum Ausgeben fehlender Buffs|r\n|cffafa4ffHinweis:|r |cffffffffShift-Rechtsklick um fehlende Buffs zu fl\195\188stern|r"
L["No buffer known for "] = "Kein Buffer bekannt f\195\188r "
L["All buffs accounted for!"] = "Alle Buffs vorhanden!"
L["Currently disabled"] = "Aktuell deaktiviert"

-- buffs

L["Mage/Molten Armor"] = true
L["Fel/Demon Armor"] = "Teufels-/D\195\164monenr\195\188stung"
L["Aspect"] = "Aspekt"
L["Elemental Shield"] = "Elementarschild"
L["Flask/Elixirs"] = "Fl\195\164schchen/Elixiere"
L["Flask of"] = "Fl\195\164schchen"
L["of Shattrath"] = "von Shattrath"
L["Battle Elixir"] = "Kampfelixier"
L["Guardian Elixir"] = "W\195\164chterelixier"
