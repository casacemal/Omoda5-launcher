package com.chery.media.view.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import androidx.viewpager.widget.PagerAdapter;
import com.avn.tools.log.CarLog;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.request.target.DrawableImageViewTarget;
import com.chery.media.C0632R;
import com.chery.media.model.business.MediaDef;
import com.github.chrisbanes.photoview.OnScaleChangedListener;
import com.github.chrisbanes.photoview.PhotoView;
import com.github.chrisbanes.photoview.PhotoViewAttacher;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PictureViewerAdapter extends PagerAdapter {
    private static final String TAG = CarLog.concatTag("MEDIA", PictureViewerAdapter.class);
    private List<View> cacheViews = new ArrayList();
    private OnItemClickListener clickListener;
    private Context context;
    private OnCurrentItemListener currentItemListener;
    private View currentItemView;
    private int currentPosition;
    private List<MediaDef.UsbPictureInfo> pictureInfoList;
    private OnPhotoViewScaleChangeListener scaleChangeListener;

    public interface OnCurrentItemListener {
        void onCurrentItemChanged(View view, View view2);

        void onCurrentPositionChanged(int r1, MediaDef.UsbPictureInfo usbPictureInfo, View view, View view2);
    }

    public interface OnItemClickListener {
        void onItemClick(int r1);
    }

    public interface OnPhotoViewScaleChangeListener {
        void onScaleChanged(int r1, PhotoView photoView, float f);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getItemPosition(Object obj) {
        return -2;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public void setOnCurrentItemListener(OnCurrentItemListener onCurrentItemListener) {
        this.currentItemListener = onCurrentItemListener;
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public void setOnPhotoViewScaleListener(OnPhotoViewScaleChangeListener onPhotoViewScaleChangeListener) {
        this.scaleChangeListener = onPhotoViewScaleChangeListener;
    }

    public PictureViewerAdapter(Context context) {
        this.context = context;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, final int r9) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        View viewInflate;
        if (!this.cacheViews.isEmpty()) {
            viewInflate = this.cacheViews.remove(0);
        } else {
            viewInflate = LayoutInflater.from(this.context).inflate(C0632R.layout.picture_fullscreen_layout, (ViewGroup) null);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.PictureViewerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (PictureViewerAdapter.this.clickListener != null) {
                        PictureViewerAdapter.this.clickListener.onItemClick(r9);
                    }
                }
            });
        }
        viewGroup.addView(viewInflate, -1, -1);
        final PhotoView photoView = (PhotoView) viewInflate.findViewById(C0632R.id.iv_pic);
        setScaleSensitivity(photoView);
        List<MediaDef.UsbPictureInfo> list = this.pictureInfoList;
        if (list == null || list.isEmpty()) {
            photoView.setImageDrawable(null);
            return viewInflate;
        }
        List<MediaDef.UsbPictureInfo> list2 = this.pictureInfoList;
        MediaDef.UsbPictureInfo usbPictureInfo = list2.get(r9 % list2.size());
        photoView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        photoView.setScaleLevels(1.0f, 2.5f, 4.0f);
        photoView.setOnScaleChangeListener(new OnScaleChangedListener() { // from class: com.chery.media.view.adapter.PictureViewerAdapter.2
            @Override // com.github.chrisbanes.photoview.OnScaleChangedListener
            public void onScaleChange(float f, float f2, float f3) {
                if (PictureViewerAdapter.this.scaleChangeListener != null) {
                    OnPhotoViewScaleChangeListener onPhotoViewScaleChangeListener = PictureViewerAdapter.this.scaleChangeListener;
                    int r2 = r9;
                    PhotoView photoView2 = photoView;
                    onPhotoViewScaleChangeListener.onScaleChanged(r2, photoView2, photoView2.getScale());
                }
            }
        });
        photoView.setOnDoubleTapListener(new GestureDetector.OnDoubleTapListener() { // from class: com.chery.media.view.adapter.PictureViewerAdapter.3
            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTapEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (PictureViewerAdapter.this.clickListener == null) {
                    return true;
                }
                PictureViewerAdapter.this.clickListener.onItemClick(r9);
                return true;
            }

            @Override // android.view.GestureDetector.OnDoubleTapListener
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if (Math.abs(photoView.getScale() - photoView.getMinimumScale()) <= 0.1d) {
                    PhotoView photoView2 = photoView;
                    photoView2.setScale(photoView2.getMaximumScale(), true);
                } else {
                    PhotoView photoView3 = photoView;
                    photoView3.setScale(photoView3.getMinimumScale(), true);
                }
                return true;
            }
        });
        final ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate.findViewById(C0632R.id.cl_load_failed);
        if (usbPictureInfo.size <= 31457280) {
            photoView.setVisibility(0);
            constraintLayout.setVisibility(8);
            Glide.with(this.context).load(usbPictureInfo.path).centerInside().placeholder(C0632R.drawable.pic_all_default_pic_icon).timeout(PathInterpolatorCompat.MAX_NUM_POINTS).into((RequestBuilder) new DrawableImageViewTarget(photoView) { // from class: com.chery.media.view.adapter.PictureViewerAdapter.4
                @Override // com.bumptech.glide.request.target.ImageViewTarget, com.bumptech.glide.request.target.BaseTarget, com.bumptech.glide.request.target.Target
                public void onLoadFailed(Drawable drawable) {
                    super.onLoadFailed(drawable);
                    photoView.setVisibility(8);
                    constraintLayout.setVisibility(0);
                }
            });
        } else {
            photoView.setVisibility(8);
            constraintLayout.setVisibility(0);
        }
        return viewInflate;
    }

    private void setScaleSensitivity(PhotoView photoView) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = PhotoView.class.getDeclaredField("attacher");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(photoView);
            Field declaredField2 = PhotoViewAttacher.class.getDeclaredField("mScaleDragDetector");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(obj);
            Field declaredField3 = obj2.getClass().getDeclaredField("mDetector");
            declaredField3.setAccessible(true);
            Object obj3 = declaredField3.get(obj2);
            Field declaredField4 = obj3.getClass().getDeclaredField("mMinSpan");
            declaredField4.setAccessible(true);
            declaredField4.set(obj3, 1);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int r2, Object obj) {
        View view = (View) obj;
        viewGroup.removeView(view);
        this.cacheViews.add(view);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void setPrimaryItem(ViewGroup viewGroup, int r3, Object obj) {
        MediaDef.UsbPictureInfo usbPictureInfo;
        super.setPrimaryItem(viewGroup, r3, obj);
        View view = (View) obj;
        View view2 = this.currentItemView;
        if (view != view2) {
            this.currentItemView = view;
            if (r3 == this.currentPosition) {
                OnCurrentItemListener onCurrentItemListener = this.currentItemListener;
                if (onCurrentItemListener != null) {
                    onCurrentItemListener.onCurrentItemChanged(view, view2);
                    return;
                }
                return;
            }
            this.currentPosition = r3;
            if (this.currentItemListener != null) {
                List<MediaDef.UsbPictureInfo> list = this.pictureInfoList;
                if (list == null || list.isEmpty()) {
                    usbPictureInfo = null;
                } else {
                    List<MediaDef.UsbPictureInfo> list2 = this.pictureInfoList;
                    usbPictureInfo = list2.get(r3 % list2.size());
                }
                this.currentItemListener.onCurrentPositionChanged(r3, usbPictureInfo, this.currentItemView, view2);
            }
        }
    }

    public View getCurrentItemView() {
        return this.currentItemView;
    }

    public void setPictureList(List<MediaDef.UsbPictureInfo> list) {
        this.pictureInfoList = list;
        notifyDataSetChanged();
    }
}
