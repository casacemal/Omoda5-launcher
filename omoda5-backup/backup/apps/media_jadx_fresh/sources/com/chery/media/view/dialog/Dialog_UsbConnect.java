package com.chery.media.view.dialog;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;
import com.avn.tools.log.CarLog;
import com.chery.common.PackageConstants;
import com.chery.common.PageConstants;
import com.chery.common.PageManager;
import com.chery.media.C0632R;
import com.chery.media.databinding.DialogUsbConnectLayoutBinding;
import com.chery.media.model.business.MediaBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.model.business.UsbScannerBusiness;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class Dialog_UsbConnect extends DialogBase {
    private static final String TAG = CarLog.concatTag("SET", Dialog_UsbConnect.class);
    private DialogUsbConnectLayoutBinding binding;
    private Context context;
    private Handler handler;
    private ObjectAnimator musicAni;
    private ObjectAnimator picAni;
    private int thisUsbType;
    private UsbScannerBusiness.OnUsbDeviceInfoListener usbDeviceInfoListener;
    private ObjectAnimator videoAni;

    public Dialog_UsbConnect(final Context context, int r3) {
        super(context);
        this.context = context;
        this.thisUsbType = r3;
        this.handler = new Handler();
        requestWindowFeature(1);
        DialogUsbConnectLayoutBinding dialogUsbConnectLayoutBindingInflate = DialogUsbConnectLayoutBinding.inflate(getLayoutInflater());
        this.binding = dialogUsbConnectLayoutBindingInflate;
        setContentView(dialogUsbConnectLayoutBindingInflate.getRoot());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.type |= 2008;
        attributes.gravity = 17;
        attributes.width = 800;
        attributes.height = 505;
        getWindow().setAttributes(attributes);
        getWindow().setBackgroundDrawableResource(R.color.transparent);
        updateView();
        this.binding.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Dialog_UsbConnect.this.dismiss();
            }
        });
        this.binding.tvTitle1.setText(context.getString(C0632R.string.popup_usb_connect_found));
        this.usbDeviceInfoListener = new UsbScannerBusiness.OnUsbDeviceInfoListener() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.2
            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onMountStatusChanged(int r2, boolean z) {
                if (r2 != Dialog_UsbConnect.this.thisUsbType || z) {
                    return;
                }
                Dialog_UsbConnect.this.handler.post(new Runnable() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Dialog_UsbConnect.this.dismiss();
                    }
                });
            }

            @Override // com.chery.media.model.business.UsbScannerBusiness.OnUsbDeviceInfoListener
            public void onScanInfoUpdate(int r1, int r2) {
                if (r1 == Dialog_UsbConnect.this.thisUsbType) {
                    Dialog_UsbConnect.this.updateView();
                }
            }
        };
        UsbScannerBusiness.getInstance().addUsbDeviceInfoListener(this.usbDeviceInfoListener);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws UnsupportedEncodingException {
                Dialog_UsbConnect.this.dismiss();
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.MEDIA_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.Media.MEDIA_PAGE_ID_KEY, PageConstants.Media.USB_TYPE_KEY}, new String[]{PageConstants.Media.MediaPageId.PAGE_USB_MUSIC_LIST, MediaDef.getUsbTypePage(Dialog_UsbConnect.this.thisUsbType)});
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
        };
        this.binding.tvMusicInfo.setOnClickListener(onClickListener);
        this.binding.ivGotoMusic.setOnClickListener(onClickListener);
        View.OnClickListener onClickListener2 = new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws UnsupportedEncodingException {
                Dialog_UsbConnect.this.dismiss();
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.PICTURE_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.Media.PICTURE_PAGE_ID_KEY, PageConstants.Media.USB_TYPE_KEY}, new String[]{"PAGE_MAIN", MediaDef.getUsbTypePage(Dialog_UsbConnect.this.thisUsbType)});
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
        };
        this.binding.tvPicInfo.setOnClickListener(onClickListener2);
        this.binding.ivGotoPic.setOnClickListener(onClickListener2);
        View.OnClickListener onClickListener3 = new View.OnClickListener() { // from class: com.chery.media.view.dialog.Dialog_UsbConnect.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws UnsupportedEncodingException {
                Dialog_UsbConnect.this.dismiss();
                new PageManager(context).openPage("com.chery.media", PackageConstants.Media.VIDEO_ACTIVITY_NAME, PageConstants.Media.ACTION_OPEN, new String[]{PageConstants.Media.VIDEO_PAGE_ID_KEY, PageConstants.Media.USB_TYPE_KEY}, new String[]{"PAGE_MAIN", MediaDef.getUsbTypePage(Dialog_UsbConnect.this.thisUsbType)});
                MediaBusiness.getInstance().getCarplayModel().requestVideoResource(false);
            }
        };
        this.binding.tvVideoInfo.setOnClickListener(onClickListener3);
        this.binding.ivGotoVideo.setOnClickListener(onClickListener3);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        UsbScannerBusiness.getInstance().removeUsbDeviceInfoListener(this.usbDeviceInfoListener);
        ObjectAnimator objectAnimator = this.musicAni;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimator2 = this.picAni;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        ObjectAnimator objectAnimator3 = this.videoAni;
        if (objectAnimator3 != null) {
            objectAnimator3.cancel();
        }
        super.dismiss();
    }

    public void updateView() {
        MediaDef.UsbDeviceInfo usbDeviceInfo = UsbScannerBusiness.getInstance().getUsbDeviceInfo(this.thisUsbType);
        if (usbDeviceInfo.mounted) {
            if (usbDeviceInfo.musicsCount > 0) {
                ObjectAnimator objectAnimator = this.musicAni;
                if (objectAnimator != null) {
                    objectAnimator.end();
                }
                this.binding.ivMusicIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_music);
                this.binding.ivMusicIcon.setEnabled(true);
                this.binding.tvMusicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_music));
                this.binding.tvMusicInfo.setEnabled(true);
                this.binding.ivGotoMusic.setEnabled(true);
            } else if (usbDeviceInfo.scanStatus == 35) {
                ObjectAnimator objectAnimator2 = this.musicAni;
                if (objectAnimator2 != null) {
                    objectAnimator2.end();
                }
                this.binding.ivMusicIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_music);
                this.binding.ivMusicIcon.setEnabled(false);
                this.binding.tvMusicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_no_musics));
                this.binding.tvMusicInfo.setEnabled(false);
                this.binding.ivGotoMusic.setEnabled(false);
            } else {
                this.binding.ivMusicIcon.setImageResource(C0632R.drawable.popup_usb_connect_loading_icon);
                if (this.musicAni == null) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.binding.ivMusicIcon, "rotation", 0.0f, 360.0f);
                    this.musicAni = objectAnimatorOfFloat;
                    objectAnimatorOfFloat.setDuration(3000L);
                    this.musicAni.setRepeatCount(-1);
                    this.musicAni.setRepeatMode(1);
                    this.musicAni.setInterpolator(new LinearInterpolator());
                }
                if (!this.musicAni.isStarted() || !this.musicAni.isRunning() || this.musicAni.isPaused()) {
                    this.musicAni.start();
                }
                this.binding.tvMusicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_music));
                this.binding.tvMusicInfo.setEnabled(false);
                this.binding.ivGotoMusic.setEnabled(false);
            }
            if (usbDeviceInfo.picturesCount > 0) {
                ObjectAnimator objectAnimator3 = this.picAni;
                if (objectAnimator3 != null) {
                    objectAnimator3.end();
                }
                this.binding.ivPicIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_pic);
                this.binding.ivPicIcon.setEnabled(true);
                this.binding.tvPicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_pic));
                this.binding.tvPicInfo.setEnabled(true);
                this.binding.ivGotoPic.setEnabled(true);
            } else if (usbDeviceInfo.scanStatus == 35) {
                ObjectAnimator objectAnimator4 = this.picAni;
                if (objectAnimator4 != null) {
                    objectAnimator4.end();
                }
                this.binding.ivPicIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_pic);
                this.binding.ivPicIcon.setEnabled(false);
                this.binding.tvPicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_no_pics));
                this.binding.tvPicInfo.setEnabled(false);
                this.binding.ivGotoPic.setEnabled(false);
            } else {
                this.binding.ivPicIcon.setImageResource(C0632R.drawable.popup_usb_connect_loading_icon);
                if (this.picAni == null) {
                    ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.binding.ivPicIcon, "rotation", 0.0f, 360.0f);
                    this.picAni = objectAnimatorOfFloat2;
                    objectAnimatorOfFloat2.setDuration(3000L);
                    this.picAni.setRepeatCount(-1);
                    this.picAni.setRepeatMode(1);
                    this.picAni.setInterpolator(new LinearInterpolator());
                }
                if (!this.picAni.isStarted() || !this.picAni.isRunning() || this.picAni.isPaused()) {
                    this.picAni.start();
                }
                this.binding.tvPicInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_pic));
                this.binding.tvPicInfo.setEnabled(false);
                this.binding.ivGotoPic.setEnabled(false);
            }
            if (usbDeviceInfo.videosCount > 0) {
                ObjectAnimator objectAnimator5 = this.videoAni;
                if (objectAnimator5 != null) {
                    objectAnimator5.end();
                }
                this.binding.ivVideoIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_video);
                this.binding.ivVideoIcon.setEnabled(true);
                this.binding.tvVideoInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_video));
                this.binding.tvVideoInfo.setEnabled(true);
                this.binding.ivGotoVideo.setEnabled(true);
                return;
            }
            if (usbDeviceInfo.scanStatus == 35) {
                ObjectAnimator objectAnimator6 = this.videoAni;
                if (objectAnimator6 != null) {
                    objectAnimator6.end();
                }
                this.binding.ivVideoIcon.setImageResource(C0632R.drawable.popup_usb_connect_btn_video);
                this.binding.ivVideoIcon.setEnabled(false);
                this.binding.tvVideoInfo.setText(C0632R.string.popup_usb_connect_no_videos);
                this.binding.tvVideoInfo.setEnabled(false);
                this.binding.ivGotoVideo.setEnabled(false);
                return;
            }
            this.binding.ivVideoIcon.setImageResource(C0632R.drawable.popup_usb_connect_loading_icon);
            if (this.videoAni == null) {
                ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.binding.ivVideoIcon, "rotation", 0.0f, 360.0f);
                this.videoAni = objectAnimatorOfFloat3;
                objectAnimatorOfFloat3.setDuration(3000L);
                this.videoAni.setRepeatCount(-1);
                this.videoAni.setRepeatMode(1);
                this.videoAni.setInterpolator(new LinearInterpolator());
            }
            if (!this.videoAni.isStarted() || !this.videoAni.isRunning() || this.videoAni.isPaused()) {
                this.videoAni.start();
            }
            this.binding.tvVideoInfo.setText(this.context.getString(C0632R.string.popup_usb_connect_video));
            this.binding.tvVideoInfo.setEnabled(false);
            this.binding.ivGotoVideo.setEnabled(false);
            return;
        }
        dismiss();
    }
}
