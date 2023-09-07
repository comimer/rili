package com.miui.maml.util;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.media.MediaDataSource;
import android.os.AsyncTask;
import android.os.MemoryFile;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceManager;
import java.io.IOException;
import java.io.InputStream;
import java.nio.BufferUnderflowException;
import java.util.zip.InflaterInputStream;

public class MamlMediaDataSource
  extends MediaDataSource
{
  private static final int MAX_VIDEO_SIZE = 52428800;
  private static final int MEMORY_THRESHOLD = 104857600;
  private static final String TAG = "MamlMediaDataSource";
  private ComponentCallbacks2 mComponentCallback = new ComponentCallbacks2()
  {
    public void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
    
    public void onLowMemory()
    {
      MamlMediaDataSource.this.releaseMemoryFile();
    }
    
    public void onTrimMemory(int paramAnonymousInt)
    {
      if (paramAnonymousInt >= 10) {
        MamlMediaDataSource.this.releaseMemoryFile();
      }
    }
  };
  private Context mContext;
  private long mCurrentPosition;
  private MemoryFile mFile;
  private final Object mLock = new Object();
  private ResourceManager mManager;
  private String mPath;
  private long mSize;
  private InputStream mStream;
  private boolean mSupportMark;
  
  public MamlMediaDataSource(Context paramContext, ResourceManager paramResourceManager, String paramString)
  {
    this.mContext = paramContext;
    this.mManager = paramResourceManager;
    this.mPath = paramString;
    init();
    try
    {
      this.mContext.registerComponentCallbacks(this.mComponentCallback);
      label57:
      return;
    }
    catch (Exception paramContext)
    {
      break label57;
    }
  }
  
  private void closeStream()
  {
    synchronized (this.mLock)
    {
      InputStream localInputStream = this.mStream;
      if (localInputStream != null)
      {
        try
        {
          localInputStream.close();
        }
        catch (IOException localIOException)
        {
          localIOException.printStackTrace();
        }
        this.mStream = null;
      }
      return;
    }
  }
  
  private void generateMemoryFile()
  {
    if (this.mFile != null) {
      return;
    }
    new MemoryFileAsyncTask(this.mPath, this.mManager, this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }
  
  private void init()
  {
    if (!TextUtils.isEmpty(this.mPath)) {
      synchronized (this.mLock)
      {
        long[] arrayOfLong = new long[1];
        InputStream localInputStream = this.mManager.getInputStream(this.mPath, arrayOfLong);
        this.mStream = localInputStream;
        this.mSize = arrayOfLong[0];
        if (localInputStream != null)
        {
          boolean bool = localInputStream.markSupported();
          this.mSupportMark = bool;
          if (bool) {
            this.mStream.mark(2147483647);
          }
          tryToGenerateMemoryFile();
        }
      }
    }
  }
  
  private boolean isFileSizeValid()
  {
    boolean bool;
    if (this.mSize < 52428800L) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private boolean isMemoryEnough()
  {
    ActivityManager localActivityManager = (ActivityManager)this.mContext.getSystemService("activity");
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    localActivityManager.getMemoryInfo(localMemoryInfo);
    return (!localMemoryInfo.lowMemory) && (localMemoryInfo.availMem - localMemoryInfo.threshold > 104857600L);
  }
  
  private boolean resetStream()
  {
    InputStream localInputStream = this.mStream;
    if (localInputStream == null) {
      return false;
    }
    if (this.mSupportMark) {
      try
      {
        localInputStream.reset();
      }
      catch (IOException localIOException1)
      {
        localIOException1.printStackTrace();
        return false;
      }
    }
    try
    {
      localIOException1.close();
      long[] arrayOfLong = new long[1];
      this.mStream = this.mManager.getInputStream(this.mPath, arrayOfLong);
      return true;
    }
    catch (IOException localIOException2)
    {
      localIOException2.printStackTrace();
    }
    return false;
  }
  
  private void setMemoryFile(MemoryFile paramMemoryFile)
  {
    synchronized (this.mLock)
    {
      this.mFile = paramMemoryFile;
      return;
    }
  }
  
  public void close()
  {
    closeStream();
    releaseMemoryFile();
    try
    {
      this.mContext.unregisterComponentCallbacks(this.mComponentCallback);
      label19:
      return;
    }
    catch (Exception localException)
    {
      break label19;
    }
  }
  
  protected void finalize()
    throws Throwable
  {
    close();
    super.finalize();
  }
  
  public String getPath()
  {
    return this.mPath;
  }
  
  public long getSize()
  {
    return this.mSize;
  }
  
  public int readAt(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((this.mFile == null) && (this.mStream == null)) {
      init();
    }
    synchronized (this.mLock)
    {
      MemoryFile localMemoryFile = this.mFile;
      int i = 0;
      long l2;
      int j;
      if (localMemoryFile != null)
      {
        long l1 = paramInt2;
        try
        {
          l2 = this.mSize;
          if (l1 + paramLong > l2) {
            if (paramLong < l2)
            {
              Log.w("MamlMediaDataSource", "readAt: position+size is larger than file size, read left data");
              paramInt2 = (int)(this.mSize - paramLong);
            }
            else
            {
              Log.w("MamlMediaDataSource", "readAt: position is larger than file size, return 0");
              return 0;
            }
          }
          j = this.mFile.readBytes(paramArrayOfByte, (int)paramLong, paramInt1, paramInt2);
        }
        catch (Exception paramArrayOfByte)
        {
          paramArrayOfByte.printStackTrace();
          this.mFile.close();
          this.mFile = null;
          return 0;
        }
        catch (BufferUnderflowException paramArrayOfByte)
        {
          return 0;
        }
      }
      else
      {
        j = i;
        if (this.mStream != null)
        {
          l2 = this.mCurrentPosition;
          if (l2 > paramLong)
          {
            if (resetStream()) {
              l2 = paramLong;
            } else {
              return 0;
            }
          }
          else {
            l2 = paramLong - l2;
          }
          if (l2 != 0L) {}
          try
          {
            this.mStream.skip(l2);
            j = this.mStream.read(paramArrayOfByte, paramInt1, paramInt2);
          }
          catch (Exception paramArrayOfByte)
          {
            paramArrayOfByte.printStackTrace();
            j = i;
          }
        }
      }
      if (j > 0) {
        this.mCurrentPosition = (paramLong + j);
      }
      return j;
    }
  }
  
  public void releaseMemoryFile()
  {
    synchronized (this.mLock)
    {
      MemoryFile localMemoryFile = this.mFile;
      if (localMemoryFile != null)
      {
        localMemoryFile.close();
        this.mFile = null;
      }
      return;
    }
  }
  
  public void tryToGenerateMemoryFile()
  {
    if ((this.mFile == null) && ((this.mStream instanceof InflaterInputStream)) && (isMemoryEnough()) && (isFileSizeValid())) {
      generateMemoryFile();
    }
  }
  
  private static class MemoryFileAsyncTask
    extends AsyncTask<Void, Void, Void>
  {
    private String mFilePath;
    private ResourceManager mManager;
    private MamlMediaDataSource mSource;
    
    public MemoryFileAsyncTask(String paramString, ResourceManager paramResourceManager, MamlMediaDataSource paramMamlMediaDataSource)
    {
      this.mFilePath = paramString;
      this.mManager = paramResourceManager;
      this.mSource = paramMamlMediaDataSource;
    }
    
    protected Void doInBackground(Void... paramVarArgs)
    {
      paramVarArgs = this.mManager;
      if (paramVarArgs != null)
      {
        MamlMediaDataSource localMamlMediaDataSource = this.mSource;
        if (localMamlMediaDataSource != null) {
          localMamlMediaDataSource.setMemoryFile(paramVarArgs.getFile(this.mFilePath));
        }
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.MamlMediaDataSource
 * JD-Core Version:    0.7.0.1
 */