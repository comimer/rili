package com.miui.maml.util;

import android.text.TextUtils;
import com.miui.maml.ResourceLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class FolderResourceLoader
  extends ResourceLoader
{
  private static final String LOG_TAG = "FolderResourceLoader";
  private final String mResourcePath;
  
  public FolderResourceLoader(String paramString)
  {
    this.mResourcePath = paramString;
  }
  
  public File getExtraFile(String paramString)
  {
    if (paramString.startsWith("/")) {
      return new File(paramString);
    }
    File localFile = new File(this.mResourcePath, paramString);
    if (localFile.exists()) {
      return localFile;
    }
    localFile = localFile.getParentFile();
    if (localFile != null) {
      localFile = localFile.getParentFile();
    } else {
      localFile = null;
    }
    if (localFile == null) {
      return null;
    }
    paramString = new File(localFile, paramString);
    if (paramString.exists()) {
      return paramString;
    }
    return null;
  }
  
  public String getID()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("FolderResourceLoader");
    localStringBuilder.append(this.mResourcePath);
    return localStringBuilder.toString();
  }
  
  public InputStream getInputStream(String paramString, long[] paramArrayOfLong)
  {
    boolean bool = TextUtils.isEmpty(paramString);
    Object localObject = null;
    if (!bool)
    {
      try
      {
        FileInputStream localFileInputStream = new java/io/FileInputStream;
        StringBuilder localStringBuilder = new java/lang/StringBuilder;
        localStringBuilder.<init>();
        localStringBuilder.append(this.mResourcePath);
        localStringBuilder.append("/");
        localStringBuilder.append(paramString);
        localFileInputStream.<init>(localStringBuilder.toString());
        paramString = localFileInputStream;
        if (paramArrayOfLong != null)
        {
          paramString = localFileInputStream;
          try
          {
            if (paramArrayOfLong.length <= 0) {
              break label107;
            }
            paramArrayOfLong[0] = localFileInputStream.available();
            paramString = localFileInputStream;
          }
          catch (Exception paramArrayOfLong)
          {
            paramString = localFileInputStream;
          }
          paramArrayOfLong.printStackTrace();
        }
      }
      catch (Exception paramArrayOfLong)
      {
        paramString = localObject;
      }
      label107:
      return paramString;
    }
    return null;
  }
  
  public boolean resourceExists(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.mResourcePath);
      localStringBuilder.append("/");
      localStringBuilder.append(paramString);
      return new File(localStringBuilder.toString()).exists();
    }
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.FolderResourceLoader
 * JD-Core Version:    0.7.0.1
 */