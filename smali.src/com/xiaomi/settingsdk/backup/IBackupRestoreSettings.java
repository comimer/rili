package com.xiaomi.settingsdk.backup;

import android.content.Intent;
import android.os.IInterface;
import android.os.RemoteException;

public abstract interface IBackupRestoreSettings
  extends IInterface
{
  public abstract void handleSettingsIntent(Intent paramIntent)
    throws RemoteException;
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.settingsdk.backup.IBackupRestoreSettings
 * JD-Core Version:    0.7.0.1
 */