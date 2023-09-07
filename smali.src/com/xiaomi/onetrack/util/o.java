package com.xiaomi.onetrack.util;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import java.util.UUID;

public class o
{
  private static final String a = "o";
  private static final String b = "content://com.miui.analytics.OneTrackProvider/insId";
  private static final String c = "insId";
  private static final String d = "pkg";
  private static final String e = "sign";
  private static volatile o f;
  private static String g;
  private static String j;
  private final Context h = com.xiaomi.onetrack.f.a.a();
  private final Context i = com.xiaomi.onetrack.f.a.b();
  private boolean k = false;
  
  private o()
  {
    j = com.xiaomi.onetrack.f.a.e();
  }
  
  public static o a()
  {
    if (f == null) {
      try
      {
        if (f == null)
        {
          o localo = new com/xiaomi/onetrack/util/o;
          localo.<init>();
          f = localo;
        }
      }
      finally {}
    }
    return f;
  }
  
  private void b(String paramString)
  {
    try
    {
      if (TextUtils.isEmpty(paramString)) {
        return;
      }
      Uri localUri = Uri.parse("content://com.miui.analytics.OneTrackProvider/insId");
      ContentValues localContentValues = new android/content/ContentValues;
      localContentValues.<init>();
      localContentValues.put(j, paramString);
      this.i.getContentResolver().insert(localUri, localContentValues);
    }
    catch (Exception localException)
    {
      aa.e(paramString);
      p.a(a, "setRemoteCacheInstanceId e", localException);
    }
  }
  
  private String c()
  {
    Cursor localCursor = null;
    Object localObject1 = null;
    Object localObject3 = null;
    Object localObject4 = localCursor;
    Object localObject2;
    try
    {
      Uri.Builder localBuilder = Uri.parse("content://com.miui.analytics.OneTrackProvider/insId").buildUpon();
      localObject4 = localCursor;
      localBuilder.appendQueryParameter("pkg", j);
      localObject4 = localCursor;
      StringBuilder localStringBuilder = new java/lang/StringBuilder;
      localObject4 = localCursor;
      localStringBuilder.<init>();
      localObject4 = localCursor;
      localStringBuilder.append("insId");
      localObject4 = localCursor;
      localStringBuilder.append(j);
      localObject4 = localCursor;
      localBuilder.appendQueryParameter("sign", com.xiaomi.onetrack.d.a.a(localStringBuilder.toString()));
      localObject4 = localCursor;
      localCursor = this.i.getContentResolver().query(localBuilder.build(), null, null, null, null);
      if (localCursor != null)
      {
        for (localObject1 = localObject3;; localObject1 = localCursor.getString(0))
        {
          localObject4 = localObject1;
          if (!localCursor.moveToNext()) {
            break;
          }
          localObject4 = localObject1;
        }
        localObject4 = localObject1;
        localCursor.close();
      }
    }
    catch (Exception localException)
    {
      p.a(a, "getRemoteCacheInstanceId e", localException);
      localObject2 = localObject4;
    }
    return localObject2;
  }
  
  private String d()
  {
    String str = aa.a(this.h);
    if (TextUtils.isEmpty(str)) {
      return aa.m();
    }
    aa.e(str);
    return str;
  }
  
  public void a(Boolean paramBoolean)
  {
    this.k = paramBoolean.booleanValue();
  }
  
  public void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    g = paramString;
    if (this.k) {
      b(paramString);
    }
    aa.e(g);
  }
  
  public String b()
  {
    if (!TextUtils.isEmpty(g)) {
      return g;
    }
    String str3;
    if (this.k)
    {
      String str1 = c();
      String str2 = d();
      if ((TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
      {
        b(str2);
        str3 = str2;
      }
      else
      {
        str3 = str1;
        if (!TextUtils.isEmpty(str1))
        {
          str3 = str1;
          if (TextUtils.isEmpty(str2))
          {
            aa.e(str1);
            str3 = str1;
          }
        }
      }
    }
    else
    {
      str3 = d();
    }
    if (TextUtils.isEmpty(str3))
    {
      str3 = UUID.randomUUID().toString();
      g = str3;
      if (this.k) {
        b(str3);
      }
      aa.e(g);
    }
    else
    {
      g = str3;
    }
    return g;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.o
 * JD-Core Version:    0.7.0.1
 */