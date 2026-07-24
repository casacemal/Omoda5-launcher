package com.omoda.aaos

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.omoda.aaos.theme.AaosSurface
import com.omoda.aaos.theme.OmodaAAOSTheme
import com.omoda.aaos.ui.OmodaAaosApp

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            OmodaAAOSTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = AaosSurface
                ) {
                    OmodaAaosApp()
                }
            }
        }
    }
}
