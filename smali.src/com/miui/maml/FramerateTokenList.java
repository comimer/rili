package com.miui.maml;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class FramerateTokenList
{
  private static final String LOG_TAG = "FramerateTokenList";
  private float mCurFramerate;
  private FramerateChangeListener mFramerateChangeListener;
  private ArrayList<FramerateToken> mList = new ArrayList();
  
  public FramerateTokenList() {}
  
  public FramerateTokenList(FramerateChangeListener paramFramerateChangeListener)
  {
    this.mFramerateChangeListener = paramFramerateChangeListener;
  }
  
  private void onChange()
  {
    synchronized (this.mList)
    {
      Iterator localIterator = this.mList.iterator();
      float f1 = 0.0F;
      while (localIterator.hasNext())
      {
        float f2 = ((FramerateToken)localIterator.next()).mFramerate;
        if (f2 > f1) {
          f1 = f2;
        }
      }
      this.mCurFramerate = f1;
      ??? = new StringBuilder();
      ((StringBuilder)???).append("Frame rate changed, current frame rate is ");
      ((StringBuilder)???).append(this.mCurFramerate);
      Log.d("FramerateTokenList", ((StringBuilder)???).toString());
      return;
    }
  }
  
  public void clear()
  {
    synchronized (this.mList)
    {
      this.mList.clear();
      return;
    }
  }
  
  public FramerateToken createToken(String arg1)
  {
    Object localObject1 = new StringBuilder();
    ((StringBuilder)localObject1).append("createToken: ");
    ((StringBuilder)localObject1).append(???);
    Log.d("FramerateTokenList", ((StringBuilder)localObject1).toString());
    localObject1 = new FramerateToken(???);
    synchronized (this.mList)
    {
      this.mList.add(localObject1);
      return localObject1;
    }
  }
  
  public float getFramerate()
  {
    return this.mCurFramerate;
  }
  
  public void removeToken(FramerateToken paramFramerateToken)
  {
    synchronized (this.mList)
    {
      this.mList.remove(paramFramerateToken);
      return;
    }
  }
  
  public static abstract interface FramerateChangeListener
  {
    public abstract void onFrameRateChage(float paramFloat1, float paramFloat2);
  }
  
  public class FramerateToken
  {
    public float mFramerate;
    public String mName;
    
    public FramerateToken(String paramString)
    {
      this.mName = paramString;
    }
    
    public float getFramerate()
    {
      return this.mFramerate;
    }
    
    public void requestFramerate(float paramFloat)
    {
      if (this.mFramerate != paramFloat)
      {
        if (FramerateTokenList.this.mFramerateChangeListener != null) {
          FramerateTokenList.this.mFramerateChangeListener.onFrameRateChage(this.mFramerate, paramFloat);
        }
        this.mFramerate = paramFloat;
        FramerateTokenList.this.onChange();
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.FramerateTokenList
 * JD-Core Version:    0.7.0.1
 */