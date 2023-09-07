package com.miui.maml.util;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceLoader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public class ZipResourceLoader
  extends ResourceLoader
{
  private static final String LOG_TAG = "ZipResourceLoader";
  private String mInnerPath;
  private Object mLock = new Object();
  private String mResourcePath;
  private ZipFile mZipFile;
  
  public ZipResourceLoader(String paramString)
  {
    this(paramString, null, null);
  }
  
  public ZipResourceLoader(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public ZipResourceLoader(String paramString1, String paramString2, String paramString3)
  {
    if (!TextUtils.isEmpty(paramString1))
    {
      this.mResourcePath = paramString1;
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = "";
      }
      this.mInnerPath = paramString1;
      if (paramString3 != null) {
        this.mManifestName = paramString3;
      }
      init();
      return;
    }
    throw new IllegalArgumentException("empty zip path");
  }
  
  private void close()
  {
    ZipFile localZipFile;
    synchronized (this.mLock)
    {
      localZipFile = this.mZipFile;
      if (localZipFile == null) {}
    }
    try
    {
      localZipFile.close();
      label20:
      this.mZipFile = null;
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (IOException localIOException)
    {
      break label20;
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    close();
    super.finalize();
  }
  
  public void finish()
  {
    close();
    super.finish();
  }
  
  public File getExtraFile(String paramString)
  {
    if ((paramString != null) && (!paramString.isEmpty()))
    {
      if (paramString.startsWith("/")) {
        return new File(paramString);
      }
      return new File(new File(this.mResourcePath).getParent(), paramString);
    }
    return null;
  }
  
  public String getID()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ZipResourceLoader");
    localStringBuilder.append(this.mResourcePath);
    localStringBuilder.append(this.mInnerPath);
    return localStringBuilder.toString();
  }
  
  public InputStream getInputStream(String paramString, long[] paramArrayOfLong)
  {
    if ((this.mZipFile != null) && (paramString != null)) {
      synchronized (this.mLock)
      {
        ZipFile localZipFile = this.mZipFile;
        if (localZipFile != null)
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(this.mInnerPath);
          localStringBuilder.append(paramString);
          paramString = localZipFile.getEntry(localStringBuilder.toString());
          if (paramString == null) {
            return null;
          }
          if (paramArrayOfLong != null) {}
          try
          {
            paramArrayOfLong[0] = paramString.getSize();
            paramString = this.mZipFile.getInputStream(paramString);
            return paramString;
          }
          catch (IOException paramString)
          {
            Log.d("ZipResourceLoader", paramString.toString());
          }
        }
        return null;
      }
    }
    return null;
  }
  
  public void init()
  {
    super.init();
    synchronized (this.mLock)
    {
      ZipFile localZipFile = this.mZipFile;
      if (localZipFile == null) {
        try
        {
          localZipFile = new java/util/zip/ZipFile;
          localZipFile.<init>(this.mResourcePath);
          this.mZipFile = localZipFile;
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append("fail to init zip file: ");
          localStringBuilder.append(this.mResourcePath);
          Log.e("ZipResourceLoader", localStringBuilder.toString());
        }
      }
      return;
    }
  }
  
  public boolean resourceExists(String paramString)
  {
    ??? = this.mZipFile;
    boolean bool1 = false;
    if ((??? != null) && (paramString != null)) {
      synchronized (this.mLock)
      {
        ZipFile localZipFile = this.mZipFile;
        boolean bool2 = bool1;
        if (localZipFile != null)
        {
          StringBuilder localStringBuilder = new java/lang/StringBuilder;
          localStringBuilder.<init>();
          localStringBuilder.append(this.mInnerPath);
          localStringBuilder.append(paramString);
          bool2 = bool1;
          if (localZipFile.getEntry(localStringBuilder.toString()) != null) {
            bool2 = true;
          }
        }
        return bool2;
      }
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.ZipResourceLoader
 * JD-Core Version:    0.7.0.1
 */