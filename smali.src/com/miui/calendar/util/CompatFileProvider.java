package com.miui.calendar.util;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.content.b;
import java.io.File;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class CompatFileProvider
  extends b
{
  private static Object[] b(Object[] paramArrayOfObject, int paramInt)
  {
    Object[] arrayOfObject = new Object[paramInt];
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 0, paramInt);
    return arrayOfObject;
  }
  
  private static String[] c(String[] paramArrayOfString, int paramInt)
  {
    String[] arrayOfString = new String[paramInt];
    System.arraycopy(paramArrayOfString, 0, arrayOfString, 0, paramInt);
    return arrayOfString;
  }
  
  private static boolean i(String[] paramArrayOfString, String paramString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length >= 1))
    {
      if (TextUtils.isEmpty(paramString)) {
        return false;
      }
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++) {
        if (TextUtils.equals(paramArrayOfString[j], paramString)) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static Uri j(Context paramContext, Uri paramUri)
  {
    paramContext = k(paramContext, new File(paramUri.getEncodedPath()));
    if (paramContext != null) {
      return paramContext;
    }
    return paramUri;
  }
  
  public static Uri k(Context paramContext, File paramFile)
  {
    try
    {
      paramContext = b.f(paramContext, "com.android.calendar.fileprovider", paramFile);
      return paramContext;
    }
    catch (Exception paramContext)
    {
      z.c("Cal:D:CompatFileProvider", "file provider get uri from file:error");
    }
    catch (IllegalArgumentException paramContext)
    {
      z.c("Cal:D:CompatFileProvider", "file provider get uri from file:illegalArgumentException");
      paramContext.printStackTrace();
    }
    return null;
  }
  
  private File l(Uri paramUri)
  {
    Object localObject = getClass().getSuperclass();
    try
    {
      localObject = ((Class)localObject).getDeclaredField("mStrategy");
      ((AccessibleObject)localObject).setAccessible(true);
      paramUri = (File)((Field)localObject).getType().getDeclaredMethod("getFileForUri", new Class[] { Uri.class }).invoke(((Field)localObject).get(this), new Object[] { paramUri });
      return paramUri;
    }
    catch (Exception paramUri)
    {
      paramUri.printStackTrace();
    }
    return null;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if ((paramArrayOfString1 != null) && (i(paramArrayOfString1, "_data")))
    {
      File localFile = l(paramUri);
      if (localFile == null) {
        return super.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
      }
      paramArrayOfString2 = new String[paramArrayOfString1.length];
      paramUri = new Object[paramArrayOfString1.length];
      int i = paramArrayOfString1.length;
      int j = 0;
      int m;
      for (int k = 0; j < i; k = m)
      {
        paramString1 = paramArrayOfString1[j];
        if ("_display_name".equals(paramString1))
        {
          paramArrayOfString2[k] = "_display_name";
          m = k + 1;
          paramUri[k] = localFile.getName();
          k = m;
        }
        for (;;)
        {
          m = k;
          break;
          if ("_size".equals(paramString1))
          {
            paramArrayOfString2[k] = "_size";
            m = k + 1;
            paramUri[k] = Long.valueOf(localFile.length());
            k = m;
          }
          else
          {
            m = k;
            if (!"_data".equals(paramString1)) {
              break;
            }
            paramArrayOfString2[k] = "_data";
            m = k + 1;
            paramUri[k] = localFile.getAbsolutePath();
            k = m;
          }
        }
        j++;
      }
      paramArrayOfString1 = c(paramArrayOfString2, k);
      paramUri = b(paramUri, k);
      paramArrayOfString1 = new MatrixCursor(paramArrayOfString1, 1);
      paramArrayOfString1.addRow(paramUri);
      return paramArrayOfString1;
    }
    return super.query(paramUri, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.CompatFileProvider
 * JD-Core Version:    0.7.0.1
 */