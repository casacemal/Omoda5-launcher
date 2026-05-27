package com.omoda5.launcher.ui.adapters

import android.view.LayoutInflater
import android.view.MotionEvent
import android.view.View
import android.view.ViewGroup
import android.widget.GridLayout
import android.widget.ImageView
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.recyclerview.widget.RecyclerView
import com.omoda5.launcher.R
import com.omoda5.launcher.model.LauncherItem

/**
 * ViewPager2 için her sayfayı bir GridLayout olarak gösteren adapter.
 * Performans için görünüm havuzu (view pooling) mantığıyla optimize edilmiştir.
 */
class LauncherAdapter(
    private val pages: List<List<LauncherItem>>,
    private val onItemClick: (LauncherItem) -> Unit,
    private val onItemLongClick: (LauncherItem) -> Unit,
    private val getBadgeForItem: (LauncherItem) -> String? = { null }
) : RecyclerView.Adapter<LauncherAdapter.PageViewHolder>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): PageViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_page_grid, parent, false)
        return PageViewHolder(view, onItemClick, onItemLongClick, getBadgeForItem)
    }

    override fun onBindViewHolder(holder: PageViewHolder, position: Int) {
        holder.bind(pages[position])
    }

    override fun getItemCount(): Int = pages.size

    class PageViewHolder(
        itemView: View,
        private val onItemClick: (LauncherItem) -> Unit,
        private val onItemLongClick: (LauncherItem) -> Unit,
        private val getBadgeForItem: (LauncherItem) -> String?
    ) : RecyclerView.ViewHolder(itemView) {

        private val gridLayout: GridLayout = itemView.findViewById(R.id.pageGrid)
        private val inflater = LayoutInflater.from(itemView.context)
        
        // Önceden oluşturulmuş icon view havuzu (Max 10 öğe)
        private val iconViews = mutableListOf<View>()

        init {
            // İlk oluşturulmada 10 adet boş icon view ekle
            for (i in 0 until 10) {
                val iconView = inflater.inflate(R.layout.item_launcher_icon, gridLayout, false)
                iconView.visibility = View.GONE
                gridLayout.addView(iconView)
                iconViews.add(iconView)
            }
        }

        fun bind(items: List<LauncherItem>) {
            // Sadece gerektiği kadarını görünür yap ve güncelle
            for (i in 0 until 10) {
                val iconView = iconViews[i]
                if (i < items.size) {
                    val item = items[i]
                    iconView.visibility = View.VISIBLE
                    updateIconView(iconView, item)
                } else {
                    iconView.visibility = View.GONE
                }
            }
        }

        private fun updateIconView(iconView: View, item: LauncherItem) {
            val imageView = iconView.findViewById<ImageView>(R.id.iconImage)
            val titleView = iconView.findViewById<TextView>(R.id.iconTitle)
            val badgeView = iconView.findViewById<TextView>(R.id.badge)

            when {
                item.iconDrawable != null -> imageView.setImageDrawable(item.iconDrawable)
                item.iconResId != 0       -> imageView.setImageResource(item.iconResId)
                else                      -> imageView.setImageResource(android.R.drawable.sym_def_app_icon)
            }

            titleView.text = if (item.isFavorite) "★ ${item.title}" else item.title

            val badge = getBadgeForItem(item)
            if (badge != null) {
                badgeView.text = badge.toString()
                badgeView.visibility = View.VISIBLE
            } else {
                badgeView.visibility = View.GONE
            }

            // Stil ve Tıklama ayarları
            iconView.alpha = if (item.isDisabled) 0.45f else 1.0f
            titleView.setTextColor(
                ContextCompat.getColor(iconView.context,
                    if (item.isDisabled) android.R.color.darker_gray else R.color.icon_title_text)
            )

            val longPressHandler = iconView.handler ?: android.os.Handler(android.os.Looper.getMainLooper())
            var longPressTriggered = false
            val longPressRunnable = Runnable {
                if (!item.isDisabled) {
                    longPressTriggered = true
                    onItemLongClick(item)
                }
            }
            
            iconView.setOnTouchListener { v, event ->
                when (event.actionMasked) {
                    MotionEvent.ACTION_DOWN -> {
                        longPressTriggered = false
                        v.isPressed = true
                        longPressHandler.postDelayed(longPressRunnable, 1000L) // Kullanıcının isteği üzerine 1 saniye
                        true
                    }
                    MotionEvent.ACTION_UP -> {
                        v.isPressed = false
                        longPressHandler.removeCallbacks(longPressRunnable)
                        if (!item.isDisabled && !longPressTriggered) {
                            v.performClick()
                            onItemClick(item)
                        }
                        true
                    }
                    MotionEvent.ACTION_CANCEL -> {
                        v.isPressed = false
                        longPressHandler.removeCallbacks(longPressRunnable)
                        true
                    }
                    else -> false
                }
            }
        }
    }
}
