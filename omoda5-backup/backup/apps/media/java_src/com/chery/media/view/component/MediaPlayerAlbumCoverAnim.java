package com.chery.media.view.component;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chery.media.C0632R;

/* loaded from: classes.dex */
public class MediaPlayerAlbumCoverAnim extends ConstraintLayout {
    private ObjectAnimator animator;

    public MediaPlayerAlbumCoverAnim(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(C0632R.layout.media_player_album_cover_anim, this);
        setAnim();
    }

    public MediaPlayerAlbumCoverAnim(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(C0632R.layout.media_player_album_cover_anim, this);
        setAnim();
    }

    public MediaPlayerAlbumCoverAnim(Context context, AttributeSet attributeSet, int r3) {
        super(context, attributeSet, r3);
        LayoutInflater.from(context).inflate(C0632R.layout.media_player_album_cover_anim, this);
        setAnim();
    }

    private void setAnim() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((ImageView) findViewById(C0632R.id.iv_album_cover_bg), "rotation", 0.0f, 360.0f);
        this.animator = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(8000L);
        this.animator.setRepeatCount(-1);
        this.animator.setRepeatMode(1);
        this.animator.setInterpolator(new LinearInterpolator());
    }

    public void startAnim() {
        if (!this.animator.isStarted()) {
            this.animator.start();
        } else if (this.animator.isPaused()) {
            this.animator.resume();
        }
    }

    public void pauseAnim() {
        this.animator.pause();
    }

    public void cancelAnim() {
        this.animator.cancel();
    }

    public void endAnim() {
        this.animator.end();
    }

    public boolean isRunning() {
        return this.animator.isStarted() && !this.animator.isPaused();
    }

    public void setAlbumCover(Drawable drawable) {
        if (drawable != null) {
            ((ImageView) findViewById(C0632R.id.iv_album_cover)).setImageDrawable(drawable);
        }
    }
}
