package androidx.constraintlayout.solver;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SolverVariable {
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 7;
    public static final int STRENGTH_BARRIER = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 6;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static int uniqueConstantId = 1;
    private static int uniqueErrorId = 1;
    private static int uniqueId = 1;
    private static int uniqueSlackId = 1;
    private static int uniqueUnrestrictedId = 1;
    public float computedValue;
    int definitionId;

    /* renamed from: id */
    public int f22id;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    Type mType;
    public int strength;
    float[] strengthVector;
    public int usageInRowCount;

    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    static void increaseErrorId() {
        uniqueErrorId++;
    }

    private static String getUniqueName(Type type, String str) {
        if (str != null) {
            return str + uniqueErrorId;
        }
        int r3 = C02021.$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[type.ordinal()];
        if (r3 == 1) {
            StringBuilder sb = new StringBuilder();
            sb.append("U");
            int r32 = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = r32;
            sb.append(r32);
            return sb.toString();
        }
        if (r3 == 2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("C");
            int r33 = uniqueConstantId + 1;
            uniqueConstantId = r33;
            sb2.append(r33);
            return sb2.toString();
        }
        if (r3 == 3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append(ExifInterface.LATITUDE_SOUTH);
            int r34 = uniqueSlackId + 1;
            uniqueSlackId = r34;
            sb3.append(r34);
            return sb3.toString();
        }
        if (r3 == 4) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append("e");
            int r35 = uniqueErrorId + 1;
            uniqueErrorId = r35;
            sb4.append(r35);
            return sb4.toString();
        }
        if (r3 == 5) {
            StringBuilder sb5 = new StringBuilder();
            sb5.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            int r36 = uniqueId + 1;
            uniqueId = r36;
            sb5.append(r36);
            return sb5.toString();
        }
        throw new AssertionError(type.name());
    }

    /* renamed from: androidx.constraintlayout.solver.SolverVariable$1 */
    static /* synthetic */ class C02021 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;

        static {
            int[] r0 = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type = r0;
            try {
                r0[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SolverVariable(String str, Type type) {
        this.f22id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mName = str;
        this.mType = type;
    }

    public SolverVariable(Type type, String str) {
        this.f22id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.strengthVector = new float[7];
        this.mClientEquations = new ArrayRow[8];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.mType = type;
    }

    void clearStrengths() {
        for (int r0 = 0; r0 < 7; r0++) {
            this.strengthVector[r0] = 0.0f;
        }
    }

    String strengthsToString() {
        String str = this + "[";
        boolean z = true;
        boolean z2 = false;
        for (int r3 = 0; r3 < this.strengthVector.length; r3++) {
            String str2 = str + this.strengthVector[r3];
            float[] fArr = this.strengthVector;
            if (fArr[r3] > 0.0f) {
                z2 = false;
            } else if (fArr[r3] < 0.0f) {
                z2 = true;
            }
            if (this.strengthVector[r3] != 0.0f) {
                z = false;
            }
            str = r3 < this.strengthVector.length - 1 ? str2 + ", " : str2 + "] ";
        }
        if (z2) {
            str = str + " (-)";
        }
        if (!z) {
            return str;
        }
        return str + " (*)";
    }

    public final void addToRow(ArrayRow arrayRow) {
        int r0 = 0;
        while (true) {
            int r1 = this.mClientEquationsCount;
            if (r0 < r1) {
                if (this.mClientEquations[r0] == arrayRow) {
                    return;
                } else {
                    r0++;
                }
            } else {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (r1 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int r12 = this.mClientEquationsCount;
                arrayRowArr2[r12] = arrayRow;
                this.mClientEquationsCount = r12 + 1;
                return;
            }
        }
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int r0 = this.mClientEquationsCount;
        for (int r2 = 0; r2 < r0; r2++) {
            if (this.mClientEquations[r2] == arrayRow) {
                for (int r1 = 0; r1 < (r0 - r2) - 1; r1++) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int r3 = r2 + r1;
                    arrayRowArr[r3] = arrayRowArr[r3 + 1];
                }
                this.mClientEquationsCount--;
                return;
            }
        }
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int r0 = this.mClientEquationsCount;
        for (int r2 = 0; r2 < r0; r2++) {
            this.mClientEquations[r2].variables.updateFromRow(this.mClientEquations[r2], arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.f22id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    public String toString() {
        return "" + this.mName;
    }
}
