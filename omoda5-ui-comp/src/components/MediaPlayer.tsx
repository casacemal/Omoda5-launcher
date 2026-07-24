import React from 'react';
import { 
  Music, 
  Play, 
  Pause, 
  SkipBack, 
  SkipForward, 
  Volume2, 
  VolumeX, 
  Radio, 
  Bluetooth, 
  Disc, 
  Sliders, 
  Sparkles,
  Heart,
  Shuffle,
  Repeat
} from 'lucide-react';
import { MediaState, Track } from '../types';
import { samplePlaylist } from '../data/initialState';

interface MediaPlayerProps {
  media: MediaState;
  onUpdateMedia: (updater: (prev: MediaState) => MediaState) => void;
}

export const MediaPlayer: React.FC<MediaPlayerProps> = ({
  media,
  onUpdateMedia
}) => {
  const selectTrack = (track: Track) => {
    onUpdateMedia(p => ({
      ...p,
      currentTrack: track,
      isPlaying: true,
      currentTimeSeconds: 0
    }));
  };

  return (
    <div className="w-full h-full bg-slate-950 p-4 sm:p-6 overflow-y-auto no-scrollbar flex flex-col justify-between select-none">
      
      {/* Top Header */}
      <div className="flex items-center justify-between border-b border-slate-800 pb-4 mb-4">
        <div>
          <h1 className="text-xl font-bold font-orbitron tracking-wide text-slate-100 flex items-center gap-2">
            <Music className="w-6 h-6 text-cyan-400" />
            SONY 3D SURROUND MULTIMEDIA SYSTEM
          </h1>
          <p className="text-xs text-slate-400 mt-0.5">Premium Audio Experience for Omoda 5</p>
        </div>

        {/* Audio Source Switcher */}
        <div className="flex items-center gap-1.5 bg-slate-900/90 rounded-2xl p-1.5 border border-slate-800">
          {(['SPOTIFY', 'BLUETOOTH', 'RADIO', 'USB'] as const).map(src => (
            <button
              key={src}
              onClick={() => onUpdateMedia(p => ({ ...p, source: src }))}
              className={`px-3 py-1 rounded-xl text-xs font-orbitron font-bold transition-all cursor-pointer ${
                media.source === src
                  ? 'bg-cyan-500/20 text-cyan-300 border border-cyan-500/40 shadow-md'
                  : 'text-slate-400 hover:text-slate-200'
              }`}
            >
              {src}
            </button>
          ))}
        </div>
      </div>

      {/* Main Music Player Stage */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-6 my-auto py-2">
        
        {/* Left: Album Art & Track Info Card */}
        <div className="lg:col-span-6 car-panel-glow rounded-3xl p-6 flex flex-col items-center justify-center text-center border border-slate-800">
          <div className="relative group my-2">
            <img 
              src={media.currentTrack.coverUrl} 
              alt={media.currentTrack.title}
              className="w-56 h-56 sm:w-64 sm:h-64 rounded-3xl object-cover shadow-2xl border-2 border-slate-700 group-hover:scale-105 transition-transform duration-500"
            />
            {media.isPlaying && (
              <span className="absolute top-3 right-3 px-2.5 py-1 rounded-full bg-cyan-500 text-slate-950 font-orbitron font-extrabold text-[10px] shadow-lg shadow-cyan-500/50">
                SONY 3D
              </span>
            )}
          </div>

          <div className="mt-4 w-full">
            <h2 className="text-xl font-bold text-slate-100 truncate">{media.currentTrack.title}</h2>
            <p className="text-sm text-cyan-400 font-medium mt-0.5">{media.currentTrack.artist}</p>
            <p className="text-xs text-slate-500 mt-0.5">{media.currentTrack.album}</p>
          </div>

          {/* Equalizer Sound Presets */}
          <div className="mt-4 flex flex-wrap items-center justify-center gap-1.5 w-full pt-4 border-t border-slate-800">
            {(['SONY_3D', 'BASS_BOOST', 'VOCAL_CLEAR', 'BALANCED'] as const).map(preset => (
              <button
                key={preset}
                onClick={() => onUpdateMedia(p => ({ ...p, soundPreset: preset }))}
                className={`px-3 py-1 rounded-xl text-[10px] font-orbitron font-bold border transition-all cursor-pointer ${
                  media.soundPreset === preset
                    ? 'bg-cyan-500/20 text-cyan-300 border-cyan-500/50 shadow-md'
                    : 'bg-slate-900 text-slate-500 border-slate-800'
                }`}
              >
                {preset.replace('_', ' ')}
              </button>
            ))}
          </div>
        </div>

        {/* Right: Playlist & Controls */}
        <div className="lg:col-span-6 car-panel rounded-3xl p-6 flex flex-col justify-between border border-slate-800 space-y-4">
          <div>
            <span className="text-xs font-orbitron font-bold text-slate-200 tracking-wider uppercase block mb-3">
              OMODA 5 PLAYLIST ({samplePlaylist.length} TRACKS)
            </span>

            <div className="space-y-2 max-h-60 overflow-y-auto no-scrollbar">
              {samplePlaylist.map(track => {
                const isCurrent = media.currentTrack.id === track.id;
                return (
                  <button
                    key={track.id}
                    onClick={() => selectTrack(track)}
                    className={`w-full p-2.5 rounded-2xl flex items-center justify-between transition-all cursor-pointer text-left border ${
                      isCurrent
                        ? 'bg-cyan-500/20 border-cyan-500/40 text-cyan-300 shadow-md'
                        : 'bg-slate-900/80 border-slate-800 hover:border-slate-700 text-slate-300'
                    }`}
                  >
                    <div className="flex items-center gap-3">
                      <img src={track.coverUrl} alt={track.title} className="w-10 h-10 rounded-xl object-cover" />
                      <div className="truncate max-w-[180px]">
                        <div className="text-xs font-bold text-slate-100 truncate">{track.title}</div>
                        <div className="text-[10px] text-slate-400 truncate">{track.artist}</div>
                      </div>
                    </div>
                    <span className="text-[10px] font-mono text-slate-500">
                      {Math.floor(track.durationSeconds / 60)}:{(track.durationSeconds % 60).toString().padStart(2, '0')}
                    </span>
                  </button>
                );
              })}
            </div>
          </div>

          {/* Player Scrub Timeline */}
          <div className="space-y-1">
            <div className="flex items-center justify-between text-[11px] font-mono text-slate-400">
              <span>0:42</span>
              <span>{Math.floor(media.currentTrack.durationSeconds / 60)}:{(media.currentTrack.durationSeconds % 60).toString().padStart(2, '0')}</span>
            </div>
            <div className="w-full bg-slate-800 h-2 rounded-full overflow-hidden">
              <div className="bg-cyan-400 h-full w-[25%]" />
            </div>
          </div>

          {/* Main Controls Row */}
          <div className="flex items-center justify-between pt-2">
            <button className="text-slate-500 hover:text-slate-300 cursor-pointer">
              <Shuffle className="w-5 h-5" />
            </button>

            <div className="flex items-center gap-4">
              <button 
                onClick={() => selectTrack(samplePlaylist[0])}
                className="p-3 text-slate-300 hover:text-white cursor-pointer"
              >
                <SkipBack className="w-6 h-6" />
              </button>

              <button
                onClick={() => onUpdateMedia(p => ({ ...p, isPlaying: !p.isPlaying }))}
                className="w-14 h-14 rounded-full bg-cyan-500 text-slate-950 flex items-center justify-center shadow-xl shadow-cyan-500/40 hover:scale-105 transition-transform cursor-pointer"
              >
                {media.isPlaying ? <Pause className="w-7 h-7" /> : <Play className="w-7 h-7 ml-1" />}
              </button>

              <button 
                onClick={() => selectTrack(samplePlaylist[1])}
                className="p-3 text-slate-300 hover:text-white cursor-pointer"
              >
                <SkipForward className="w-6 h-6" />
              </button>
            </div>

            <button className="text-slate-500 hover:text-slate-300 cursor-pointer">
              <Repeat className="w-5 h-5" />
            </button>
          </div>

        </div>

      </div>

    </div>
  );
};
