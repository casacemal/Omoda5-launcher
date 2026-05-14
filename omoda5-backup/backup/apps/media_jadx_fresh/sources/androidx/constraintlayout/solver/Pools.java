package androidx.constraintlayout.solver;

/* loaded from: classes.dex */
final class Pools {
    private static final boolean DEBUG = false;

    interface Pool<T> {
        T acquire();

        boolean release(T t);

        void releaseAll(T[] tArr, int r2);
    }

    private Pools() {
    }

    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        SimplePool(int r1) {
            if (r1 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[r1];
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public T acquire() {
            int r0 = this.mPoolSize;
            if (r0 <= 0) {
                return null;
            }
            int r2 = r0 - 1;
            Object[] objArr = this.mPool;
            T t = (T) objArr[r2];
            objArr[r2] = null;
            this.mPoolSize = r0 - 1;
            return t;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public boolean release(T t) {
            int r0 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (r0 >= objArr.length) {
                return false;
            }
            objArr[r0] = t;
            this.mPoolSize = r0 + 1;
            return true;
        }

        @Override // androidx.constraintlayout.solver.Pools.Pool
        public void releaseAll(T[] tArr, int r7) {
            if (r7 > tArr.length) {
                r7 = tArr.length;
            }
            for (int r0 = 0; r0 < r7; r0++) {
                T t = tArr[r0];
                int r2 = this.mPoolSize;
                Object[] objArr = this.mPool;
                if (r2 < objArr.length) {
                    objArr[r2] = t;
                    this.mPoolSize = r2 + 1;
                }
            }
        }

        private boolean isInPool(T t) {
            for (int r1 = 0; r1 < this.mPoolSize; r1++) {
                if (this.mPool[r1] == t) {
                    return true;
                }
            }
            return false;
        }
    }
}
