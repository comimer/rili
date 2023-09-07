package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.res.XmlResourceParser;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.BaseBundle;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class b
  extends ContentProvider
{
  private static final String[] c = { "_display_name", "_size" };
  private static final File d = new File("/");
  private static final HashMap<String, b> e = new HashMap();
  private b a;
  private int b = 0;
  
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
  
  static XmlResourceParser d(Context paramContext, String paramString, ProviderInfo paramProviderInfo, int paramInt)
  {
    if (paramProviderInfo != null)
    {
      if ((paramProviderInfo.metaData == null) && (paramInt != 0))
      {
        paramString = new Bundle(1);
        paramProviderInfo.metaData = paramString;
        paramString.putInt("android.support.FILE_PROVIDER_PATHS", paramInt);
      }
      paramContext = paramProviderInfo.loadXmlMetaData(paramContext.getPackageManager(), "android.support.FILE_PROVIDER_PATHS");
      if (paramContext != null) {
        return paramContext;
      }
      throw new IllegalArgumentException("Missing android.support.FILE_PROVIDER_PATHS meta-data");
    }
    paramContext = new StringBuilder();
    paramContext.append("Couldn't find meta-data for provider with authority ");
    paramContext.append(paramString);
    throw new IllegalArgumentException(paramContext.toString());
  }
  
  private static b e(Context paramContext, String paramString, int paramInt)
  {
    synchronized (e)
    {
      b localb1 = (b)???.get(paramString);
      b localb2 = localb1;
      if (localb1 == null) {
        try
        {
          localb2 = h(paramContext, paramString, paramInt);
          ???.put(paramString, localb2);
        }
        catch (XmlPullParserException paramString)
        {
          paramContext = new java/lang/IllegalArgumentException;
          paramContext.<init>("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramString);
          throw paramContext;
        }
        catch (IOException paramContext)
        {
          paramString = new java/lang/IllegalArgumentException;
          paramString.<init>("Failed to parse android.support.FILE_PROVIDER_PATHS meta-data", paramContext);
          throw paramString;
        }
      }
      return localb2;
    }
  }
  
  public static Uri f(Context paramContext, String paramString, File paramFile)
  {
    return e(paramContext, paramString, 0).b(paramFile);
  }
  
  private static int g(String paramString)
  {
    int i;
    if ("r".equals(paramString)) {
      i = 268435456;
    } else if ((!"w".equals(paramString)) && (!"wt".equals(paramString)))
    {
      if ("wa".equals(paramString))
      {
        i = 704643072;
      }
      else if ("rw".equals(paramString))
      {
        i = 939524096;
      }
      else if ("rwt".equals(paramString))
      {
        i = 1006632960;
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Invalid mode: ");
        localStringBuilder.append(paramString);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
    else {
      i = 738197504;
    }
    return i;
  }
  
  private static b h(Context paramContext, String paramString, int paramInt)
    throws IOException, XmlPullParserException
  {
    c localc = new c(paramString);
    XmlResourceParser localXmlResourceParser = d(paramContext, paramString, paramContext.getPackageManager().resolveContentProvider(paramString, 128), paramInt);
    for (;;)
    {
      paramInt = localXmlResourceParser.next();
      if (paramInt == 1) {
        break;
      }
      if (paramInt == 2)
      {
        Object localObject1 = localXmlResourceParser.getName();
        Object localObject2 = null;
        String str1 = localXmlResourceParser.getAttributeValue(null, "name");
        String str2 = localXmlResourceParser.getAttributeValue(null, "path");
        if ("root-path".equals(localObject1))
        {
          paramString = d;
        }
        else if ("files-path".equals(localObject1))
        {
          paramString = paramContext.getFilesDir();
        }
        else if ("cache-path".equals(localObject1))
        {
          paramString = paramContext.getCacheDir();
        }
        else if ("external-path".equals(localObject1))
        {
          paramString = Environment.getExternalStorageDirectory();
        }
        else if ("external-files-path".equals(localObject1))
        {
          localObject1 = a.g(paramContext, null);
          paramString = localObject2;
          if (localObject1.length > 0) {
            paramString = localObject1[0];
          }
        }
        else if ("external-cache-path".equals(localObject1))
        {
          localObject1 = a.f(paramContext);
          paramString = localObject2;
          if (localObject1.length > 0) {
            paramString = localObject1[0];
          }
        }
        else
        {
          paramString = localObject2;
          if ("external-media-path".equals(localObject1))
          {
            localObject1 = a.a(paramContext);
            paramString = localObject2;
            if (localObject1.length > 0) {
              paramString = localObject1[0];
            }
          }
        }
        if (paramString != null) {
          localc.c(str1, a(paramString, new String[] { str2 }));
        }
      }
    }
    return localc;
  }
  
  public void attachInfo(Context paramContext, ProviderInfo arg2)
  {
    super.attachInfo(paramContext, ???);
    if (!???.exported)
    {
      if (???.grantUriPermissions)
      {
        String str = ???.authority.split(";")[0];
        synchronized (e)
        {
          ???.remove(str);
          this.a = e(paramContext, str, this.b);
          return;
        }
      }
      throw new SecurityException("Provider must grant uri permissions");
    }
    throw new SecurityException("Provider must not be exported");
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return this.a.a(paramUri).delete();
  }
  
  public String getType(Uri paramUri)
  {
    paramUri = this.a.a(paramUri);
    int i = paramUri.getName().lastIndexOf('.');
    if (i >= 0)
    {
      paramUri = paramUri.getName().substring(i + 1);
      paramUri = MimeTypeMap.getSingleton().getMimeTypeFromExtension(paramUri);
      if (paramUri != null) {
        return paramUri;
      }
    }
    return "application/octet-stream";
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    throw new UnsupportedOperationException("No external inserts");
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  @SuppressLint({"UnknownNullness"})
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString)
    throws FileNotFoundException
  {
    return ParcelFileDescriptor.open(this.a.a(paramUri), g(paramString));
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    paramArrayOfString2 = this.a.a(paramUri);
    paramString1 = paramUri.getQueryParameter("displayName");
    paramUri = paramArrayOfString1;
    if (paramArrayOfString1 == null) {
      paramUri = c;
    }
    String[] arrayOfString = new String[paramUri.length];
    paramString2 = new Object[paramUri.length];
    int i = paramUri.length;
    int j = 0;
    int m;
    for (int k = 0; j < i; k = m)
    {
      paramArrayOfString1 = paramUri[j];
      if ("_display_name".equals(paramArrayOfString1))
      {
        arrayOfString[k] = "_display_name";
        m = k + 1;
        if (paramString1 == null) {
          paramArrayOfString1 = paramArrayOfString2.getName();
        } else {
          paramArrayOfString1 = paramString1;
        }
        paramString2[k] = paramArrayOfString1;
        k = m;
      }
      else
      {
        m = k;
        if (!"_size".equals(paramArrayOfString1)) {
          break label163;
        }
        arrayOfString[k] = "_size";
        m = k + 1;
        paramString2[k] = Long.valueOf(paramArrayOfString2.length());
        k = m;
      }
      m = k;
      label163:
      j++;
    }
    paramArrayOfString1 = c(arrayOfString, k);
    paramUri = b(paramString2, k);
    paramArrayOfString1 = new MatrixCursor(paramArrayOfString1, 1);
    paramArrayOfString1.addRow(paramUri);
    return paramArrayOfString1;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    throw new UnsupportedOperationException("No external updates");
  }
  
  static class a
  {
    static File[] a(Context paramContext)
    {
      return paramContext.getExternalMediaDirs();
    }
  }
  
  static abstract interface b
  {
    public abstract File a(Uri paramUri);
    
    public abstract Uri b(File paramFile);
  }
  
  static class c
    implements b.b
  {
    private final String a;
    private final HashMap<String, File> b = new HashMap();
    
    c(String paramString)
    {
      this.a = paramString;
    }
    
    public File a(Uri paramUri)
    {
      Object localObject1 = paramUri.getEncodedPath();
      int i = ((String)localObject1).indexOf('/', 1);
      Object localObject2 = Uri.decode(((String)localObject1).substring(1, i));
      localObject1 = Uri.decode(((String)localObject1).substring(i + 1));
      localObject2 = (File)this.b.get(localObject2);
      if (localObject2 != null)
      {
        paramUri = new File((File)localObject2, (String)localObject1);
        try
        {
          localObject1 = paramUri.getCanonicalFile();
          if (((File)localObject1).getPath().startsWith(((File)localObject2).getPath())) {
            return localObject1;
          }
          throw new SecurityException("Resolved path jumped beyond configured root");
        }
        catch (IOException localIOException)
        {
          localStringBuilder = new StringBuilder();
          localStringBuilder.append("Failed to resolve canonical path for ");
          localStringBuilder.append(paramUri);
          throw new IllegalArgumentException(localStringBuilder.toString());
        }
      }
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Unable to find configured root for ");
      localStringBuilder.append(paramUri);
      throw new IllegalArgumentException(localStringBuilder.toString());
    }
    
    public Uri b(File paramFile)
    {
      try
      {
        Object localObject1 = paramFile.getCanonicalPath();
        paramFile = null;
        Iterator localIterator = this.b.entrySet().iterator();
        Object localObject2;
        while (localIterator.hasNext())
        {
          localObject2 = (Map.Entry)localIterator.next();
          String str = ((File)((Map.Entry)localObject2).getValue()).getPath();
          if ((((String)localObject1).startsWith(str)) && ((paramFile == null) || (str.length() > ((File)paramFile.getValue()).getPath().length()))) {
            paramFile = (File)localObject2;
          }
        }
        if (paramFile != null)
        {
          localObject2 = ((File)paramFile.getValue()).getPath();
          if (((String)localObject2).endsWith("/")) {
            localObject2 = ((String)localObject1).substring(((String)localObject2).length());
          } else {
            localObject2 = ((String)localObject1).substring(((String)localObject2).length() + 1);
          }
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append(Uri.encode((String)paramFile.getKey()));
          ((StringBuilder)localObject1).append('/');
          ((StringBuilder)localObject1).append(Uri.encode((String)localObject2, "/"));
          paramFile = ((StringBuilder)localObject1).toString();
          return new Uri.Builder().scheme("content").authority(this.a).encodedPath(paramFile).build();
        }
        paramFile = new StringBuilder();
        paramFile.append("Failed to find configured root that contains ");
        paramFile.append((String)localObject1);
        throw new IllegalArgumentException(paramFile.toString());
      }
      catch (IOException localIOException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Failed to resolve canonical path for ");
        localStringBuilder.append(paramFile);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
    }
    
    void c(String paramString, File paramFile)
    {
      if (!TextUtils.isEmpty(paramString)) {
        try
        {
          localObject = paramFile.getCanonicalFile();
          this.b.put(paramString, localObject);
          return;
        }
        catch (IOException paramString)
        {
          Object localObject = new StringBuilder();
          ((StringBuilder)localObject).append("Failed to resolve canonical path for ");
          ((StringBuilder)localObject).append(paramFile);
          throw new IllegalArgumentException(((StringBuilder)localObject).toString(), paramString);
        }
      }
      throw new IllegalArgumentException("Name must not be empty");
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.core.content.b
 * JD-Core Version:    0.7.0.1
 */