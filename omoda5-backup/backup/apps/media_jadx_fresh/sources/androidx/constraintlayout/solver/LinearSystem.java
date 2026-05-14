package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.SolverVariable;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import com.chery.common.PageConstants;
import java.io.PrintStream;
import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class LinearSystem {
    private static final boolean DEBUG = false;
    public static final boolean FULL_DEBUG = false;
    private static int POOL_SIZE = 1000;
    public static Metrics sMetrics;
    final Cache mCache;
    private Row mGoal;
    ArrayRow[] mRows;
    private final Row mTempGoal;
    int mVariablesID = 0;
    private HashMap<String, SolverVariable> mVariables = null;
    private int TABLE_SIZE = 32;
    private int mMaxColumns = 32;
    public boolean graphOptimizer = false;
    private boolean[] mAlreadyTestedCandidates = new boolean[32];
    int mNumColumns = 1;
    int mNumRows = 0;
    private int mMaxRows = 32;
    private SolverVariable[] mPoolVariables = new SolverVariable[POOL_SIZE];
    private int mPoolVariablesCount = 0;
    private ArrayRow[] tempClientsCopy = new ArrayRow[32];

    interface Row {
        void addError(SolverVariable solverVariable);

        void clear();

        SolverVariable getKey();

        SolverVariable getPivotCandidate(LinearSystem linearSystem, boolean[] zArr);

        void initFromRow(Row row);

        boolean isEmpty();
    }

    private String getDisplayStrength(int r1) {
        return r1 == 1 ? "LOW" : r1 == 2 ? "MEDIUM" : r1 == 3 ? "HIGH" : r1 == 4 ? "HIGHEST" : r1 == 5 ? "EQUALITY" : r1 == 6 ? "FIXED" : PageConstants.ManualBook.PageId.LIST;
    }

    public LinearSystem() {
        this.mRows = null;
        this.mRows = new ArrayRow[32];
        releaseRows();
        this.mCache = new Cache();
        this.mGoal = new GoalRow(this.mCache);
        this.mTempGoal = new ArrayRow(this.mCache);
    }

    public void fillMetrics(Metrics metrics) {
        sMetrics = metrics;
    }

    public static Metrics getMetrics() {
        return sMetrics;
    }

    private void increaseTableSize() {
        int r0 = this.TABLE_SIZE * 2;
        this.TABLE_SIZE = r0;
        this.mRows = (ArrayRow[]) Arrays.copyOf(this.mRows, r0);
        Cache cache = this.mCache;
        cache.mIndexedVariables = (SolverVariable[]) Arrays.copyOf(cache.mIndexedVariables, this.TABLE_SIZE);
        int r02 = this.TABLE_SIZE;
        this.mAlreadyTestedCandidates = new boolean[r02];
        this.mMaxColumns = r02;
        this.mMaxRows = r02;
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.tableSizeIncrease++;
            Metrics metrics2 = sMetrics;
            metrics2.maxTableSize = Math.max(metrics2.maxTableSize, this.TABLE_SIZE);
            Metrics metrics3 = sMetrics;
            metrics3.lastTableSize = metrics3.maxTableSize;
        }
    }

    private void releaseRows() {
        int r0 = 0;
        while (true) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (r0 >= arrayRowArr.length) {
                return;
            }
            ArrayRow arrayRow = arrayRowArr[r0];
            if (arrayRow != null) {
                this.mCache.arrayRowPool.release(arrayRow);
            }
            this.mRows[r0] = null;
            r0++;
        }
    }

    public void reset() {
        for (int r1 = 0; r1 < this.mCache.mIndexedVariables.length; r1++) {
            SolverVariable solverVariable = this.mCache.mIndexedVariables[r1];
            if (solverVariable != null) {
                solverVariable.reset();
            }
        }
        this.mCache.solverVariablePool.releaseAll(this.mPoolVariables, this.mPoolVariablesCount);
        this.mPoolVariablesCount = 0;
        Arrays.fill(this.mCache.mIndexedVariables, (Object) null);
        HashMap<String, SolverVariable> map = this.mVariables;
        if (map != null) {
            map.clear();
        }
        this.mVariablesID = 0;
        this.mGoal.clear();
        this.mNumColumns = 1;
        for (int r12 = 0; r12 < this.mNumRows; r12++) {
            this.mRows[r12].used = false;
        }
        releaseRows();
        this.mNumRows = 0;
    }

    public SolverVariable createObjectVariable(Object obj) {
        SolverVariable solverVariable = null;
        if (obj == null) {
            return null;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        if (obj instanceof ConstraintAnchor) {
            ConstraintAnchor constraintAnchor = (ConstraintAnchor) obj;
            solverVariable = constraintAnchor.getSolverVariable();
            if (solverVariable == null) {
                constraintAnchor.resetSolverVariable(this.mCache);
                solverVariable = constraintAnchor.getSolverVariable();
            }
            if (solverVariable.f22id == -1 || solverVariable.f22id > this.mVariablesID || this.mCache.mIndexedVariables[solverVariable.f22id] == null) {
                if (solverVariable.f22id != -1) {
                    solverVariable.reset();
                }
                int r4 = this.mVariablesID + 1;
                this.mVariablesID = r4;
                this.mNumColumns++;
                solverVariable.f22id = r4;
                solverVariable.mType = SolverVariable.Type.UNRESTRICTED;
                this.mCache.mIndexedVariables[this.mVariablesID] = solverVariable;
            }
        }
        return solverVariable;
    }

    public ArrayRow createRow() {
        ArrayRow arrayRowAcquire = this.mCache.arrayRowPool.acquire();
        if (arrayRowAcquire == null) {
            arrayRowAcquire = new ArrayRow(this.mCache);
        } else {
            arrayRowAcquire.reset();
        }
        SolverVariable.increaseErrorId();
        return arrayRowAcquire;
    }

    public SolverVariable createSlackVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.slackvariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int r1 = this.mVariablesID + 1;
        this.mVariablesID = r1;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f22id = r1;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createExtraVariable() {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.extravariables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.SLACK, null);
        int r1 = this.mVariablesID + 1;
        this.mVariablesID = r1;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f22id = r1;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    private void addError(ArrayRow arrayRow) {
        arrayRow.addError(this, 0);
    }

    private void addSingleError(ArrayRow arrayRow, int r3) {
        addSingleError(arrayRow, r3, 0);
    }

    void addSingleError(ArrayRow arrayRow, int r3, int r4) {
        arrayRow.addSingleError(createErrorVariable(r4, null), r3);
    }

    private SolverVariable createVariable(String str, SolverVariable.Type type) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.variables++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(type, null);
        solverVariableAcquireSolverVariable.setName(str);
        int r0 = this.mVariablesID + 1;
        this.mVariablesID = r0;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f22id = r0;
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        this.mVariables.put(str, solverVariableAcquireSolverVariable);
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        return solverVariableAcquireSolverVariable;
    }

    public SolverVariable createErrorVariable(int r6, String str) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.errors++;
        }
        if (this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        SolverVariable solverVariableAcquireSolverVariable = acquireSolverVariable(SolverVariable.Type.ERROR, str);
        int r0 = this.mVariablesID + 1;
        this.mVariablesID = r0;
        this.mNumColumns++;
        solverVariableAcquireSolverVariable.f22id = r0;
        solverVariableAcquireSolverVariable.strength = r6;
        this.mCache.mIndexedVariables[this.mVariablesID] = solverVariableAcquireSolverVariable;
        this.mGoal.addError(solverVariableAcquireSolverVariable);
        return solverVariableAcquireSolverVariable;
    }

    private SolverVariable acquireSolverVariable(SolverVariable.Type type, String str) {
        SolverVariable solverVariableAcquire = this.mCache.solverVariablePool.acquire();
        if (solverVariableAcquire == null) {
            solverVariableAcquire = new SolverVariable(type, str);
            solverVariableAcquire.setType(type, str);
        } else {
            solverVariableAcquire.reset();
            solverVariableAcquire.setType(type, str);
        }
        int r3 = this.mPoolVariablesCount;
        int r4 = POOL_SIZE;
        if (r3 >= r4) {
            int r42 = r4 * 2;
            POOL_SIZE = r42;
            this.mPoolVariables = (SolverVariable[]) Arrays.copyOf(this.mPoolVariables, r42);
        }
        SolverVariable[] solverVariableArr = this.mPoolVariables;
        int r43 = this.mPoolVariablesCount;
        this.mPoolVariablesCount = r43 + 1;
        solverVariableArr[r43] = solverVariableAcquire;
        return solverVariableAcquire;
    }

    Row getGoal() {
        return this.mGoal;
    }

    ArrayRow getRow(int r1) {
        return this.mRows[r1];
    }

    float getValueFor(String str) {
        SolverVariable variable = getVariable(str, SolverVariable.Type.UNRESTRICTED);
        if (variable == null) {
            return 0.0f;
        }
        return variable.computedValue;
    }

    public int getObjectVariableValue(Object obj) {
        SolverVariable solverVariable = ((ConstraintAnchor) obj).getSolverVariable();
        if (solverVariable != null) {
            return (int) (solverVariable.computedValue + 0.5f);
        }
        return 0;
    }

    SolverVariable getVariable(String str, SolverVariable.Type type) {
        if (this.mVariables == null) {
            this.mVariables = new HashMap<>();
        }
        SolverVariable solverVariable = this.mVariables.get(str);
        return solverVariable == null ? createVariable(str, type) : solverVariable;
    }

    public void minimize() throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimize++;
        }
        if (this.graphOptimizer) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.graphOptimizer++;
            }
            boolean z = false;
            int r3 = 0;
            while (true) {
                if (r3 >= this.mNumRows) {
                    z = true;
                    break;
                } else if (!this.mRows[r3].isSimpleDefinition) {
                    break;
                } else {
                    r3++;
                }
            }
            if (!z) {
                minimizeGoal(this.mGoal);
                return;
            }
            Metrics metrics3 = sMetrics;
            if (metrics3 != null) {
                metrics3.fullySolved++;
            }
            computeValues();
            return;
        }
        minimizeGoal(this.mGoal);
    }

    void minimizeGoal(Row row) throws Exception {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.minimizeGoal++;
            Metrics metrics2 = sMetrics;
            metrics2.maxVariables = Math.max(metrics2.maxVariables, this.mNumColumns);
            Metrics metrics3 = sMetrics;
            metrics3.maxRows = Math.max(metrics3.maxRows, this.mNumRows);
        }
        updateRowFromVariables((ArrayRow) row);
        enforceBFS(row);
        optimize(row, false);
        computeValues();
    }

    private final void updateRowFromVariables(ArrayRow arrayRow) {
        if (this.mNumRows > 0) {
            arrayRow.variables.updateFromSystem(arrayRow, this.mRows);
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
            }
        }
    }

    public void addConstraint(ArrayRow arrayRow) {
        SolverVariable solverVariablePickPivot;
        if (arrayRow == null) {
            return;
        }
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.constraints++;
            if (arrayRow.isSimpleDefinition) {
                sMetrics.simpleconstraints++;
            }
        }
        boolean z = true;
        if (this.mNumRows + 1 >= this.mMaxRows || this.mNumColumns + 1 >= this.mMaxColumns) {
            increaseTableSize();
        }
        boolean z2 = false;
        if (!arrayRow.isSimpleDefinition) {
            updateRowFromVariables(arrayRow);
            if (arrayRow.isEmpty()) {
                return;
            }
            arrayRow.ensurePositiveConstant();
            if (arrayRow.chooseSubject(this)) {
                SolverVariable solverVariableCreateExtraVariable = createExtraVariable();
                arrayRow.variable = solverVariableCreateExtraVariable;
                addRow(arrayRow);
                this.mTempGoal.initFromRow(arrayRow);
                optimize(this.mTempGoal, true);
                if (solverVariableCreateExtraVariable.definitionId == -1) {
                    if (arrayRow.variable == solverVariableCreateExtraVariable && (solverVariablePickPivot = arrayRow.pickPivot(solverVariableCreateExtraVariable)) != null) {
                        Metrics metrics2 = sMetrics;
                        if (metrics2 != null) {
                            metrics2.pivots++;
                        }
                        arrayRow.pivot(solverVariablePickPivot);
                    }
                    if (!arrayRow.isSimpleDefinition) {
                        arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
                    }
                    this.mNumRows--;
                }
            } else {
                z = false;
            }
            if (!arrayRow.hasKeyVariable()) {
                return;
            } else {
                z2 = z;
            }
        }
        if (z2) {
            return;
        }
        addRow(arrayRow);
    }

    private final void addRow(ArrayRow arrayRow) {
        if (this.mRows[this.mNumRows] != null) {
            this.mCache.arrayRowPool.release(this.mRows[this.mNumRows]);
        }
        this.mRows[this.mNumRows] = arrayRow;
        arrayRow.variable.definitionId = this.mNumRows;
        this.mNumRows++;
        arrayRow.variable.updateReferencesWithNewDefinition(arrayRow);
    }

    private final int optimize(Row row, boolean z) {
        Metrics metrics = sMetrics;
        if (metrics != null) {
            metrics.optimize++;
        }
        for (int r2 = 0; r2 < this.mNumColumns; r2++) {
            this.mAlreadyTestedCandidates[r2] = false;
        }
        boolean z2 = false;
        int r3 = 0;
        while (!z2) {
            Metrics metrics2 = sMetrics;
            if (metrics2 != null) {
                metrics2.iterations++;
            }
            r3++;
            if (r3 >= this.mNumColumns * 2) {
                return r3;
            }
            if (row.getKey() != null) {
                this.mAlreadyTestedCandidates[row.getKey().f22id] = true;
            }
            SolverVariable pivotCandidate = row.getPivotCandidate(this, this.mAlreadyTestedCandidates);
            if (pivotCandidate != null) {
                if (this.mAlreadyTestedCandidates[pivotCandidate.f22id]) {
                    return r3;
                }
                this.mAlreadyTestedCandidates[pivotCandidate.f22id] = true;
            }
            if (pivotCandidate != null) {
                float f = Float.MAX_VALUE;
                int r9 = -1;
                for (int r8 = 0; r8 < this.mNumRows; r8++) {
                    ArrayRow arrayRow = this.mRows[r8];
                    if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.hasVariable(pivotCandidate)) {
                        float f2 = arrayRow.variables.get(pivotCandidate);
                        if (f2 < 0.0f) {
                            float f3 = (-arrayRow.constantValue) / f2;
                            if (f3 < f) {
                                r9 = r8;
                                f = f3;
                            }
                        }
                    }
                }
                if (r9 > -1) {
                    ArrayRow arrayRow2 = this.mRows[r9];
                    arrayRow2.variable.definitionId = -1;
                    Metrics metrics3 = sMetrics;
                    if (metrics3 != null) {
                        metrics3.pivots++;
                    }
                    arrayRow2.pivot(pivotCandidate);
                    arrayRow2.variable.definitionId = r9;
                    arrayRow2.variable.updateReferencesWithNewDefinition(arrayRow2);
                }
            }
            z2 = true;
        }
        return r3;
    }

    private int enforceBFS(Row row) throws Exception {
        float f;
        boolean z;
        int r2 = 0;
        while (true) {
            f = 0.0f;
            if (r2 >= this.mNumRows) {
                z = false;
                break;
            }
            if (this.mRows[r2].variable.mType != SolverVariable.Type.UNRESTRICTED && this.mRows[r2].constantValue < 0.0f) {
                z = true;
                break;
            }
            r2++;
        }
        if (!z) {
            return 0;
        }
        boolean z2 = false;
        int r3 = 0;
        while (!z2) {
            Metrics metrics = sMetrics;
            if (metrics != null) {
                metrics.bfs++;
            }
            r3++;
            float f2 = Float.MAX_VALUE;
            int r11 = -1;
            int r12 = -1;
            int r10 = 0;
            int r13 = 0;
            while (r10 < this.mNumRows) {
                ArrayRow arrayRow = this.mRows[r10];
                if (arrayRow.variable.mType != SolverVariable.Type.UNRESTRICTED && !arrayRow.isSimpleDefinition && arrayRow.constantValue < f) {
                    int r1 = 1;
                    while (r1 < this.mNumColumns) {
                        SolverVariable solverVariable = this.mCache.mIndexedVariables[r1];
                        float f3 = arrayRow.variables.get(solverVariable);
                        if (f3 > f) {
                            for (int r4 = 0; r4 < 7; r4++) {
                                float f4 = solverVariable.strengthVector[r4] / f3;
                                if ((f4 < f2 && r4 == r13) || r4 > r13) {
                                    r12 = r1;
                                    r13 = r4;
                                    f2 = f4;
                                    r11 = r10;
                                }
                            }
                        }
                        r1++;
                        f = 0.0f;
                    }
                }
                r10++;
                f = 0.0f;
            }
            if (r11 != -1) {
                ArrayRow arrayRow2 = this.mRows[r11];
                arrayRow2.variable.definitionId = -1;
                Metrics metrics2 = sMetrics;
                if (metrics2 != null) {
                    metrics2.pivots++;
                }
                arrayRow2.pivot(this.mCache.mIndexedVariables[r12]);
                arrayRow2.variable.definitionId = r11;
                arrayRow2.variable.updateReferencesWithNewDefinition(arrayRow2);
            } else {
                z2 = true;
            }
            if (r3 > this.mNumColumns / 2) {
                z2 = true;
            }
            f = 0.0f;
        }
        return r3;
    }

    private void computeValues() {
        for (int r0 = 0; r0 < this.mNumRows; r0++) {
            ArrayRow arrayRow = this.mRows[r0];
            arrayRow.variable.computedValue = arrayRow.constantValue;
        }
    }

    private void displayRows() {
        displaySolverVariables();
        String str = "";
        for (int r1 = 0; r1 < this.mNumRows; r1++) {
            str = (str + this.mRows[r1]) + "\n";
        }
        System.out.println(str + this.mGoal + "\n");
    }

    void displayReadableRows() {
        displaySolverVariables();
        String str = " #  ";
        for (int r1 = 0; r1 < this.mNumRows; r1++) {
            str = (str + this.mRows[r1].toReadableString()) + "\n #  ";
        }
        if (this.mGoal != null) {
            str = str + this.mGoal + "\n";
        }
        System.out.println(str);
    }

    public void displayVariablesReadableRows() {
        displaySolverVariables();
        String str = "";
        for (int r1 = 0; r1 < this.mNumRows; r1++) {
            if (this.mRows[r1].variable.mType == SolverVariable.Type.UNRESTRICTED) {
                str = (str + this.mRows[r1].toReadableString()) + "\n";
            }
        }
        System.out.println(str + this.mGoal + "\n");
    }

    public int getMemoryUsed() {
        int r1 = 0;
        for (int r0 = 0; r0 < this.mNumRows; r0++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[r0] != null) {
                r1 += arrayRowArr[r0].sizeInBytes();
            }
        }
        return r1;
    }

    public int getNumEquations() {
        return this.mNumRows;
    }

    public int getNumVariables() {
        return this.mVariablesID;
    }

    void displaySystemInformations() {
        int r2 = 0;
        for (int r1 = 0; r1 < this.TABLE_SIZE; r1++) {
            ArrayRow[] arrayRowArr = this.mRows;
            if (arrayRowArr[r1] != null) {
                r2 += arrayRowArr[r1].sizeInBytes();
            }
        }
        int r3 = 0;
        for (int r12 = 0; r12 < this.mNumRows; r12++) {
            ArrayRow[] arrayRowArr2 = this.mRows;
            if (arrayRowArr2[r12] != null) {
                r3 += arrayRowArr2[r12].sizeInBytes();
            }
        }
        PrintStream printStream = System.out;
        StringBuilder sb = new StringBuilder();
        sb.append("Linear System -> Table size: ");
        sb.append(this.TABLE_SIZE);
        sb.append(" (");
        int r5 = this.TABLE_SIZE;
        sb.append(getDisplaySize(r5 * r5));
        sb.append(") -- row sizes: ");
        sb.append(getDisplaySize(r2));
        sb.append(", actual size: ");
        sb.append(getDisplaySize(r3));
        sb.append(" rows: ");
        sb.append(this.mNumRows);
        sb.append("/");
        sb.append(this.mMaxRows);
        sb.append(" cols: ");
        sb.append(this.mNumColumns);
        sb.append("/");
        sb.append(this.mMaxColumns);
        sb.append(" ");
        sb.append(0);
        sb.append(" occupied cells, ");
        sb.append(getDisplaySize(0));
        printStream.println(sb.toString());
    }

    private void displaySolverVariables() {
        System.out.println("Display Rows (" + this.mNumRows + "x" + this.mNumColumns + ")\n");
    }

    private String getDisplaySize(int r3) {
        int r32 = r3 * 4;
        int r2 = r32 / 1024;
        int r0 = r2 / 1024;
        if (r0 > 0) {
            return "" + r0 + " Mb";
        }
        if (r2 > 0) {
            return "" + r2 + " Kb";
        }
        return "" + r32 + " bytes";
    }

    public Cache getCache() {
        return this.mCache;
    }

    public void addGreaterThan(SolverVariable solverVariable, SolverVariable solverVariable2, int r6, int r7) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r6);
        if (r7 != 6) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), r7);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterThan(SolverVariable solverVariable, int r5) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, r5, solverVariableCreateSlackVariable);
        addConstraint(arrayRowCreateRow);
    }

    public void addGreaterBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, 0);
        if (z) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), 1);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerThan(SolverVariable solverVariable, SolverVariable solverVariable2, int r6, int r7) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r6);
        if (r7 != 6) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), r7);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addLowerBarrier(SolverVariable solverVariable, SolverVariable solverVariable2, boolean z) {
        ArrayRow arrayRowCreateRow = createRow();
        SolverVariable solverVariableCreateSlackVariable = createSlackVariable();
        solverVariableCreateSlackVariable.strength = 0;
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, 0);
        if (z) {
            addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)), 1);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addCentering(SolverVariable solverVariable, SolverVariable solverVariable2, int r14, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int r18, int r19) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, r14, f, solverVariable3, solverVariable4, r18);
        if (r19 != 6) {
            arrayRowCreateRow.addError(this, r19);
        }
        addConstraint(arrayRowCreateRow);
    }

    public void addRatio(SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, SolverVariable solverVariable4, float f, int r13) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowDimensionRatio(solverVariable, solverVariable2, solverVariable3, solverVariable4, f);
        if (r13 != 6) {
            arrayRowCreateRow.addError(this, r13);
        }
        addConstraint(arrayRowCreateRow);
    }

    public ArrayRow addEquality(SolverVariable solverVariable, SolverVariable solverVariable2, int r4, int r5) {
        ArrayRow arrayRowCreateRow = createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, r4);
        if (r5 != 6) {
            arrayRowCreateRow.addError(this, r5);
        }
        addConstraint(arrayRowCreateRow);
        return arrayRowCreateRow;
    }

    public void addEquality(SolverVariable solverVariable, int r5) {
        int r0 = solverVariable.definitionId;
        if (solverVariable.definitionId != -1) {
            ArrayRow arrayRow = this.mRows[r0];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = r5;
                return;
            }
            if (arrayRow.variables.currentSize == 0) {
                arrayRow.isSimpleDefinition = true;
                arrayRow.constantValue = r5;
                return;
            } else {
                ArrayRow arrayRowCreateRow = createRow();
                arrayRowCreateRow.createRowEquals(solverVariable, r5);
                addConstraint(arrayRowCreateRow);
                return;
            }
        }
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowDefinition(solverVariable, r5);
        addConstraint(arrayRowCreateRow2);
    }

    public void addEquality(SolverVariable solverVariable, int r5, int r6) {
        int r0 = solverVariable.definitionId;
        if (solverVariable.definitionId != -1) {
            ArrayRow arrayRow = this.mRows[r0];
            if (arrayRow.isSimpleDefinition) {
                arrayRow.constantValue = r5;
                return;
            }
            ArrayRow arrayRowCreateRow = createRow();
            arrayRowCreateRow.createRowEquals(solverVariable, r5);
            arrayRowCreateRow.addError(this, r6);
            addConstraint(arrayRowCreateRow);
            return;
        }
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowDefinition(solverVariable, r5);
        arrayRowCreateRow2.addError(this, r6);
        addConstraint(arrayRowCreateRow2);
    }

    public static ArrayRow createRowEquals(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int r4, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowEquals(solverVariable, solverVariable2, r4);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, 1);
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowDimensionPercent(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, SolverVariable solverVariable3, float f, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        if (z) {
            linearSystem.addError(arrayRowCreateRow);
        }
        return arrayRowCreateRow.createRowDimensionPercent(solverVariable, solverVariable2, solverVariable3, f);
    }

    public static ArrayRow createRowGreaterThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int r5, boolean z) {
        SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowGreaterThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r5);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowLowerThan(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int r5, boolean z) {
        SolverVariable solverVariableCreateSlackVariable = linearSystem.createSlackVariable();
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowLowerThan(solverVariable, solverVariable2, solverVariableCreateSlackVariable, r5);
        if (z) {
            linearSystem.addSingleError(arrayRowCreateRow, (int) (arrayRowCreateRow.variables.get(solverVariableCreateSlackVariable) * (-1.0f)));
        }
        return arrayRowCreateRow;
    }

    public static ArrayRow createRowCentering(LinearSystem linearSystem, SolverVariable solverVariable, SolverVariable solverVariable2, int r12, float f, SolverVariable solverVariable3, SolverVariable solverVariable4, int r16, boolean z) {
        ArrayRow arrayRowCreateRow = linearSystem.createRow();
        arrayRowCreateRow.createRowCentering(solverVariable, solverVariable2, r12, f, solverVariable3, solverVariable4, r16);
        if (z) {
            arrayRowCreateRow.addError(linearSystem, 4);
        }
        return arrayRowCreateRow;
    }

    public void addCenterPoint(ConstraintWidget constraintWidget, ConstraintWidget constraintWidget2, float f, int r22) {
        SolverVariable solverVariableCreateObjectVariable = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable solverVariableCreateObjectVariable2 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable solverVariableCreateObjectVariable3 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable solverVariableCreateObjectVariable4 = createObjectVariable(constraintWidget.getAnchor(ConstraintAnchor.Type.BOTTOM));
        SolverVariable solverVariableCreateObjectVariable5 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT));
        SolverVariable solverVariableCreateObjectVariable6 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP));
        SolverVariable solverVariableCreateObjectVariable7 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT));
        SolverVariable solverVariableCreateObjectVariable8 = createObjectVariable(constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM));
        ArrayRow arrayRowCreateRow = createRow();
        double d = f;
        double d2 = r22;
        arrayRowCreateRow.createRowWithAngle(solverVariableCreateObjectVariable2, solverVariableCreateObjectVariable4, solverVariableCreateObjectVariable6, solverVariableCreateObjectVariable8, (float) (Math.sin(d) * d2));
        addConstraint(arrayRowCreateRow);
        ArrayRow arrayRowCreateRow2 = createRow();
        arrayRowCreateRow2.createRowWithAngle(solverVariableCreateObjectVariable, solverVariableCreateObjectVariable3, solverVariableCreateObjectVariable5, solverVariableCreateObjectVariable7, (float) (Math.cos(d) * d2));
        addConstraint(arrayRowCreateRow2);
    }
}
