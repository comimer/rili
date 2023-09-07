package com.xiaomi.onetrack.util.oaid.helpers;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

public class f
{
  private String a(Cursor paramCursor)
  {
    String str = null;
    if (paramCursor == null) {
      return null;
    }
    if (paramCursor.isClosed()) {
      return null;
    }
    paramCursor.moveToFirst();
    int i = paramCursor.getColumnIndex("value");
    if (i > 0) {
      str = paramCursor.getString(i);
    }
    i = paramCursor.getColumnIndex("code");
    if (i > 0) {
      paramCursor.getInt(i);
    }
    i = paramCursor.getColumnIndex("expired");
    if (i > 0) {
      paramCursor.getLong(i);
    }
    return str;
  }
  
  public String a(Context paramContext)
  {
    Object localObject1 = Uri.parse("content://com.meizu.flyme.openidsdk/");
    String str = "";
    ContentResolver localContentResolver = paramContext.getContentResolver();
    paramContext = str;
    try
    {
      localObject1 = localContentResolver.query((Uri)localObject1, null, null, new String[] { "oaid" }, null);
      paramContext = str;
      str = a((Cursor)localObject1);
      paramContext = str;
      ((Cursor)localObject1).close();
      paramContext = str;
    }
    finally
    {
      localObject2.printStackTrace();
    }
    return paramContext;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.xiaomi.onetrack.util.oaid.helpers.f
 * JD-Core Version:    0.7.0.1
 */