package com.miui.bugreport.logprovider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.XmlResourceParser;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;

public class DumpLogProvider
  extends ContentProvider
{
  private static final File a = new File("/");
  private static volatile HashMap<String, File> b = new HashMap();
  private static volatile boolean c;
  
  private static File a(File paramFile, String... paramVarArgs)
  {
    int i = paramVarArgs.length;
    int j = 0;
    for (File localFile = paramFile; j < i; localFile = paramFile)
    {
      String str = paramVarArgs[j];
      paramFile = localFile;
      if (str != null) {
        paramFile = new File(localFile, str);
      }
      j++;
    }
    return localFile;
  }
  
  private static HashMap<String, File> b(Context paramContext, String paramString)
  {
    localHashMap = new HashMap();
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      XmlResourceParser localXmlResourceParser = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 128).loadXmlMetaData(paramContext.getPackageManager(), paramString);
      if (localXmlResourceParser == null) {
        return localHashMap;
      }
      for (;;)
      {
        int i = localXmlResourceParser.next();
        if (i == 1) {
          break;
        }
        if (i == 2)
        {
          Object localObject = localXmlResourceParser.getName();
          localPackageManager = null;
          String str1 = localXmlResourceParser.getAttributeValue(null, "name");
          String str2 = localXmlResourceParser.getAttributeValue(null, "path");
          if ("root-path".equals(localObject))
          {
            paramString = a;
          }
          else if ("files-path".equals(localObject))
          {
            paramString = paramContext.getFilesDir();
          }
          else if ("cache-path".equals(localObject))
          {
            paramString = paramContext.getCacheDir();
          }
          else if ("external-path".equals(localObject))
          {
            paramString = Environment.getExternalStorageDirectory();
          }
          else if ("external-files-path".equals(localObject))
          {
            localObject = paramContext.getExternalFilesDirs(null);
            paramString = localPackageManager;
            if (localObject.length > 0) {
              paramString = localObject[0];
            }
          }
          else if ("external-cache-path".equals(localObject))
          {
            localObject = paramContext.getExternalCacheDirs();
            paramString = localPackageManager;
            if (localObject.length > 0) {
              paramString = localObject[0];
            }
          }
          else
          {
            paramString = localPackageManager;
            if ("external-media-path".equals(localObject))
            {
              localObject = paramContext.getExternalMediaDirs();
              paramString = localPackageManager;
              if (localObject.length > 0) {
                paramString = localObject[0];
              }
            }
          }
          if (paramString != null) {
            c(str1, a(paramString, new String[] { str2 }));
          }
        }
      }
      return localHashMap;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
  }
  
  private static void c(String paramString, File paramFile)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    try
    {
      paramFile = paramFile.getCanonicalFile();
      b.put(paramString, paramFile);
    }
    catch (IOException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  private static boolean d(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    boolean bool = false;
    try
    {
      int i = paramContext.getPackageInfo("com.miui.bugreport", 0).applicationInfo.flags;
      if ((i & 0x1) != 0) {
        bool = true;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      label29:
      break label29;
    }
    return bool;
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    c = d(getContext());
    b.putAll(b(getContext(), "com.miui.bugreport.DEFAULT_LOG_DIR"));
    b.putAll(b(getContext(), "com.miui.bugreport.LOG_DIR"));
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
  {
    if (!c) {
      return null;
    }
    paramString = Uri.parse(Uri.decode(paramUri.toString())).getPath();
    if (!TextUtils.isEmpty(paramString))
    {
      try
      {
        paramUri = new java/io/File;
        paramUri.<init>(paramString);
        paramString = paramUri.getCanonicalPath();
        Iterator localIterator = b.entrySet().iterator();
        while (localIterator.hasNext()) {
          if (paramString.startsWith(((File)((Map.Entry)localIterator.next()).getValue()).getPath()))
          {
            paramUri = ParcelFileDescriptor.open(paramUri, 268435456);
            return paramUri;
          }
        }
      }
      catch (IOException paramUri)
      {
        paramUri.printStackTrace();
      }
      return null;
    }
    throw new FileNotFoundException();
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (c)
    {
      paramArrayOfString1 = new LinkedList();
      paramUri = new ArrayList();
      paramString1 = b.entrySet().iterator();
      break label79;
      label34:
      do
      {
        if (!paramString1.hasNext()) {
          break;
        }
        paramArrayOfString2 = (File)((Map.Entry)paramString1.next()).getValue();
      } while (!paramArrayOfString2.exists());
      paramArrayOfString1.offer(paramArrayOfString2);
      for (;;)
      {
        label79:
        if (paramArrayOfString1.size() != 0)
        {
          paramArrayOfString2 = (File)paramArrayOfString1.poll();
          if (paramArrayOfString2.isFile()) {
            paramUri.add(paramArrayOfString2.getPath());
          }
        }
        else
        {
          break label34;
        }
        paramString2 = paramArrayOfString2.listFiles();
        if (paramString2 == null) {
          break;
        }
        int i = paramString2.length;
        for (int j = 0; j < i; j++)
        {
          paramArrayOfString2 = paramString2[j];
          if (paramArrayOfString2.isFile()) {
            paramUri.add(paramArrayOfString2.getPath());
          } else if (paramArrayOfString2.isDirectory()) {
            paramArrayOfString1.offer(paramArrayOfString2);
          }
        }
      }
      paramString1 = new MatrixCursor(new String[0]);
      paramArrayOfString1 = new Bundle();
      paramArrayOfString1.putStringArrayList("logDir", paramUri);
      paramString1.setExtras(paramArrayOfString1);
      return paramString1;
    }
    return null;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.bugreport.logprovider.DumpLogProvider
 * JD-Core Version:    0.7.0.1
 */