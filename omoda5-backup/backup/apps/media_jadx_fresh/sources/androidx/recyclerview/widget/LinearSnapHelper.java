package androidx.recyclerview.widget;

import android.graphics.PointF;
import android.view.View;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class LinearSnapHelper extends SnapHelper {
    private static final float INVALID_DISTANCE = 1.0f;
    private OrientationHelper mHorizontalHelper;
    private OrientationHelper mVerticalHelper;

    @Override // androidx.recyclerview.widget.SnapHelper
    public int[] calculateDistanceToFinalSnap(RecyclerView.LayoutManager layoutManager, View view) {
        int[] r0 = new int[2];
        if (layoutManager.canScrollHorizontally()) {
            r0[0] = distanceToCenter(layoutManager, view, getHorizontalHelper(layoutManager));
        } else {
            r0[0] = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r0[1] = distanceToCenter(layoutManager, view, getVerticalHelper(layoutManager));
        } else {
            r0[1] = 0;
        }
        return r0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.SnapHelper
    public int findTargetSnapPosition(RecyclerView.LayoutManager layoutManager, int r10, int r11) {
        int itemCount;
        View viewFindSnapView;
        int position;
        int r4;
        PointF pointFComputeScrollVectorForPosition;
        int r102;
        int r8;
        if (!(layoutManager instanceof RecyclerView.SmoothScroller.ScrollVectorProvider) || (itemCount = layoutManager.getItemCount()) == 0 || (viewFindSnapView = findSnapView(layoutManager)) == null || (position = layoutManager.getPosition(viewFindSnapView)) == -1 || (pointFComputeScrollVectorForPosition = ((RecyclerView.SmoothScroller.ScrollVectorProvider) layoutManager).computeScrollVectorForPosition(itemCount - 1)) == null) {
            return -1;
        }
        if (layoutManager.canScrollHorizontally()) {
            r102 = estimateNextPositionDiffForFling(layoutManager, getHorizontalHelper(layoutManager), r10, 0);
            if (pointFComputeScrollVectorForPosition.x < 0.0f) {
                r102 = -r102;
            }
        } else {
            r102 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r8 = estimateNextPositionDiffForFling(layoutManager, getVerticalHelper(layoutManager), 0, r11);
            if (pointFComputeScrollVectorForPosition.y < 0.0f) {
                r8 = -r8;
            }
        } else {
            r8 = 0;
        }
        if (layoutManager.canScrollVertically()) {
            r102 = r8;
        }
        if (r102 == 0) {
            return -1;
        }
        int r2 = position + r102;
        int r7 = r2 >= 0 ? r2 : 0;
        return r7 >= itemCount ? r4 : r7;
    }

    @Override // androidx.recyclerview.widget.SnapHelper
    public View findSnapView(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager.canScrollVertically()) {
            return findCenterView(layoutManager, getVerticalHelper(layoutManager));
        }
        if (layoutManager.canScrollHorizontally()) {
            return findCenterView(layoutManager, getHorizontalHelper(layoutManager));
        }
        return null;
    }

    private int distanceToCenter(RecyclerView.LayoutManager layoutManager, View view, OrientationHelper orientationHelper) {
        return (orientationHelper.getDecoratedStart(view) + (orientationHelper.getDecoratedMeasurement(view) / 2)) - (orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2));
    }

    private int estimateNextPositionDiffForFling(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper, int r4, int r5) {
        int[] r42 = calculateScrollDistance(r4, r5);
        float fComputeDistancePerChild = computeDistancePerChild(layoutManager, orientationHelper);
        if (fComputeDistancePerChild <= 0.0f) {
            return 0;
        }
        return Math.round((Math.abs(r42[0]) > Math.abs(r42[1]) ? r42[0] : r42[1]) / fComputeDistancePerChild);
    }

    private View findCenterView(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        View view = null;
        if (childCount == 0) {
            return null;
        }
        int startAfterPadding = orientationHelper.getStartAfterPadding() + (orientationHelper.getTotalSpace() / 2);
        int r2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
        for (int r3 = 0; r3 < childCount; r3++) {
            View childAt = layoutManager.getChildAt(r3);
            int r5 = Math.abs((orientationHelper.getDecoratedStart(childAt) + (orientationHelper.getDecoratedMeasurement(childAt) / 2)) - startAfterPadding);
            if (r5 < r2) {
                view = childAt;
                r2 = r5;
            }
        }
        return view;
    }

    private float computeDistancePerChild(RecyclerView.LayoutManager layoutManager, OrientationHelper orientationHelper) {
        int childCount = layoutManager.getChildCount();
        if (childCount == 0) {
            return 1.0f;
        }
        View view = null;
        int r5 = Integer.MIN_VALUE;
        int r4 = Integer.MAX_VALUE;
        View view2 = null;
        for (int r1 = 0; r1 < childCount; r1++) {
            View childAt = layoutManager.getChildAt(r1);
            int position = layoutManager.getPosition(childAt);
            if (position != -1) {
                if (position < r4) {
                    view = childAt;
                    r4 = position;
                }
                if (position > r5) {
                    view2 = childAt;
                    r5 = position;
                }
            }
        }
        if (view == null || view2 == null) {
            return 1.0f;
        }
        int r10 = Math.max(orientationHelper.getDecoratedEnd(view), orientationHelper.getDecoratedEnd(view2)) - Math.min(orientationHelper.getDecoratedStart(view), orientationHelper.getDecoratedStart(view2));
        if (r10 == 0) {
            return 1.0f;
        }
        return (r10 * 1.0f) / ((r5 - r4) + 1);
    }

    private OrientationHelper getVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mVerticalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mVerticalHelper = OrientationHelper.createVerticalHelper(layoutManager);
        }
        return this.mVerticalHelper;
    }

    private OrientationHelper getHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        OrientationHelper orientationHelper = this.mHorizontalHelper;
        if (orientationHelper == null || orientationHelper.mLayoutManager != layoutManager) {
            this.mHorizontalHelper = OrientationHelper.createHorizontalHelper(layoutManager);
        }
        return this.mHorizontalHelper;
    }
}
