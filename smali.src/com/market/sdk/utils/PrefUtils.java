package com.market.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Looper;

public class PrefUtils
{
  private static void a(SharedPreferences.Editor paramEditor)
  {
    if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
      paramEditor.apply();
    } else {
      paramEditor.commit();
    }
  }
  
  public static long b(String paramString, PrefFile... paramVarArgs)
  {
    return d(paramVarArgs).getLong(paramString, 0L);
  }
  
  public static SharedPreferences c(PrefFile paramPrefFile)
  {
    Context localContext = a.a();
    String str = paramPrefFile.fileName;
    int i;
    if (paramPrefFile.isMultiProcess) {
      i = 4;
    } else {
      i = 0;
    }
    return localContext.getSharedPreferences(str, i);
  }
  
  private static SharedPreferences d(PrefFile[] paramArrayOfPrefFile)
  {
    if (paramArrayOfPrefFile.length == 0) {
      paramArrayOfPrefFile = PrefFile.DEFAULT;
    } else {
      paramArrayOfPrefFile = paramArrayOfPrefFile[0];
    }
    return c(paramArrayOfPrefFile);
  }
  
  public static void e(String paramString, long paramLong, PrefFile... paramVarArgs)
  {
    paramVarArgs = d(paramVarArgs).edit();
    paramVarArgs.putLong(paramString, paramLong);
    a(paramVarArgs);
  }
  
  public static enum PrefFile
  {
    public final String fileName;
    public boolean isMultiProcess;
    
    static
    {
      PrefFile localPrefFile = new PrefFile("DEFAULT", 0, "com.xiaomi.market.sdk_pref", false);
      DEFAULT = localPrefFile;
      $VALUES = new PrefFile[] { localPrefFile };
    }
    
    private PrefFile(String paramString, boolean paramBoolean)
    {
      this.fileName = paramString;
      this.isMultiProcess = paramBoolean;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.market.sdk.utils.PrefUtils
 * JD-Core Version:    0.7.0.1
 */