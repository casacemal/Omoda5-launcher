package androidx.appcompat.widget;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
class ResourcesWrapper extends Resources {
    private final Resources mResources;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int r1) throws Resources.NotFoundException {
        return this.mResources.getText(r1);
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int r1, int r2) throws Resources.NotFoundException {
        return this.mResources.getQuantityText(r1, r2);
    }

    @Override // android.content.res.Resources
    public String getString(int r1) throws Resources.NotFoundException {
        return this.mResources.getString(r1);
    }

    @Override // android.content.res.Resources
    public String getString(int r1, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getString(r1, objArr);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int r1, int r2, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(r1, r2, objArr);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int r1, int r2) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(r1, r2);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int r1, CharSequence charSequence) {
        return this.mResources.getText(r1, charSequence);
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int r1) throws Resources.NotFoundException {
        return this.mResources.getTextArray(r1);
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int r1) throws Resources.NotFoundException {
        return this.mResources.getStringArray(r1);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int r1) throws Resources.NotFoundException {
        return this.mResources.getIntArray(r1);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int r1) throws Resources.NotFoundException {
        return this.mResources.obtainTypedArray(r1);
    }

    @Override // android.content.res.Resources
    public float getDimension(int r1) throws Resources.NotFoundException {
        return this.mResources.getDimension(r1);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int r1) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelOffset(r1);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int r1) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelSize(r1);
    }

    @Override // android.content.res.Resources
    public float getFraction(int r1, int r2, int r3) {
        return this.mResources.getFraction(r1, r2, r3);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int r1) throws Resources.NotFoundException {
        return this.mResources.getDrawable(r1);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int r1, Resources.Theme theme) throws Resources.NotFoundException {
        return this.mResources.getDrawable(r1, theme);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int r1, int r2) throws Resources.NotFoundException {
        return this.mResources.getDrawableForDensity(r1, r2);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawableForDensity(int r1, int r2, Resources.Theme theme) {
        return this.mResources.getDrawableForDensity(r1, r2, theme);
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int r1) throws Resources.NotFoundException {
        return this.mResources.getMovie(r1);
    }

    @Override // android.content.res.Resources
    public int getColor(int r1) throws Resources.NotFoundException {
        return this.mResources.getColor(r1);
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int r1) throws Resources.NotFoundException {
        return this.mResources.getColorStateList(r1);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int r1) throws Resources.NotFoundException {
        return this.mResources.getBoolean(r1);
    }

    @Override // android.content.res.Resources
    public int getInteger(int r1) throws Resources.NotFoundException {
        return this.mResources.getInteger(r1);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int r1) throws Resources.NotFoundException {
        return this.mResources.getLayout(r1);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int r1) throws Resources.NotFoundException {
        return this.mResources.getAnimation(r1);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int r1) throws Resources.NotFoundException {
        return this.mResources.getXml(r1);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int r1) throws Resources.NotFoundException {
        return this.mResources.openRawResource(r1);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int r1, TypedValue typedValue) throws Resources.NotFoundException {
        return this.mResources.openRawResource(r1, typedValue);
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int r1) throws Resources.NotFoundException {
        return this.mResources.openRawResourceFd(r1);
    }

    @Override // android.content.res.Resources
    public void getValue(int r1, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.mResources.getValue(r1, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValueForDensity(int r1, int r2, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.mResources.getValueForDensity(r1, r2, typedValue, z);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z) throws Resources.NotFoundException {
        this.mResources.getValue(str, typedValue, z);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] r2) {
        return this.mResources.obtainAttributes(attributeSet, r2);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.mResources;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public String getResourceName(int r1) throws Resources.NotFoundException {
        return this.mResources.getResourceName(r1);
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int r1) throws Resources.NotFoundException {
        return this.mResources.getResourcePackageName(r1);
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int r1) throws Resources.NotFoundException {
        return this.mResources.getResourceTypeName(r1);
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int r1) throws Resources.NotFoundException {
        return this.mResources.getResourceEntryName(r1);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }
}
