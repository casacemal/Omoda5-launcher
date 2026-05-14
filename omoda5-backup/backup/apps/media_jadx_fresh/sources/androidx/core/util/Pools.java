package androidx.core.util;

/* loaded from: classes.dex */
public final class Pools {

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    private Pools() {
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int r1) {
            if (r1 <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[r1];
        }

        @Override // androidx.core.util.Pools.Pool
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

        @Override // androidx.core.util.Pools.Pool
        public boolean release(T t) {
            if (isInPool(t)) {
                throw new IllegalStateException("Already in the pool!");
            }
            int r0 = this.mPoolSize;
            Object[] objArr = this.mPool;
            if (r0 >= objArr.length) {
                return false;
            }
            objArr[r0] = t;
            this.mPoolSize = r0 + 1;
            return true;
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

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int r1) {
            super(r1);
            this.mLock = new Object();
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public T acquire() {
            T t;
            synchronized (this.mLock) {
                t = (T) super.acquire();
            }
            return t;
        }

        @Override // androidx.core.util.Pools.SimplePool, androidx.core.util.Pools.Pool
        public boolean release(T t) {
            boolean zRelease;
            synchronized (this.mLock) {
                zRelease = super.release(t);
            }
            return zRelease;
        }
    }
}
