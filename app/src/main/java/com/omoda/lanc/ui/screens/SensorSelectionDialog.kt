package com.omoda.lanc.ui.screens

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.omoda.lanc.core.SensorDictionary
import com.omoda.lanc.core.SensorPreferences

@Composable
fun SensorSelectionDialog(onDismiss: () -> Unit) {
    val activeSensors by SensorPreferences.activeSensors.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    
    val allSensors = SensorDictionary.ALL_SENSORS.toList().sortedWith(
        compareByDescending<Pair<String, String>> { activeSensors.contains(it.first) }.thenBy { it.second }
    )
    val filtered = allSensors.filter { 
        it.second.contains(searchQuery, ignoreCase = true) || 
        it.first.contains(searchQuery, ignoreCase = true) 
    }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("Sensörleri Yönet (${activeSensors.size} Aktif)") },
        text = {
            Column(modifier = Modifier.fillMaxSize()) {
                TextField(
                    value = searchQuery,
                    onValueChange = { searchQuery = it },
                    placeholder = { Text("Sensör Ara...") },
                    modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp)
                )
                
                LazyColumn(modifier = Modifier.weight(1f)) {
                    items(filtered) { (id, name) ->
                        val isSelected = activeSensors.contains(id)
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { SensorPreferences.toggleSensor(id, !isSelected) }
                                .padding(vertical = 4.dp)
                        ) {
                            Checkbox(
                                checked = isSelected,
                                onCheckedChange = { SensorPreferences.toggleSensor(id, it) }
                            )
                            Spacer(modifier = Modifier.width(8.dp))
                            Column {
                                Text(name, style = MaterialTheme.typography.bodyMedium)
                                Text(id, style = MaterialTheme.typography.labelSmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
                            }
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(onClick = onDismiss) { Text("Tamam") }
        }
    )
}
