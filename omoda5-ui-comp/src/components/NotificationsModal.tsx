import React from 'react';
import { Bell, X, ShieldAlert, CheckCircle2, Info, AlertTriangle } from 'lucide-react';
import { NotificationItem } from '../types';

interface NotificationsModalProps {
  isOpen: boolean;
  onClose: () => void;
  notifications: NotificationItem[];
  onClearNotifications: () => void;
}

export const NotificationsModal: React.FC<NotificationsModalProps> = ({
  isOpen,
  onClose,
  notifications,
  onClearNotifications
}) => {
  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 bg-slate-950/80 backdrop-blur-xl flex items-center justify-center p-4 select-none">
      <div className="w-full max-w-md car-panel-glow rounded-3xl p-6 border border-slate-800 shadow-2xl relative space-y-4">
        
        <div className="flex items-center justify-between border-b border-slate-800 pb-3">
          <div className="flex items-center gap-2 font-orbitron font-bold text-slate-100 text-sm">
            <Bell className="w-5 h-5 text-cyan-400" />
            VEHICLE NOTIFICATIONS
          </div>

          <button
            onClick={onClose}
            className="p-1.5 text-slate-400 hover:text-white rounded-full hover:bg-slate-800 cursor-pointer"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        <div className="space-y-2 max-h-72 overflow-y-auto no-scrollbar">
          {notifications.map(item => (
            <div key={item.id} className="p-3 bg-slate-900 rounded-2xl border border-slate-800 space-y-1">
              <div className="flex items-center justify-between text-xs font-bold text-slate-200">
                <span className="flex items-center gap-1.5 text-cyan-400">
                  <CheckCircle2 className="w-4 h-4 text-emerald-400" />
                  {item.title}
                </span>
                <span className="text-[10px] text-slate-500 font-mono">{item.time}</span>
              </div>
              <p className="text-xs text-slate-400">{item.message}</p>
            </div>
          ))}
        </div>

        <button
          onClick={onClearNotifications}
          className="w-full py-2.5 rounded-2xl bg-slate-900 hover:bg-slate-800 border border-slate-800 text-xs font-bold text-slate-300 transition-colors cursor-pointer"
        >
          Clear All Notifications
        </button>

      </div>
    </div>
  );
};
