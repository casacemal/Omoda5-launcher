package com.chery.media.view.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.avn.tools.log.CarLog;
import com.chery.media.C0632R;
import com.chery.media.databinding.MediaPlayerUsbMusicListItemLayoutBinding;
import com.chery.media.model.business.LocalMusicBusiness;
import com.chery.media.model.business.MediaDef;
import com.chery.media.viewmodel.LocalMusicViewModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class UsbMusicPlayerListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private static final String TAG = CarLog.concatTag("MEDIA", UsbMusicPlayerListAdapter.class);
    private OnItemClickListener clickListener;
    private Context context;
    private MediaDef.UsbMusicInfo currentPlaying;
    private LocalMusicViewModel localMusicViewModel;
    private List<MediaDef.UsbMusicInfo> usbMusicInfoList = new ArrayList();
    private boolean isPlaying = false;
    private ArrayList<ViewHolder> holders = new ArrayList<>();
    private LocalMusicBusiness.HandleAddResponse addResponse = new LocalMusicBusiness.HandleAddResponse() { // from class: com.chery.media.view.adapter.UsbMusicPlayerListAdapter.1
        @Override // com.chery.media.model.business.LocalMusicBusiness.HandleAddResponse
        public void onAddResult(MediaDef.UsbMusicInfo usbMusicInfo, int r6) {
            if (UsbMusicPlayerListAdapter.this.usbMusicInfoList == null) {
                return;
            }
            Iterator it = UsbMusicPlayerListAdapter.this.holders.iterator();
            while (it.hasNext()) {
                ViewHolder viewHolder = (ViewHolder) it.next();
                if (viewHolder.getAdapterPosition() >= 0 && viewHolder.getAdapterPosition() < UsbMusicPlayerListAdapter.this.usbMusicInfoList.size() && ((MediaDef.UsbMusicInfo) UsbMusicPlayerListAdapter.this.usbMusicInfoList.get(viewHolder.getAdapterPosition())) == usbMusicInfo) {
                    if (r6 == -2 || r6 == -1) {
                        viewHolder.binding.ivDownload.endAnim();
                        viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_download);
                    } else if (r6 == 0 || r6 == 1) {
                        viewHolder.binding.ivDownload.endAnim();
                        viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_download_complete);
                    }
                }
            }
        }
    };

    public interface OnItemClickListener {
        void onItemClick(int r1, MediaDef.UsbMusicInfo usbMusicInfo);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        this.clickListener = onItemClickListener;
    }

    public UsbMusicPlayerListAdapter(Context context, LocalMusicViewModel localMusicViewModel) {
        this.context = context;
        this.localMusicViewModel = localMusicViewModel;
        LocalMusicBusiness.getInstance().addHandleAddResponse(this.addResponse);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int r2) {
        return new ViewHolder(MediaPlayerUsbMusicListItemLayoutBinding.inflate(LayoutInflater.from(viewGroup.getContext())));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(final ViewHolder viewHolder, final int r9) {
        this.holders.add(viewHolder);
        final MediaDef.UsbMusicInfo usbMusicInfo = this.usbMusicInfoList.get(r9);
        viewHolder.binding.tvMusicTitle.setText(usbMusicInfo.title);
        if (TextUtils.isEmpty(usbMusicInfo.artist) || TextUtils.equals(usbMusicInfo.artist, "<unknown>")) {
            viewHolder.binding.tvMusicArtist.setText(viewHolder.binding.getRoot().getContext().getString(C0632R.string.media_unknown));
        } else {
            viewHolder.binding.tvMusicArtist.setText(usbMusicInfo.artist);
        }
        if (this.currentPlaying == usbMusicInfo) {
            viewHolder.binding.getRoot().setSelected(true);
        } else {
            viewHolder.binding.getRoot().setSelected(false);
        }
        if (this.currentPlaying == usbMusicInfo) {
            viewHolder.binding.tvIndex.setVisibility(8);
            viewHolder.binding.anPlayIcon.setVisibility(0);
            if (this.isPlaying) {
                viewHolder.binding.anPlayIcon.startAnim();
            } else {
                viewHolder.binding.anPlayIcon.pauseAnim();
            }
        } else {
            viewHolder.binding.tvIndex.setText(String.format("%02d", Integer.valueOf(r9 + 1)));
            viewHolder.binding.anPlayIcon.setVisibility(8);
            viewHolder.binding.anPlayIcon.pauseAnim();
        }
        viewHolder.binding.clItem.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicPlayerListAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UsbMusicPlayerListAdapter.this.clickListener != null) {
                    UsbMusicPlayerListAdapter.this.clickListener.onItemClick(r9, usbMusicInfo);
                }
            }
        });
        int r92 = this.localMusicViewModel.checkLocalState(usbMusicInfo);
        if (r92 == 0) {
            viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_download);
            viewHolder.binding.ivDownload.endAnim();
        } else if (r92 == 1) {
            viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_waiting);
            viewHolder.binding.ivDownload.startAnim();
        } else if (r92 == 2) {
            viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_download_complete);
            viewHolder.binding.ivDownload.endAnim();
        }
        viewHolder.binding.ivDownload.setOnClickListener(new View.OnClickListener() { // from class: com.chery.media.view.adapter.UsbMusicPlayerListAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (UsbMusicPlayerListAdapter.this.localMusicViewModel.checkLocalState(usbMusicInfo) == 0) {
                    UsbMusicPlayerListAdapter.this.localMusicViewModel.addToLocal(usbMusicInfo, (LocalMusicBusiness.HandleAddResponse) null);
                    viewHolder.binding.ivDownload.setImageResource(C0632R.drawable.media_player_list_icon_waiting);
                    viewHolder.binding.ivDownload.startAnim();
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder viewHolder) {
        super.onViewRecycled((UsbMusicPlayerListAdapter) viewHolder);
        this.holders.remove(viewHolder);
        viewHolder.binding.anPlayIcon.cancelAnim();
        viewHolder.binding.ivDownload.cancelAnim();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<MediaDef.UsbMusicInfo> list = this.usbMusicInfoList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public class ViewHolder extends RecyclerView.ViewHolder {
        MediaPlayerUsbMusicListItemLayoutBinding binding;

        public ViewHolder(MediaPlayerUsbMusicListItemLayoutBinding mediaPlayerUsbMusicListItemLayoutBinding) {
            super(mediaPlayerUsbMusicListItemLayoutBinding.getRoot());
            this.binding = mediaPlayerUsbMusicListItemLayoutBinding;
        }
    }

    public void setMusicList(List<MediaDef.UsbMusicInfo> list) {
        this.usbMusicInfoList = list;
        notifyDataSetChanged();
    }

    public List<MediaDef.UsbMusicInfo> getMusicList() {
        return this.usbMusicInfoList;
    }

    public void setCurrentPlaying(MediaDef.UsbMusicInfo usbMusicInfo) {
        this.currentPlaying = usbMusicInfo;
        notifyDataSetChanged();
    }

    public void setPlaying(boolean z) {
        this.isPlaying = z;
        notifyDataSetChanged();
    }

    public void clear() {
        LocalMusicBusiness.getInstance().removeHandleAddResponse(this.addResponse);
    }
}
