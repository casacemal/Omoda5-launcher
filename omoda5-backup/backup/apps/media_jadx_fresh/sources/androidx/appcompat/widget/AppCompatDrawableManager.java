package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.appcompat.C0105R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;

/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    private static final boolean DEBUG = false;
    private static final PorterDuff.Mode DEFAULT_MODE = PorterDuff.Mode.SRC_IN;
    private static AppCompatDrawableManager INSTANCE = null;
    private static final String TAG = "AppCompatDrawableManag";
    private ResourceManagerInternal mResourceManager;

    public static synchronized void preload() {
        if (INSTANCE == null) {
            AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
            INSTANCE = appCompatDrawableManager;
            appCompatDrawableManager.mResourceManager = ResourceManagerInternal.get();
            INSTANCE.mResourceManager.setHooks(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1
                private final int[] COLORFILTER_TINT_COLOR_CONTROL_NORMAL = {C0105R.drawable.abc_textfield_search_default_mtrl_alpha, C0105R.drawable.abc_textfield_default_mtrl_alpha, C0105R.drawable.abc_ab_share_pack_mtrl_alpha};
                private final int[] TINT_COLOR_CONTROL_NORMAL = {C0105R.drawable.abc_ic_commit_search_api_mtrl_alpha, C0105R.drawable.abc_seekbar_tick_mark_material, C0105R.drawable.abc_ic_menu_share_mtrl_alpha, C0105R.drawable.abc_ic_menu_copy_mtrl_am_alpha, C0105R.drawable.abc_ic_menu_cut_mtrl_alpha, C0105R.drawable.abc_ic_menu_selectall_mtrl_alpha, C0105R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
                private final int[] COLORFILTER_COLOR_CONTROL_ACTIVATED = {C0105R.drawable.abc_textfield_activated_mtrl_alpha, C0105R.drawable.abc_textfield_search_activated_mtrl_alpha, C0105R.drawable.abc_cab_background_top_mtrl_alpha, C0105R.drawable.abc_text_cursor_material, C0105R.drawable.abc_text_select_handle_left_mtrl_dark, C0105R.drawable.abc_text_select_handle_middle_mtrl_dark, C0105R.drawable.abc_text_select_handle_right_mtrl_dark, C0105R.drawable.abc_text_select_handle_left_mtrl_light, C0105R.drawable.abc_text_select_handle_middle_mtrl_light, C0105R.drawable.abc_text_select_handle_right_mtrl_light};
                private final int[] COLORFILTER_COLOR_BACKGROUND_MULTIPLY = {C0105R.drawable.abc_popup_background_mtrl_mult, C0105R.drawable.abc_cab_background_internal_bg, C0105R.drawable.abc_menu_hardkey_panel_mtrl_mult};
                private final int[] TINT_COLOR_CONTROL_STATE_LIST = {C0105R.drawable.abc_tab_indicator_material, C0105R.drawable.abc_textfield_search_material};
                private final int[] TINT_CHECKABLE_BUTTON_LIST = {C0105R.drawable.abc_btn_check_material, C0105R.drawable.abc_btn_radio_material, C0105R.drawable.abc_btn_check_material_anim, C0105R.drawable.abc_btn_radio_material_anim};

                private ColorStateList createDefaultButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorButtonNormal));
                }

                private ColorStateList createBorderlessButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, 0);
                }

                private ColorStateList createColoredButtonColorStateList(Context context) {
                    return createButtonColorStateList(context, ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorAccent));
                }

                private ColorStateList createButtonColorStateList(Context context, int r6) {
                    int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlHighlight);
                    return new ColorStateList(new int[][]{ThemeUtils.DISABLED_STATE_SET, ThemeUtils.PRESSED_STATE_SET, ThemeUtils.FOCUSED_STATE_SET, ThemeUtils.EMPTY_STATE_SET}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, C0105R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, r6), ColorUtils.compositeColors(themeAttrColor, r6), r6});
                }

                private ColorStateList createSwitchThumbColorStateList(Context context) {
                    int[][] r0 = new int[3][];
                    int[] r6 = new int[3];
                    ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, C0105R.attr.colorSwitchThumbNormal);
                    if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
                        r0[0] = ThemeUtils.DISABLED_STATE_SET;
                        r6[0] = themeAttrColorStateList.getColorForState(r0[0], 0);
                        r0[1] = ThemeUtils.CHECKED_STATE_SET;
                        r6[1] = ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlActivated);
                        r0[2] = ThemeUtils.EMPTY_STATE_SET;
                        r6[2] = themeAttrColorStateList.getDefaultColor();
                    } else {
                        r0[0] = ThemeUtils.DISABLED_STATE_SET;
                        r6[0] = ThemeUtils.getDisabledThemeAttrColor(context, C0105R.attr.colorSwitchThumbNormal);
                        r0[1] = ThemeUtils.CHECKED_STATE_SET;
                        r6[1] = ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlActivated);
                        r0[2] = ThemeUtils.EMPTY_STATE_SET;
                        r6[2] = ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorSwitchThumbNormal);
                    }
                    return new ColorStateList(r0, r6);
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public Drawable createDrawableFor(ResourceManagerInternal resourceManagerInternal, Context context, int r5) {
                    if (r5 == C0105R.drawable.abc_cab_background_top_material) {
                        return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, C0105R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, C0105R.drawable.abc_cab_background_top_mtrl_alpha)});
                    }
                    return null;
                }

                private void setPorterDuffColorFilter(Drawable drawable, int r2, PorterDuff.Mode mode) {
                    if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                        drawable = drawable.mutate();
                    }
                    if (mode == null) {
                        mode = AppCompatDrawableManager.DEFAULT_MODE;
                    }
                    drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(r2, mode));
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public boolean tintDrawable(Context context, int r7, Drawable drawable) {
                    if (r7 == C0105R.drawable.abc_seekbar_track_material) {
                        LayerDrawable layerDrawable = (LayerDrawable) drawable;
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                        setPorterDuffColorFilter(layerDrawable.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                        return true;
                    }
                    if (r7 != C0105R.drawable.abc_ratingbar_material && r7 != C0105R.drawable.abc_ratingbar_indicator_material && r7 != C0105R.drawable.abc_ratingbar_small_material) {
                        return false;
                    }
                    LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.background), ThemeUtils.getDisabledThemeAttrColor(context, C0105R.attr.colorControlNormal), AppCompatDrawableManager.DEFAULT_MODE);
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                    setPorterDuffColorFilter(layerDrawable2.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0105R.attr.colorControlActivated), AppCompatDrawableManager.DEFAULT_MODE);
                    return true;
                }

                private boolean arrayContains(int[] r4, int r5) {
                    for (int r0 : r4) {
                        if (r0 == r5) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public ColorStateList getTintListForDrawableRes(Context context, int r3) {
                    if (r3 == C0105R.drawable.abc_edit_text_material) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_edittext);
                    }
                    if (r3 == C0105R.drawable.abc_switch_track_mtrl_alpha) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_switch_track);
                    }
                    if (r3 == C0105R.drawable.abc_switch_thumb_material) {
                        return createSwitchThumbColorStateList(context);
                    }
                    if (r3 == C0105R.drawable.abc_btn_default_mtrl_shape) {
                        return createDefaultButtonColorStateList(context);
                    }
                    if (r3 == C0105R.drawable.abc_btn_borderless_material) {
                        return createBorderlessButtonColorStateList(context);
                    }
                    if (r3 == C0105R.drawable.abc_btn_colored_material) {
                        return createColoredButtonColorStateList(context);
                    }
                    if (r3 == C0105R.drawable.abc_spinner_mtrl_am_alpha || r3 == C0105R.drawable.abc_spinner_textfield_background_material) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_spinner);
                    }
                    if (arrayContains(this.TINT_COLOR_CONTROL_NORMAL, r3)) {
                        return ThemeUtils.getThemeAttrColorStateList(context, C0105R.attr.colorControlNormal);
                    }
                    if (arrayContains(this.TINT_COLOR_CONTROL_STATE_LIST, r3)) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_default);
                    }
                    if (arrayContains(this.TINT_CHECKABLE_BUTTON_LIST, r3)) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_btn_checkable);
                    }
                    if (r3 == C0105R.drawable.abc_seekbar_thumb_material) {
                        return AppCompatResources.getColorStateList(context, C0105R.color.abc_tint_seek_thumb);
                    }
                    return null;
                }

                /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
                /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public boolean tintDrawableUsingColorFilter(android.content.Context r7, int r8, android.graphics.drawable.Drawable r9) {
                    /*
                        r6 = this;
                        android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.access$000()
                        int[] r1 = r6.COLORFILTER_TINT_COLOR_CONTROL_NORMAL
                        boolean r1 = r6.arrayContains(r1, r8)
                        r2 = 16842801(0x1010031, float:2.3693695E-38)
                        r3 = -1
                        r4 = 0
                        r5 = 1
                        if (r1 == 0) goto L17
                        int r2 = androidx.appcompat.C0105R.attr.colorControlNormal
                    L14:
                        r6 = r3
                    L15:
                        r8 = r5
                        goto L44
                    L17:
                        int[] r1 = r6.COLORFILTER_COLOR_CONTROL_ACTIVATED
                        boolean r1 = r6.arrayContains(r1, r8)
                        if (r1 == 0) goto L22
                        int r2 = androidx.appcompat.C0105R.attr.colorControlActivated
                        goto L14
                    L22:
                        int[] r1 = r6.COLORFILTER_COLOR_BACKGROUND_MULTIPLY
                        boolean r6 = r6.arrayContains(r1, r8)
                        if (r6 == 0) goto L2d
                        android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                        goto L14
                    L2d:
                        int r6 = androidx.appcompat.C0105R.drawable.abc_list_divider_mtrl_alpha
                        if (r8 != r6) goto L3c
                        r2 = 16842800(0x1010030, float:2.3693693E-38)
                        r6 = 1109603123(0x42233333, float:40.8)
                        int r6 = java.lang.Math.round(r6)
                        goto L15
                    L3c:
                        int r6 = androidx.appcompat.C0105R.drawable.abc_dialog_material_background
                        if (r8 != r6) goto L41
                        goto L14
                    L41:
                        r6 = r3
                        r8 = r4
                        r2 = r8
                    L44:
                        if (r8 == 0) goto L61
                        boolean r8 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r9)
                        if (r8 == 0) goto L50
                        android.graphics.drawable.Drawable r9 = r9.mutate()
                    L50:
                        int r7 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r2)
                        android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r7, r0)
                        r9.setColorFilter(r7)
                        if (r6 == r3) goto L60
                        r9.setAlpha(r6)
                    L60:
                        return r5
                    L61:
                        return r4
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C01551.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                }

                @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                public PorterDuff.Mode getTintModeForDrawableRes(int r1) {
                    if (r1 == C0105R.drawable.abc_switch_thumb_material) {
                        return PorterDuff.Mode.MULTIPLY;
                    }
                    return null;
                }
            });
        }
    }

    public static synchronized AppCompatDrawableManager get() {
        if (INSTANCE == null) {
            preload();
        }
        return INSTANCE;
    }

    public synchronized Drawable getDrawable(Context context, int r3) {
        return this.mResourceManager.getDrawable(context, r3);
    }

    synchronized Drawable getDrawable(Context context, int r3, boolean z) {
        return this.mResourceManager.getDrawable(context, r3, z);
    }

    public synchronized void onConfigurationChanged(Context context) {
        this.mResourceManager.onConfigurationChanged(context);
    }

    synchronized Drawable onDrawableLoadedFromResources(Context context, VectorEnabledTintResources vectorEnabledTintResources, int r4) {
        return this.mResourceManager.onDrawableLoadedFromResources(context, vectorEnabledTintResources, r4);
    }

    boolean tintDrawableUsingColorFilter(Context context, int r2, Drawable drawable) {
        return this.mResourceManager.tintDrawableUsingColorFilter(context, r2, drawable);
    }

    synchronized ColorStateList getTintList(Context context, int r3) {
        return this.mResourceManager.getTintList(context, r3);
    }

    static void tintDrawable(Drawable drawable, TintInfo tintInfo, int[] r2) {
        ResourceManagerInternal.tintDrawable(drawable, tintInfo, r2);
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int r1, PorterDuff.Mode mode) {
        return ResourceManagerInternal.getPorterDuffColorFilter(r1, mode);
    }
}
