package com.miui.calendar.backup;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import com.miui.calendar.util.z;
import com.xiaomi.settingsdk.backup.data.DataPackage;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import l7.b;
import miui.app.backup.BackupMeta;
import miui.app.backup.FullBackupAgent;
import p3.a;

public class CalendarBackupAgent
  extends FullBackupAgent
{
  protected int getVersion(int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("getVersion()=1, feature=");
    localStringBuilder.append(paramInt);
    z.a("Cal:D:CalendarBackupAgent", localStringBuilder.toString());
    return 1;
  }
  
  protected int onAttachRestore(BackupMeta paramBackupMeta, ParcelFileDescriptor paramParcelFileDescriptor, String paramString)
    throws IOException
  {
    z.a("Cal:D:CalendarBackupAgent", "onAttachRestore()");
    return super.onAttachRestore(paramBackupMeta, paramParcelFileDescriptor, paramString);
  }
  
  protected int onDataRestore(BackupMeta paramBackupMeta, ParcelFileDescriptor paramParcelFileDescriptor)
    throws IOException
  {
    z.a("Cal:D:CalendarBackupAgent", "onDataRestore()");
    if (paramBackupMeta.getVersion() == 1) {
      b.d(getApplicationContext(), paramParcelFileDescriptor, new a());
    }
    return 0;
  }
  
  protected int onFullBackup(ParcelFileDescriptor paramParcelFileDescriptor, int paramInt)
    throws IOException
  {
    z.a("Cal:D:CalendarBackupAgent", "onFullBackup()");
    paramParcelFileDescriptor = b.a(getApplicationContext(), paramParcelFileDescriptor, new a()).getFileItems().keySet().iterator();
    while (paramParcelFileDescriptor.hasNext()) {
      addAttachedFile((String)paramParcelFileDescriptor.next());
    }
    return 0;
  }
  
  protected int onRestoreEnd(BackupMeta paramBackupMeta)
    throws IOException
  {
    z.a("Cal:D:CalendarBackupAgent", "onRestoreEnd()");
    return super.onRestoreEnd(paramBackupMeta);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.backup.CalendarBackupAgent
 * JD-Core Version:    0.7.0.1
 */