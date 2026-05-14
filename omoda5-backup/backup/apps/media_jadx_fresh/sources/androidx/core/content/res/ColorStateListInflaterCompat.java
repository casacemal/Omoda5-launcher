package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import android.util.Xml;
import androidx.core.C0211R;
import androidx.core.view.ViewCompat;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class ColorStateListInflaterCompat {
    private ColorStateListInflaterCompat() {
    }

    public static ColorStateList inflate(Resources resources, int r1, Resources.Theme theme) {
        try {
            return createFromXml(resources, resources.getXml(r1), theme);
        } catch (Exception e) {
            Log.e("CSLCompat", "Failed to inflate ColorStateList.", e);
            return null;
        }
    }

    public static ColorStateList createFromXml(Resources resources, XmlPullParser xmlPullParser, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, attributeSetAsAttributeSet, theme);
    }

    public static ColorStateList createFromXmlInner(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (!name.equals("selector")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
        }
        return inflate(resources, xmlPullParser, attributeSet, theme);
    }

    private static ColorStateList inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int r2 = 1;
        int depth2 = xmlPullParser.getDepth() + 1;
        int[][] r4 = new int[20][];
        int[] r3 = new int[20];
        int r6 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == r2 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayObtainAttributes = obtainAttributes(resources, theme, attributeSet, C0211R.styleable.ColorStateListItem);
                int color = typedArrayObtainAttributes.getColor(C0211R.styleable.ColorStateListItem_android_color, -65281);
                float f = 1.0f;
                if (typedArrayObtainAttributes.hasValue(C0211R.styleable.ColorStateListItem_android_alpha)) {
                    f = typedArrayObtainAttributes.getFloat(C0211R.styleable.ColorStateListItem_android_alpha, 1.0f);
                } else if (typedArrayObtainAttributes.hasValue(C0211R.styleable.ColorStateListItem_alpha)) {
                    f = typedArrayObtainAttributes.getFloat(C0211R.styleable.ColorStateListItem_alpha, 1.0f);
                }
                typedArrayObtainAttributes.recycle();
                int attributeCount = attributeSet.getAttributeCount();
                int[] r12 = new int[attributeCount];
                int r14 = 0;
                for (int r13 = 0; r13 < attributeCount; r13++) {
                    int attributeNameResource = attributeSet.getAttributeNameResource(r13);
                    if (attributeNameResource != 16843173 && attributeNameResource != 16843551 && attributeNameResource != C0211R.attr.alpha) {
                        int r22 = r14 + 1;
                        if (!attributeSet.getAttributeBooleanValue(r13, false)) {
                            attributeNameResource = -attributeNameResource;
                        }
                        r12[r14] = attributeNameResource;
                        r14 = r22;
                    }
                }
                int[] r23 = StateSet.trimStateSet(r12, r14);
                r3 = GrowingArrayUtils.append(r3, r6, modulateColorAlpha(color, f));
                r4 = (int[][]) GrowingArrayUtils.append(r4, r6, r23);
                r6++;
            }
            r2 = 1;
        }
        int[] r0 = new int[r6];
        int[][] r1 = new int[r6][];
        System.arraycopy(r3, 0, r0, 0, r6);
        System.arraycopy(r4, 0, r1, 0, r6);
        return new ColorStateList(r1, r0);
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] r3) {
        if (theme == null) {
            return resources.obtainAttributes(attributeSet, r3);
        }
        return theme.obtainStyledAttributes(attributeSet, r3, 0, 0);
    }

    private static int modulateColorAlpha(int r1, float f) {
        return (r1 & ViewCompat.MEASURED_SIZE_MASK) | (Math.round(Color.alpha(r1) * f) << 24);
    }
}
