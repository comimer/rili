package com.android.calendar.common;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.miui.calendar.util.c0;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class a<T>
  extends c0<T>
{
  private static AtomicInteger f = new AtomicInteger(0);
  private Context d;
  private Handler e = this;
  
  public a(Context paramContext, T paramT)
  {
    super(paramT);
    this.d = paramContext;
  }
  
  public final int f(int paramInt)
  {
    return AsyncQueryServiceHelper.a(paramInt);
  }
  
  public final int g()
  {
    return f.getAndIncrement();
  }
  
  protected void h(int paramInt, Object paramObject, ContentProviderResult[] paramArrayOfContentProviderResult) {}
  
  public void handleMessage(Message paramMessage)
  {
    AsyncQueryServiceHelper.a locala = (AsyncQueryServiceHelper.a)paramMessage.obj;
    int i = paramMessage.what;
    int j = paramMessage.arg1;
    if (j != 1)
    {
      if (j != 2)
      {
        if (j != 3)
        {
          if (j != 4)
          {
            if (j == 5) {
              h(i, locala.l, (ContentProviderResult[])locala.k);
            }
          }
          else {
            i(i, locala.l, ((Integer)locala.k).intValue());
          }
        }
        else {
          l(i, locala.l, ((Integer)locala.k).intValue());
        }
      }
      else {
        j(i, locala.l, (Uri)locala.k);
      }
    }
    else {
      k(i, locala.l, (Cursor)locala.k);
    }
  }
  
  protected void i(int paramInt1, Object paramObject, int paramInt2) {}
  
  protected void j(int paramInt, Object paramObject, Uri paramUri) {}
  
  protected void k(int paramInt, Object paramObject, Cursor paramCursor) {}
  
  protected void l(int paramInt1, Object paramObject, int paramInt2) {}
  
  public void m(int paramInt, Object paramObject, String paramString, ArrayList<ContentProviderOperation> paramArrayList, long paramLong)
  {
    AsyncQueryServiceHelper.a locala = new AsyncQueryServiceHelper.a();
    locala.b = 5;
    locala.c = this.d.getContentResolver();
    locala.f = this.e;
    locala.a = paramInt;
    locala.l = paramObject;
    locala.e = paramString;
    locala.n = paramArrayList;
    locala.o = paramLong;
    AsyncQueryServiceHelper.b(this.d, locala);
  }
  
  public void n(int paramInt, Object paramObject, Uri paramUri, String paramString, String[] paramArrayOfString, long paramLong)
  {
    AsyncQueryServiceHelper.a locala = new AsyncQueryServiceHelper.a();
    locala.b = 4;
    locala.c = this.d.getContentResolver();
    locala.f = this.e;
    locala.a = paramInt;
    locala.l = paramObject;
    locala.d = paramUri;
    locala.h = paramString;
    locala.i = paramArrayOfString;
    locala.o = paramLong;
    AsyncQueryServiceHelper.b(this.d, locala);
  }
  
  public void o(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, long paramLong)
  {
    AsyncQueryServiceHelper.a locala = new AsyncQueryServiceHelper.a();
    locala.b = 2;
    locala.c = this.d.getContentResolver();
    locala.f = this.e;
    locala.a = paramInt;
    locala.l = paramObject;
    locala.d = paramUri;
    locala.m = paramContentValues;
    locala.o = paramLong;
    AsyncQueryServiceHelper.b(this.d, locala);
  }
  
  public void p(int paramInt, Object paramObject, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    AsyncQueryServiceHelper.a locala = new AsyncQueryServiceHelper.a();
    locala.b = 1;
    locala.c = this.d.getContentResolver();
    locala.f = this.e;
    locala.a = paramInt;
    locala.l = paramObject;
    locala.d = paramUri;
    locala.g = paramArrayOfString1;
    locala.h = paramString1;
    locala.i = paramArrayOfString2;
    locala.j = paramString2;
    AsyncQueryServiceHelper.b(this.d, locala);
  }
  
  public void q(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString, long paramLong)
  {
    AsyncQueryServiceHelper.a locala = new AsyncQueryServiceHelper.a();
    locala.b = 3;
    locala.c = this.d.getContentResolver();
    locala.f = this.e;
    locala.a = paramInt;
    locala.l = paramObject;
    locala.d = paramUri;
    locala.m = paramContentValues;
    locala.h = paramString;
    locala.i = paramArrayOfString;
    locala.o = paramLong;
    AsyncQueryServiceHelper.b(this.d, locala);
  }
  
  public static class a
  {
    protected static char a(int paramInt)
    {
      if (paramInt != 1)
      {
        if (paramInt != 2)
        {
          if (paramInt != 3)
          {
            if (paramInt != 4)
            {
              if (paramInt != 5) {
                return '?';
              }
              return 'B';
            }
            return 'D';
          }
          return 'U';
        }
        return 'I';
      }
      return 'Q';
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.a
 * JD-Core Version:    0.7.0.1
 */