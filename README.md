# Apocalyptic Land

**Apocalyptic Land** è il mio primo progetto realizzato con **Unreal Engine**.  
L'obiettivo di questo lavoro è rappresentare una scena post-apocalittica, curando l'atmosfera e l'interazione visiva in tre diverse **condizioni ambientali**:

- 🌤️ **Giornata soleggiata**
- 🌇 **Tramonto**
- 🌧️🌫️ **Pioggia e nebbia**

---

## Descrizione della scena

La scena è ambientata in un paesaggio urbano abbandonato, dove il giocatore osserva un **protagonista** al centro dello scenario, circondato da elementi distrutti e un’ambientazione carica di tensione.

Sono presenti **due zombie**:

- 🧟 **Zombie disinteressato**: intento a mangiare, ignora la presenza del protagonista.
- 🧟‍♂️ **Zombie aggressivo**: si avvicina lentamente al protagonista, creando una sensazione di pericolo imminente.


# Apocalyptic Land – Asset esterni (fuori da Git)

Alcuni file `.uasset` superano il limite di 100MB di GitHub, quindi sono stati caricati esternamente.

---

## 📥 Download asset mancanti

Scarica il file ZIP da qui:

🔗 **[HeavyAssets_Part1.zip](https://mega.nz/file/YVhwnDzT#6gDHcCcXi-7xKI6O24dB8ePk69JwF1DJM-zW6Y1EZsI)**  


---

## 🛠️ Estrazione automatica

1. Assicurati che i file seguenti siano nella stessa cartella del progetto `apocalyptic_land`:
   - `HeavyAssets_Part1.zip`
   - `estrai_assets.ps1`
   - `estrai_assets.bat`
   - `large_uasset_over_100MB.txt`

2. Esegui lo script:
   - **Doppio clic** su `estrai_assets.bat`  
     *(oppure apri PowerShell ed esegui `estrai_assets.ps1`)*

3. Lo script:
   - Estrae i file dal `.zip`
   - Ricrea le cartelle mancanti
   - Posiziona ogni file nella directory giusta

---

## 📂 Percorsi dei file estratti

I percorsi corretti sono elencati in `large_uasset_over_100MB.txt`  
(esempio: `Content\CommonHazel\Textures\...`)

---

✅ Al termine, il progetto Unreal sarà completo e pronto all'uso.

