package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ArrayLinkedVariables {
    private static final boolean DEBUG = false;
    private static final boolean FULL_NEW_CHECK = false;
    private static final int NONE = -1;
    private final Cache mCache;
    private final ArrayRow mRow;
    int currentSize = 0;
    private int ROW_SIZE = 8;
    private SolverVariable candidate = null;
    private int[] mArrayIndices = new int[8];
    private int[] mArrayNextIndices = new int[8];
    private float[] mArrayValues = new float[8];
    private int mHead = -1;
    private int mLast = -1;
    private boolean mDidFillOnce = false;

    ArrayLinkedVariables(ArrayRow arrayRow, Cache cache) {
        this.mRow = arrayRow;
        this.mCache = cache;
    }

    public final void put(SolverVariable solverVariable, float f) {
        if (f == 0.0f) {
            remove(solverVariable, true);
            return;
        }
        int r0 = this.mHead;
        if (r0 == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f;
            this.mArrayIndices[0] = solverVariable.f22id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int r9 = this.mLast + 1;
            this.mLast = r9;
            int[] r10 = this.mArrayIndices;
            if (r9 >= r10.length) {
                this.mDidFillOnce = true;
                this.mLast = r10.length - 1;
                return;
            }
            return;
        }
        int r5 = -1;
        for (int r4 = 0; r0 != -1 && r4 < this.currentSize; r4++) {
            if (this.mArrayIndices[r0] == solverVariable.f22id) {
                this.mArrayValues[r0] = f;
                return;
            }
            if (this.mArrayIndices[r0] < solverVariable.f22id) {
                r5 = r0;
            }
            r0 = this.mArrayNextIndices[r0];
        }
        int length = this.mLast;
        int r42 = length + 1;
        if (this.mDidFillOnce) {
            int[] r43 = this.mArrayIndices;
            if (r43[length] != -1) {
                length = r43.length;
            }
        } else {
            length = r42;
        }
        int[] r44 = this.mArrayIndices;
        if (length >= r44.length && this.currentSize < r44.length) {
            int r45 = 0;
            while (true) {
                int[] r6 = this.mArrayIndices;
                if (r45 >= r6.length) {
                    break;
                }
                if (r6[r45] == -1) {
                    length = r45;
                    break;
                }
                r45++;
            }
        }
        int[] r46 = this.mArrayIndices;
        if (length >= r46.length) {
            length = r46.length;
            int r47 = this.ROW_SIZE * 2;
            this.ROW_SIZE = r47;
            this.mDidFillOnce = false;
            this.mLast = length - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, r47);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[length] = solverVariable.f22id;
        this.mArrayValues[length] = f;
        if (r5 != -1) {
            int[] r102 = this.mArrayNextIndices;
            r102[length] = r102[r5];
            r102[r5] = length;
        } else {
            this.mArrayNextIndices[length] = this.mHead;
            this.mHead = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        this.currentSize++;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        if (this.currentSize >= this.mArrayIndices.length) {
            this.mDidFillOnce = true;
        }
        int r92 = this.mLast;
        int[] r103 = this.mArrayIndices;
        if (r92 >= r103.length) {
            this.mDidFillOnce = true;
            this.mLast = r103.length - 1;
        }
    }

    final void add(SolverVariable solverVariable, float f, boolean z) {
        if (f == 0.0f) {
            return;
        }
        int r1 = this.mHead;
        if (r1 == -1) {
            this.mHead = 0;
            this.mArrayValues[0] = f;
            this.mArrayIndices[0] = solverVariable.f22id;
            this.mArrayNextIndices[this.mHead] = -1;
            solverVariable.usageInRowCount++;
            solverVariable.addToRow(this.mRow);
            this.currentSize++;
            if (this.mDidFillOnce) {
                return;
            }
            int r10 = this.mLast + 1;
            this.mLast = r10;
            int[] r11 = this.mArrayIndices;
            if (r10 >= r11.length) {
                this.mDidFillOnce = true;
                this.mLast = r11.length - 1;
                return;
            }
            return;
        }
        int r6 = -1;
        for (int r5 = 0; r1 != -1 && r5 < this.currentSize; r5++) {
            if (this.mArrayIndices[r1] == solverVariable.f22id) {
                float[] fArr = this.mArrayValues;
                fArr[r1] = fArr[r1] + f;
                if (fArr[r1] == 0.0f) {
                    if (r1 == this.mHead) {
                        this.mHead = this.mArrayNextIndices[r1];
                    } else {
                        int[] r112 = this.mArrayNextIndices;
                        r112[r6] = r112[r1];
                    }
                    if (z) {
                        solverVariable.removeFromRow(this.mRow);
                    }
                    if (this.mDidFillOnce) {
                        this.mLast = r1;
                    }
                    solverVariable.usageInRowCount--;
                    this.currentSize--;
                    return;
                }
                return;
            }
            if (this.mArrayIndices[r1] < solverVariable.f22id) {
                r6 = r1;
            }
            r1 = this.mArrayNextIndices[r1];
        }
        int length = this.mLast;
        int r0 = length + 1;
        if (this.mDidFillOnce) {
            int[] r02 = this.mArrayIndices;
            if (r02[length] != -1) {
                length = r02.length;
            }
        } else {
            length = r0;
        }
        int[] r03 = this.mArrayIndices;
        if (length >= r03.length && this.currentSize < r03.length) {
            int r04 = 0;
            while (true) {
                int[] r12 = this.mArrayIndices;
                if (r04 >= r12.length) {
                    break;
                }
                if (r12[r04] == -1) {
                    length = r04;
                    break;
                }
                r04++;
            }
        }
        int[] r05 = this.mArrayIndices;
        if (length >= r05.length) {
            length = r05.length;
            int r06 = this.ROW_SIZE * 2;
            this.ROW_SIZE = r06;
            this.mDidFillOnce = false;
            this.mLast = length - 1;
            this.mArrayValues = Arrays.copyOf(this.mArrayValues, r06);
            this.mArrayIndices = Arrays.copyOf(this.mArrayIndices, this.ROW_SIZE);
            this.mArrayNextIndices = Arrays.copyOf(this.mArrayNextIndices, this.ROW_SIZE);
        }
        this.mArrayIndices[length] = solverVariable.f22id;
        this.mArrayValues[length] = f;
        if (r6 != -1) {
            int[] r113 = this.mArrayNextIndices;
            r113[length] = r113[r6];
            r113[r6] = length;
        } else {
            this.mArrayNextIndices[length] = this.mHead;
            this.mHead = length;
        }
        solverVariable.usageInRowCount++;
        solverVariable.addToRow(this.mRow);
        this.currentSize++;
        if (!this.mDidFillOnce) {
            this.mLast++;
        }
        int r102 = this.mLast;
        int[] r114 = this.mArrayIndices;
        if (r102 >= r114.length) {
            this.mDidFillOnce = true;
            this.mLast = r114.length - 1;
        }
    }

    public final float remove(SolverVariable solverVariable, boolean z) {
        if (this.candidate == solverVariable) {
            this.candidate = null;
        }
        int r0 = this.mHead;
        if (r0 == -1) {
            return 0.0f;
        }
        int r3 = 0;
        int r4 = -1;
        while (r0 != -1 && r3 < this.currentSize) {
            if (this.mArrayIndices[r0] == solverVariable.f22id) {
                if (r0 == this.mHead) {
                    this.mHead = this.mArrayNextIndices[r0];
                } else {
                    int[] r1 = this.mArrayNextIndices;
                    r1[r4] = r1[r0];
                }
                if (z) {
                    solverVariable.removeFromRow(this.mRow);
                }
                solverVariable.usageInRowCount--;
                this.currentSize--;
                this.mArrayIndices[r0] = -1;
                if (this.mDidFillOnce) {
                    this.mLast = r0;
                }
                return this.mArrayValues[r0];
            }
            r3++;
            r4 = r0;
            r0 = this.mArrayNextIndices[r0];
        }
        return 0.0f;
    }

    public final void clear() {
        int r0 = this.mHead;
        for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
            if (solverVariable != null) {
                solverVariable.removeFromRow(this.mRow);
            }
            r0 = this.mArrayNextIndices[r0];
        }
        this.mHead = -1;
        this.mLast = -1;
        this.mDidFillOnce = false;
        this.currentSize = 0;
    }

    final boolean containsKey(SolverVariable solverVariable) {
        int r0 = this.mHead;
        if (r0 == -1) {
            return false;
        }
        for (int r3 = 0; r0 != -1 && r3 < this.currentSize; r3++) {
            if (this.mArrayIndices[r0] == solverVariable.f22id) {
                return true;
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return false;
    }

    boolean hasAtLeastOnePositiveVariable() {
        int r0 = this.mHead;
        for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
            if (this.mArrayValues[r0] > 0.0f) {
                return true;
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return false;
    }

    void invert() {
        int r0 = this.mHead;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            float[] fArr = this.mArrayValues;
            fArr[r0] = fArr[r0] * (-1.0f);
            r0 = this.mArrayNextIndices[r0];
        }
    }

    void divideByAmount(float f) {
        int r0 = this.mHead;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            float[] fArr = this.mArrayValues;
            fArr[r0] = fArr[r0] / f;
            r0 = this.mArrayNextIndices[r0];
        }
    }

    private boolean isNew(SolverVariable solverVariable, LinearSystem linearSystem) {
        return solverVariable.usageInRowCount <= 1;
    }

    SolverVariable chooseSubject(LinearSystem linearSystem) {
        int r0 = this.mHead;
        SolverVariable solverVariable = null;
        boolean z = false;
        boolean z2 = false;
        float f = 0.0f;
        float f2 = 0.0f;
        SolverVariable solverVariable2 = null;
        for (int r4 = 0; r0 != -1 && r4 < this.currentSize; r4++) {
            float f3 = this.mArrayValues[r0];
            SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
            if (f3 < 0.0f) {
                if (f3 > -0.001f) {
                    this.mArrayValues[r0] = 0.0f;
                    solverVariable3.removeFromRow(this.mRow);
                    f3 = 0.0f;
                }
            } else if (f3 < 0.001f) {
                this.mArrayValues[r0] = 0.0f;
                solverVariable3.removeFromRow(this.mRow);
                f3 = 0.0f;
            }
            if (f3 != 0.0f) {
                if (solverVariable3.mType == SolverVariable.Type.UNRESTRICTED) {
                    if (solverVariable2 == null || f > f3) {
                        boolean zIsNew = isNew(solverVariable3, linearSystem);
                        z = zIsNew;
                        f = f3;
                        solverVariable2 = solverVariable3;
                    } else if (!z && isNew(solverVariable3, linearSystem)) {
                        f = f3;
                        solverVariable2 = solverVariable3;
                        z = true;
                    }
                } else if (solverVariable2 == null && f3 < 0.0f) {
                    if (solverVariable == null || f2 > f3) {
                        boolean zIsNew2 = isNew(solverVariable3, linearSystem);
                        z2 = zIsNew2;
                        f2 = f3;
                        solverVariable = solverVariable3;
                    } else if (!z2 && isNew(solverVariable3, linearSystem)) {
                        f2 = f3;
                        solverVariable = solverVariable3;
                        z2 = true;
                    }
                }
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return solverVariable2 != null ? solverVariable2 : solverVariable;
    }

    final void updateFromRow(ArrayRow arrayRow, ArrayRow arrayRow2, boolean z) {
        int r0 = this.mHead;
        while (true) {
            for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
                if (this.mArrayIndices[r0] == arrayRow2.variable.f22id) {
                    float f = this.mArrayValues[r0];
                    remove(arrayRow2.variable, z);
                    ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                    int r4 = arrayLinkedVariables.mHead;
                    for (int r5 = 0; r4 != -1 && r5 < arrayLinkedVariables.currentSize; r5++) {
                        add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[r4]], arrayLinkedVariables.mArrayValues[r4] * f, z);
                        r4 = arrayLinkedVariables.mArrayNextIndices[r4];
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    if (z) {
                        arrayRow2.variable.removeFromRow(arrayRow);
                    }
                    r0 = this.mHead;
                } else {
                    r0 = this.mArrayNextIndices[r0];
                }
            }
            return;
        }
    }

    void updateFromSystem(ArrayRow arrayRow, ArrayRow[] arrayRowArr) {
        int r0 = this.mHead;
        while (true) {
            for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
                SolverVariable solverVariable = this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
                if (solverVariable.definitionId != -1) {
                    float f = this.mArrayValues[r0];
                    remove(solverVariable, true);
                    ArrayRow arrayRow2 = arrayRowArr[solverVariable.definitionId];
                    if (!arrayRow2.isSimpleDefinition) {
                        ArrayLinkedVariables arrayLinkedVariables = arrayRow2.variables;
                        int r6 = arrayLinkedVariables.mHead;
                        for (int r7 = 0; r6 != -1 && r7 < arrayLinkedVariables.currentSize; r7++) {
                            add(this.mCache.mIndexedVariables[arrayLinkedVariables.mArrayIndices[r6]], arrayLinkedVariables.mArrayValues[r6] * f, true);
                            r6 = arrayLinkedVariables.mArrayNextIndices[r6];
                        }
                    }
                    arrayRow.constantValue += arrayRow2.constantValue * f;
                    arrayRow2.variable.removeFromRow(arrayRow);
                    r0 = this.mHead;
                } else {
                    r0 = this.mArrayNextIndices[r0];
                }
            }
            return;
        }
    }

    SolverVariable getPivotCandidate() {
        SolverVariable solverVariable = this.candidate;
        if (solverVariable != null) {
            return solverVariable;
        }
        int r0 = this.mHead;
        SolverVariable solverVariable2 = null;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            if (this.mArrayValues[r0] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
                if (solverVariable2 == null || solverVariable2.strength < solverVariable3.strength) {
                    solverVariable2 = solverVariable3;
                }
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return solverVariable2;
    }

    SolverVariable getPivotCandidate(boolean[] zArr, SolverVariable solverVariable) {
        int r0 = this.mHead;
        SolverVariable solverVariable2 = null;
        float f = 0.0f;
        for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
            if (this.mArrayValues[r0] < 0.0f) {
                SolverVariable solverVariable3 = this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
                if ((zArr == null || !zArr[solverVariable3.f22id]) && solverVariable3 != solverVariable && (solverVariable3.mType == SolverVariable.Type.SLACK || solverVariable3.mType == SolverVariable.Type.ERROR)) {
                    float f2 = this.mArrayValues[r0];
                    if (f2 < f) {
                        solverVariable2 = solverVariable3;
                        f = f2;
                    }
                }
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return solverVariable2;
    }

    final SolverVariable getVariable(int r4) {
        int r0 = this.mHead;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            if (r1 == r4) {
                return this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return null;
    }

    final float getVariableValue(int r4) {
        int r0 = this.mHead;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            if (r1 == r4) {
                return this.mArrayValues[r0];
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return 0.0f;
    }

    public final float get(SolverVariable solverVariable) {
        int r0 = this.mHead;
        for (int r1 = 0; r0 != -1 && r1 < this.currentSize; r1++) {
            if (this.mArrayIndices[r0] == solverVariable.f22id) {
                return this.mArrayValues[r0];
            }
            r0 = this.mArrayNextIndices[r0];
        }
        return 0.0f;
    }

    int sizeInBytes() {
        return (this.mArrayIndices.length * 4 * 3) + 0 + 36;
    }

    public void display() {
        int r0 = this.currentSize;
        System.out.print("{ ");
        for (int r1 = 0; r1 < r0; r1++) {
            SolverVariable variable = getVariable(r1);
            if (variable != null) {
                System.out.print(variable + " = " + getVariableValue(r1) + " ");
            }
        }
        System.out.println(" }");
    }

    public String toString() {
        int r0 = this.mHead;
        String str = "";
        for (int r2 = 0; r0 != -1 && r2 < this.currentSize; r2++) {
            str = ((str + " -> ") + this.mArrayValues[r0] + " : ") + this.mCache.mIndexedVariables[this.mArrayIndices[r0]];
            r0 = this.mArrayNextIndices[r0];
        }
        return str;
    }
}
