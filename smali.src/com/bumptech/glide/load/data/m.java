package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

public class m
  extends b<InputStream>
{
  public m(AssetManager paramAssetManager, String paramString)
  {
    super(paramAssetManager, paramString);
  }
  
  public Class<InputStream> a()
  {
    return InputStream.class;
  }
  
  protected void g(InputStream paramInputStream)
    throws IOException
  {
    paramInputStream.close();
  }
  
  protected InputStream h(AssetManager paramAssetManager, String paramString)
    throws IOException
  {
    return paramAssetManager.open(paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.data.m
 * JD-Core Version:    0.7.0.1
 */