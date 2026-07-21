package com.omoda.lanc.core

import android.content.Context
import android.util.Log
import org.json.JSONObject
import java.io.InputStreamReader

class HassilParser(private val context: Context) {
    private val TAG = "Hermes-Hassil"
    private val intentsMap = mutableMapOf<String, List<String>>()

    init {
        loadIntents()
    }

    private fun loadIntents() {
        try {
            // L-5: InputStream use{} blogu ile kapan\u0131r \u2014 kaynak s\u0131z\u0131nt\u0131s\u0131 \u00f6nlenir
            val jsonString = context.assets.open("sentences/tr/intents.json").use { inputStream ->
                InputStreamReader(inputStream).readText()
            }
            val rootObj = JSONObject(jsonString)
            val intentsObj = rootObj.getJSONObject("intents")

            for (intentName in intentsObj.keys()) {
                val intentData = intentsObj.getJSONObject(intentName)
                val dataArray = intentData.getJSONArray("data")
                val sentencesList = mutableListOf<String>()

                for (i in 0 until dataArray.length()) {
                    val dataObj = dataArray.getJSONObject(i)
                    val sentencesArray = dataObj.getJSONArray("sentences")
                    for (j in 0 until sentencesArray.length()) {
                        sentencesList.add(sentencesArray.getString(j).lowercase())
                    }
                }
                intentsMap[intentName] = sentencesList
            }
            Log.i(TAG, "Hassil Intents Yüklendi. Toplam niyet: ${intentsMap.size}")
        } catch (e: Exception) {
            Log.e(TAG, "Hassil Intents Yüklenemedi: ${e.message}")
        }
    }

    /**
     * STT metnini Hassil formatına göre eşleştirip niyet ismini döner.
     * Eşleşme yoksa null döner.
     */
    fun parseIntent(text: String): String? {
        val normalizedText = text.lowercase().trim().replace(Regex("[^a-zçğıöşü\\s]"), "")
        
        // Önce tam eşleşme arıyoruz
        for ((intentName, sentences) in intentsMap) {
            if (sentences.contains(normalizedText)) {
                Log.d(TAG, "Hassil Tam Eşleşme: \$intentName")
                return intentName
            }
        }
        
        // Kelime içeren esnek eşleşme (Opsiyonel)
        for ((intentName, sentences) in intentsMap) {
            for (sentence in sentences) {
                if (normalizedText.contains(sentence)) {
                    Log.d(TAG, "Hassil Kısmi Eşleşme: \$intentName")
                    return intentName
                }
            }
        }
        
        Log.d(TAG, "Hassil Eşleşme Bulunamadı: \$text")
        return null
    }
}
