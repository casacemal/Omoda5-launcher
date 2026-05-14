package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class DiffUtil {
    private static final Comparator<Snake> SNAKE_COMPARATOR = new Comparator<Snake>() { // from class: androidx.recyclerview.widget.DiffUtil.1
        @Override // java.util.Comparator
        public int compare(Snake snake, Snake snake2) {
            int r1 = snake.f40x - snake2.f40x;
            return r1 == 0 ? snake.f41y - snake2.f41y : r1;
        }
    };

    public static abstract class Callback {
        public abstract boolean areContentsTheSame(int r1, int r2);

        public abstract boolean areItemsTheSame(int r1, int r2);

        public Object getChangePayload(int r1, int r2) {
            return null;
        }

        public abstract int getNewListSize();

        public abstract int getOldListSize();
    }

    public static abstract class ItemCallback<T> {
        public abstract boolean areContentsTheSame(T t, T t2);

        public abstract boolean areItemsTheSame(T t, T t2);

        public Object getChangePayload(T t, T t2) {
            return null;
        }
    }

    private DiffUtil() {
    }

    public static DiffResult calculateDiff(Callback callback) {
        return calculateDiff(callback, true);
    }

    public static DiffResult calculateDiff(Callback callback, boolean z) {
        int oldListSize = callback.getOldListSize();
        int newListSize = callback.getNewListSize();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new Range(0, oldListSize, 0, newListSize));
        int r3 = oldListSize + newListSize + Math.abs(oldListSize - newListSize);
        int r0 = r3 * 2;
        int[] r1 = new int[r0];
        int[] r02 = new int[r0];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            Range range = (Range) arrayList2.remove(arrayList2.size() - 1);
            Snake snakeDiffPartial = diffPartial(callback, range.oldListStart, range.oldListEnd, range.newListStart, range.newListEnd, r1, r02, r3);
            if (snakeDiffPartial != null) {
                if (snakeDiffPartial.size > 0) {
                    arrayList.add(snakeDiffPartial);
                }
                snakeDiffPartial.f40x += range.oldListStart;
                snakeDiffPartial.f41y += range.newListStart;
                Range range2 = arrayList3.isEmpty() ? new Range() : (Range) arrayList3.remove(arrayList3.size() - 1);
                range2.oldListStart = range.oldListStart;
                range2.newListStart = range.newListStart;
                if (snakeDiffPartial.reverse) {
                    range2.oldListEnd = snakeDiffPartial.f40x;
                    range2.newListEnd = snakeDiffPartial.f41y;
                } else if (snakeDiffPartial.removal) {
                    range2.oldListEnd = snakeDiffPartial.f40x - 1;
                    range2.newListEnd = snakeDiffPartial.f41y;
                } else {
                    range2.oldListEnd = snakeDiffPartial.f40x;
                    range2.newListEnd = snakeDiffPartial.f41y - 1;
                }
                arrayList2.add(range2);
                if (snakeDiffPartial.reverse) {
                    if (snakeDiffPartial.removal) {
                        range.oldListStart = snakeDiffPartial.f40x + snakeDiffPartial.size + 1;
                        range.newListStart = snakeDiffPartial.f41y + snakeDiffPartial.size;
                    } else {
                        range.oldListStart = snakeDiffPartial.f40x + snakeDiffPartial.size;
                        range.newListStart = snakeDiffPartial.f41y + snakeDiffPartial.size + 1;
                    }
                } else {
                    range.oldListStart = snakeDiffPartial.f40x + snakeDiffPartial.size;
                    range.newListStart = snakeDiffPartial.f41y + snakeDiffPartial.size;
                }
                arrayList2.add(range);
            } else {
                arrayList3.add(range);
            }
        }
        Collections.sort(arrayList, SNAKE_COMPARATOR);
        return new DiffResult(callback, arrayList, r1, r02, z);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Not found exit edge by exit block: B:52:0x00cf
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.checkLoopExits(LoopRegionMaker.java:225)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.makeLoopRegion(LoopRegionMaker.java:195)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:62)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:95)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.LoopRegionMaker.process(LoopRegionMaker.java:124)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:89)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.IfRegionMaker.process(IfRegionMaker.java:101)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:106)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:66)
        	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:48)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.recyclerview.widget.DiffUtil.Snake diffPartial(androidx.recyclerview.widget.DiffUtil.Callback r19, int r20, int r21, int r22, int r23, int[] r24, int[] r25, int r26) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.DiffUtil.diffPartial(androidx.recyclerview.widget.DiffUtil$Callback, int, int, int, int, int[], int[], int):androidx.recyclerview.widget.DiffUtil$Snake");
    }

    static class Snake {
        boolean removal;
        boolean reverse;
        int size;

        /* renamed from: x */
        int f40x;

        /* renamed from: y */
        int f41y;

        Snake() {
        }
    }

    static class Range {
        int newListEnd;
        int newListStart;
        int oldListEnd;
        int oldListStart;

        public Range() {
        }

        public Range(int r1, int r2, int r3, int r4) {
            this.oldListStart = r1;
            this.oldListEnd = r2;
            this.newListStart = r3;
            this.newListEnd = r4;
        }
    }

    public static class DiffResult {
        private static final int FLAG_CHANGED = 2;
        private static final int FLAG_IGNORE = 16;
        private static final int FLAG_MASK = 31;
        private static final int FLAG_MOVED_CHANGED = 4;
        private static final int FLAG_MOVED_NOT_CHANGED = 8;
        private static final int FLAG_NOT_CHANGED = 1;
        private static final int FLAG_OFFSET = 5;
        public static final int NO_POSITION = -1;
        private final Callback mCallback;
        private final boolean mDetectMoves;
        private final int[] mNewItemStatuses;
        private final int mNewListSize;
        private final int[] mOldItemStatuses;
        private final int mOldListSize;
        private final List<Snake> mSnakes;

        DiffResult(Callback callback, List<Snake> list, int[] r3, int[] r4, boolean z) {
            this.mSnakes = list;
            this.mOldItemStatuses = r3;
            this.mNewItemStatuses = r4;
            Arrays.fill(r3, 0);
            Arrays.fill(this.mNewItemStatuses, 0);
            this.mCallback = callback;
            this.mOldListSize = callback.getOldListSize();
            this.mNewListSize = callback.getNewListSize();
            this.mDetectMoves = z;
            addRootSnake();
            findMatchingItems();
        }

        private void addRootSnake() {
            Snake snake = this.mSnakes.isEmpty() ? null : this.mSnakes.get(0);
            if (snake != null && snake.f40x == 0 && snake.f41y == 0) {
                return;
            }
            Snake snake2 = new Snake();
            snake2.f40x = 0;
            snake2.f41y = 0;
            snake2.removal = false;
            snake2.size = 0;
            snake2.reverse = false;
            this.mSnakes.add(0, snake2);
        }

        private void findMatchingItems() {
            int r0 = this.mOldListSize;
            int r1 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int r5 = snake.f40x + snake.size;
                int r6 = snake.f41y + snake.size;
                if (this.mDetectMoves) {
                    while (r0 > r5) {
                        findAddition(r0, r1, size);
                        r0--;
                    }
                    while (r1 > r6) {
                        findRemoval(r0, r1, size);
                        r1--;
                    }
                }
                for (int r02 = 0; r02 < snake.size; r02++) {
                    int r12 = snake.f40x + r02;
                    int r52 = snake.f41y + r02;
                    int r62 = this.mCallback.areContentsTheSame(r12, r52) ? 1 : 2;
                    this.mOldItemStatuses[r12] = (r52 << 5) | r62;
                    this.mNewItemStatuses[r52] = (r12 << 5) | r62;
                }
                r0 = snake.f40x;
                r1 = snake.f41y;
            }
        }

        private void findAddition(int r3, int r4, int r5) {
            if (this.mOldItemStatuses[r3 - 1] != 0) {
                return;
            }
            findMatchingItem(r3, r4, r5, false);
        }

        private void findRemoval(int r3, int r4, int r5) {
            if (this.mNewItemStatuses[r4 - 1] != 0) {
                return;
            }
            findMatchingItem(r3, r4, r5, true);
        }

        public int convertOldPositionToNew(int r4) {
            if (r4 < 0 || r4 >= this.mOldListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + r4 + ", old list size = " + this.mOldListSize);
            }
            int r3 = this.mOldItemStatuses[r4];
            if ((r3 & 31) == 0) {
                return -1;
            }
            return r3 >> 5;
        }

        public int convertNewPositionToOld(int r4) {
            if (r4 < 0 || r4 >= this.mNewListSize) {
                throw new IndexOutOfBoundsException("Index out of bounds - passed position = " + r4 + ", new list size = " + this.mNewListSize);
            }
            int r3 = this.mNewItemStatuses[r4];
            if ((r3 & 31) == 0) {
                return -1;
            }
            return r3 >> 5;
        }

        private boolean findMatchingItem(int r9, int r10, int r11, boolean z) {
            int r0;
            int r1;
            int r5;
            if (z) {
                r10--;
                r1 = r9;
                r0 = r10;
            } else {
                r0 = r9 - 1;
                r1 = r0;
            }
            while (r11 >= 0) {
                Snake snake = this.mSnakes.get(r11);
                int r3 = snake.f40x + snake.size;
                int r4 = snake.f41y + snake.size;
                if (z) {
                    for (int r12 = r1 - 1; r12 >= r3; r12--) {
                        if (this.mCallback.areItemsTheSame(r12, r0)) {
                            r5 = this.mCallback.areContentsTheSame(r12, r0) ? 8 : 4;
                            this.mNewItemStatuses[r0] = (r12 << 5) | 16;
                            this.mOldItemStatuses[r12] = (r0 << 5) | r5;
                            return true;
                        }
                    }
                } else {
                    for (int r102 = r10 - 1; r102 >= r4; r102--) {
                        if (this.mCallback.areItemsTheSame(r0, r102)) {
                            r5 = this.mCallback.areContentsTheSame(r0, r102) ? 8 : 4;
                            int r92 = r9 - 1;
                            this.mOldItemStatuses[r92] = (r102 << 5) | 16;
                            this.mNewItemStatuses[r102] = (r92 << 5) | r5;
                            return true;
                        }
                    }
                }
                r1 = snake.f40x;
                r10 = snake.f41y;
                r11--;
            }
            return false;
        }

        public void dispatchUpdatesTo(RecyclerView.Adapter adapter) {
            dispatchUpdatesTo(new AdapterListUpdateCallback(adapter));
        }

        public void dispatchUpdatesTo(ListUpdateCallback listUpdateCallback) {
            BatchingListUpdateCallback batchingListUpdateCallback;
            if (listUpdateCallback instanceof BatchingListUpdateCallback) {
                batchingListUpdateCallback = (BatchingListUpdateCallback) listUpdateCallback;
            } else {
                batchingListUpdateCallback = new BatchingListUpdateCallback(listUpdateCallback);
            }
            ArrayList arrayList = new ArrayList();
            int r1 = this.mOldListSize;
            int r8 = this.mNewListSize;
            for (int size = this.mSnakes.size() - 1; size >= 0; size--) {
                Snake snake = this.mSnakes.get(size);
                int r11 = snake.size;
                int r12 = snake.f40x + r11;
                int r13 = snake.f41y + r11;
                if (r12 < r1) {
                    dispatchRemovals(arrayList, batchingListUpdateCallback, r12, r1 - r12, r12);
                }
                if (r13 < r8) {
                    dispatchAdditions(arrayList, batchingListUpdateCallback, r12, r8 - r13, r13);
                }
                for (int r112 = r11 - 1; r112 >= 0; r112--) {
                    if ((this.mOldItemStatuses[snake.f40x + r112] & 31) == 2) {
                        batchingListUpdateCallback.onChanged(snake.f40x + r112, 1, this.mCallback.getChangePayload(snake.f40x + r112, snake.f41y + r112));
                    }
                }
                r1 = snake.f40x;
                r8 = snake.f41y;
            }
            batchingListUpdateCallback.dispatchLastEvent();
        }

        private static PostponedUpdate removePostponedUpdate(List<PostponedUpdate> list, int r6, boolean z) {
            int size = list.size() - 1;
            while (size >= 0) {
                PostponedUpdate postponedUpdate = list.get(size);
                if (postponedUpdate.posInOwnerList == r6 && postponedUpdate.removal == z) {
                    list.remove(size);
                    while (size < list.size()) {
                        list.get(size).currentPos += z ? 1 : -1;
                        size++;
                    }
                    return postponedUpdate;
                }
                size--;
            }
            return null;
        }

        private void dispatchAdditions(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int r9, int r10, int r11) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onInserted(r9, r10);
                return;
            }
            for (int r102 = r10 - 1; r102 >= 0; r102--) {
                int r2 = r11 + r102;
                int r1 = this.mNewItemStatuses[r2] & 31;
                if (r1 == 0) {
                    listUpdateCallback.onInserted(r9, 1);
                    Iterator<PostponedUpdate> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().currentPos++;
                    }
                } else if (r1 == 4 || r1 == 8) {
                    int r4 = this.mNewItemStatuses[r2] >> 5;
                    listUpdateCallback.onMoved(removePostponedUpdate(list, r4, true).currentPos, r9);
                    if (r1 == 4) {
                        listUpdateCallback.onChanged(r9, 1, this.mCallback.getChangePayload(r4, r2));
                    }
                } else if (r1 == 16) {
                    list.add(new PostponedUpdate(r2, r9, false));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + r2 + " " + Long.toBinaryString(r1));
                }
            }
        }

        private void dispatchRemovals(List<PostponedUpdate> list, ListUpdateCallback listUpdateCallback, int r11, int r12, int r13) {
            if (!this.mDetectMoves) {
                listUpdateCallback.onRemoved(r11, r12);
                return;
            }
            for (int r122 = r12 - 1; r122 >= 0; r122--) {
                int r2 = r13 + r122;
                int r1 = this.mOldItemStatuses[r2] & 31;
                if (r1 == 0) {
                    listUpdateCallback.onRemoved(r11 + r122, 1);
                    Iterator<PostponedUpdate> it = list.iterator();
                    while (it.hasNext()) {
                        it.next().currentPos--;
                    }
                } else if (r1 == 4 || r1 == 8) {
                    int r4 = this.mOldItemStatuses[r2] >> 5;
                    PostponedUpdate postponedUpdateRemovePostponedUpdate = removePostponedUpdate(list, r4, false);
                    listUpdateCallback.onMoved(r11 + r122, postponedUpdateRemovePostponedUpdate.currentPos - 1);
                    if (r1 == 4) {
                        listUpdateCallback.onChanged(postponedUpdateRemovePostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(r2, r4));
                    }
                } else if (r1 == 16) {
                    list.add(new PostponedUpdate(r2, r11 + r122, true));
                } else {
                    throw new IllegalStateException("unknown flag for pos " + r2 + " " + Long.toBinaryString(r1));
                }
            }
        }

        List<Snake> getSnakes() {
            return this.mSnakes;
        }
    }

    private static class PostponedUpdate {
        int currentPos;
        int posInOwnerList;
        boolean removal;

        public PostponedUpdate(int r1, int r2, boolean z) {
            this.posInOwnerList = r1;
            this.currentPos = r2;
            this.removal = z;
        }
    }
}
