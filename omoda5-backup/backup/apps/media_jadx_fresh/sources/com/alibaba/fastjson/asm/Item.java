package com.alibaba.fastjson.asm;

import androidx.appcompat.widget.ActivityChooserView;

/* loaded from: classes.dex */
final class Item {
    int hashCode;
    int index;
    int intVal;
    long longVal;
    Item next;
    String strVal1;
    String strVal2;
    String strVal3;
    int type;

    Item() {
    }

    Item(int r3, Item item) {
        this.index = r3;
        this.type = item.type;
        this.intVal = item.intVal;
        this.longVal = item.longVal;
        this.strVal1 = item.strVal1;
        this.strVal2 = item.strVal2;
        this.strVal3 = item.strVal3;
        this.hashCode = item.hashCode;
    }

    void set(int r3, String str, String str2, String str3) {
        this.type = r3;
        this.strVal1 = str;
        this.strVal2 = str2;
        this.strVal3 = str3;
        if (r3 != 1 && r3 != 7 && r3 != 8) {
            if (r3 == 12) {
                this.hashCode = (r3 + (str.hashCode() * str2.hashCode())) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return;
            } else if (r3 != 13) {
                this.hashCode = (r3 + (str.hashCode() * str2.hashCode() * str3.hashCode())) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                return;
            }
        }
        this.hashCode = (r3 + str.hashCode()) & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    void set(int r2) {
        this.type = 3;
        this.intVal = r2;
        this.hashCode = Integer.MAX_VALUE & (3 + r2);
    }

    boolean isEqualTo(Item item) {
        int r0 = this.type;
        if (r0 != 1) {
            if (r0 != 15) {
                if (r0 == 12) {
                    return item.strVal1.equals(this.strVal1) && item.strVal2.equals(this.strVal2);
                }
                if (r0 != 13) {
                    switch (r0) {
                        case 3:
                        case 4:
                            if (item.intVal != this.intVal) {
                                break;
                            }
                            break;
                        case 5:
                        case 6:
                            break;
                        case 7:
                        case 8:
                            break;
                        default:
                            if (!item.strVal1.equals(this.strVal1) || !item.strVal2.equals(this.strVal2) || !item.strVal3.equals(this.strVal3)) {
                                break;
                            }
                            break;
                    }
                    return false;
                }
            }
            return item.longVal == this.longVal;
        }
        return item.strVal1.equals(this.strVal1);
    }
}
