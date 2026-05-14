package com.omoda5.launcher.ui.activities

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.omoda5.launcher.R
import com.omoda5.launcher.ui.fragments.LeftPanelFragment
import com.omoda5.launcher.ui.fragments.RightPanelFragment
import com.omoda5.launcher.ui.fragments.StatusBarFragment
import com.omoda5.launcher.ui.fragments.BottomNavigationFragment

class OverlayLauncherActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_overlay_launcher)

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                .replace(R.id.statusBarContainer, StatusBarFragment())
                .replace(R.id.leftPanelContainer, LeftPanelFragment())
                .replace(R.id.rightPanelContainer, RightPanelFragment())
                .replace(R.id.bottomNavContainer, BottomNavigationFragment())
                .commit()
        }
    }
}