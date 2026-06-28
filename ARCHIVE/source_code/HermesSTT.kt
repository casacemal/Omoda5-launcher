package com.omoda.lanc.stt

import com.omoda.lanc.network.HermesClient
import java.io.File

class HermesSTT(private val hermesClient: HermesClient) {
    suspend fun recognize(audioFile: File): String? {
        return hermesClient.sendAudio(audioFile)
    }
}
