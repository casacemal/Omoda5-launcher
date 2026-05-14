package com.google.android.material.switchmaterial;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.material.C1199R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;

/* loaded from: classes.dex */
public class SwitchMaterial extends SwitchCompat {
    private static final int DEF_STYLE_RES = C1199R.style.Widget_MaterialComponents_CompoundButton_Switch;
    private static final int[][] ENABLED_CHECKED_STATES = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};
    private final ElevationOverlayProvider elevationOverlayProvider;
    private ColorStateList materialThemeColorsThumbTintList;
    private ColorStateList materialThemeColorsTrackTintList;
    private boolean useMaterialThemeColors;

    public SwitchMaterial(Context context) {
        this(context, null);
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1199R.attr.switchStyle);
    }

    public SwitchMaterial(Context context, AttributeSet attributeSet, int r9) {
        super(ThemeEnforcement.createThemedContext(context, attributeSet, r9, DEF_STYLE_RES), attributeSet, r9);
        Context context2 = getContext();
        this.elevationOverlayProvider = new ElevationOverlayProvider(context2);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1199R.styleable.SwitchMaterial, r9, DEF_STYLE_RES, new int[0]);
        this.useMaterialThemeColors = typedArrayObtainStyledAttributes.getBoolean(C1199R.styleable.SwitchMaterial_useMaterialThemeColors, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.useMaterialThemeColors && getThumbTintList() == null) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
        }
        if (this.useMaterialThemeColors && getTrackTintList() == null) {
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.useMaterialThemeColors = z;
        if (z) {
            setThumbTintList(getMaterialThemeColorsThumbTintList());
            setTrackTintList(getMaterialThemeColorsTrackTintList());
        } else {
            setThumbTintList(null);
            setTrackTintList(null);
        }
    }

    public boolean isUseMaterialThemeColors() {
        return this.useMaterialThemeColors;
    }

    private ColorStateList getMaterialThemeColorsThumbTintList() throws Resources.NotFoundException {
        if (this.materialThemeColorsThumbTintList == null) {
            int color = MaterialColors.getColor(this, C1199R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, C1199R.attr.colorControlActivated);
            float dimension = getResources().getDimension(C1199R.dimen.mtrl_switch_thumb_elevation);
            if (this.elevationOverlayProvider.isThemeElevationOverlayEnabled()) {
                dimension += ViewUtils.getParentAbsoluteElevation(this);
            }
            int r2 = this.elevationOverlayProvider.compositeOverlayIfNeeded(color, dimension);
            int[] r3 = new int[ENABLED_CHECKED_STATES.length];
            r3[0] = MaterialColors.layer(color, color2, 1.0f);
            r3[1] = r2;
            r3[2] = MaterialColors.layer(color, color2, 0.38f);
            r3[3] = r2;
            this.materialThemeColorsThumbTintList = new ColorStateList(ENABLED_CHECKED_STATES, r3);
        }
        return this.materialThemeColorsThumbTintList;
    }

    private ColorStateList getMaterialThemeColorsTrackTintList() {
        if (this.materialThemeColorsTrackTintList == null) {
            int[] r0 = new int[ENABLED_CHECKED_STATES.length];
            int color = MaterialColors.getColor(this, C1199R.attr.colorSurface);
            int color2 = MaterialColors.getColor(this, C1199R.attr.colorControlActivated);
            int color3 = MaterialColors.getColor(this, C1199R.attr.colorOnSurface);
            r0[0] = MaterialColors.layer(color, color2, 0.54f);
            r0[1] = MaterialColors.layer(color, color3, 0.32f);
            r0[2] = MaterialColors.layer(color, color2, 0.12f);
            r0[3] = MaterialColors.layer(color, color3, 0.12f);
            this.materialThemeColorsTrackTintList = new ColorStateList(ENABLED_CHECKED_STATES, r0);
        }
        return this.materialThemeColorsTrackTintList;
    }
}
