package net.sourceforge.pinyin4j;

import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

/* loaded from: classes.dex */
public class PinyinHelper {
    private PinyinHelper() {
    }

    private static String[] convertToGwoyeuRomatzyhStringArray(char c) {
        String[] unformattedHanyuPinyinStringArray = getUnformattedHanyuPinyinStringArray(c);
        if (unformattedHanyuPinyinStringArray == null) {
            return null;
        }
        String[] strArr = new String[unformattedHanyuPinyinStringArray.length];
        for (int r1 = 0; r1 < unformattedHanyuPinyinStringArray.length; r1++) {
            strArr[r1] = GwoyeuRomatzyhTranslator.convertHanyuPinyinToGwoyeuRomatzyh(unformattedHanyuPinyinStringArray[r1]);
        }
        return strArr;
    }

    private static String[] convertToTargetPinyinStringArray(char c, PinyinRomanizationType pinyinRomanizationType) {
        String[] unformattedHanyuPinyinStringArray = getUnformattedHanyuPinyinStringArray(c);
        if (unformattedHanyuPinyinStringArray == null) {
            return null;
        }
        String[] strArr = new String[unformattedHanyuPinyinStringArray.length];
        for (int r1 = 0; r1 < unformattedHanyuPinyinStringArray.length; r1++) {
            strArr[r1] = PinyinRomanizationTranslator.convertRomanizationSystem(unformattedHanyuPinyinStringArray[r1], PinyinRomanizationType.HANYU_PINYIN, pinyinRomanizationType);
        }
        return strArr;
    }

    private static String getFirstHanyuPinyinString(char c, HanyuPinyinOutputFormat hanyuPinyinOutputFormat) throws BadHanyuPinyinOutputFormatCombination {
        String[] formattedHanyuPinyinStringArray = getFormattedHanyuPinyinStringArray(c, hanyuPinyinOutputFormat);
        if (formattedHanyuPinyinStringArray == null || formattedHanyuPinyinStringArray.length <= 0) {
            return null;
        }
        return formattedHanyuPinyinStringArray[0];
    }

    private static String[] getFormattedHanyuPinyinStringArray(char c, HanyuPinyinOutputFormat hanyuPinyinOutputFormat) throws BadHanyuPinyinOutputFormatCombination {
        String[] unformattedHanyuPinyinStringArray = getUnformattedHanyuPinyinStringArray(c);
        if (unformattedHanyuPinyinStringArray == null) {
            return null;
        }
        for (int r0 = 0; r0 < unformattedHanyuPinyinStringArray.length; r0++) {
            unformattedHanyuPinyinStringArray[r0] = PinyinFormatter.formatHanyuPinyin(unformattedHanyuPinyinStringArray[r0], hanyuPinyinOutputFormat);
        }
        return unformattedHanyuPinyinStringArray;
    }

    private static String[] getUnformattedHanyuPinyinStringArray(char c) {
        return ChineseToPinyinResource.getInstance().getHanyuPinyinStringArray(c);
    }

    public static String[] toGwoyeuRomatzyhStringArray(char c) {
        return convertToGwoyeuRomatzyhStringArray(c);
    }

    public static String toHanyuPinyinString(String str, HanyuPinyinOutputFormat hanyuPinyinOutputFormat, String str2) throws BadHanyuPinyinOutputFormatCombination {
        StringBuffer stringBuffer = new StringBuffer();
        for (int r1 = 0; r1 < str.length(); r1++) {
            String firstHanyuPinyinString = getFirstHanyuPinyinString(str.charAt(r1), hanyuPinyinOutputFormat);
            if (firstHanyuPinyinString != null) {
                stringBuffer.append(firstHanyuPinyinString);
                if (r1 != str.length() - 1) {
                    stringBuffer.append(str2);
                }
            } else {
                stringBuffer.append(str.charAt(r1));
            }
        }
        return stringBuffer.toString();
    }

    public static String[] toHanyuPinyinStringArray(char c) {
        return getUnformattedHanyuPinyinStringArray(c);
    }

    public static String[] toHanyuPinyinStringArray(char c, HanyuPinyinOutputFormat hanyuPinyinOutputFormat) throws BadHanyuPinyinOutputFormatCombination {
        return getFormattedHanyuPinyinStringArray(c, hanyuPinyinOutputFormat);
    }

    public static String[] toMPS2PinyinStringArray(char c) {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.MPS2_PINYIN);
    }

    public static String[] toTongyongPinyinStringArray(char c) {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.TONGYONG_PINYIN);
    }

    public static String[] toWadeGilesPinyinStringArray(char c) {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.WADEGILES_PINYIN);
    }

    public static String[] toYalePinyinStringArray(char c) {
        return convertToTargetPinyinStringArray(c, PinyinRomanizationType.YALE_PINYIN);
    }
}
