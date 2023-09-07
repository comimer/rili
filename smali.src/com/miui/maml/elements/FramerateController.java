package com.miui.maml.elements;

import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class FramerateController
  extends ScreenElement
{
  public static final String INNER_TAG = "ControlPoint";
  public static final String TAG_NAME = "FramerateController";
  private ArrayList<ControlPoint> mControlPoints = new ArrayList();
  private long mDelay;
  private long mLastUpdateTime;
  private Object mLock = new Object();
  private boolean mLoop;
  private long mNextUpdateInterval;
  private long mStartTime;
  private boolean mStopped;
  private String mTag;
  private long mTimeRange;
  
  public FramerateController(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mLoop = Boolean.parseBoolean(paramElement.getAttribute("loop"));
    this.mTag = paramElement.getAttribute("tag");
    paramScreenElementRoot = paramElement.getAttribute("delay");
    if (!TextUtils.isEmpty(paramScreenElementRoot)) {
      try
      {
        this.mDelay = Long.parseLong(paramScreenElementRoot);
      }
      catch (NumberFormatException paramScreenElementRoot)
      {
        Log.w("FramerateController", "invalid delay attribute");
      }
    }
    paramScreenElementRoot = paramElement.getElementsByTagName("ControlPoint");
    boolean bool1 = false;
    for (int i = 0; i < paramScreenElementRoot.getLength(); i++)
    {
      paramElement = (Element)paramScreenElementRoot.item(i);
      this.mControlPoints.add(new ControlPoint(paramElement));
    }
    paramElement = this.mControlPoints;
    long l = ((ControlPoint)paramElement.get(paramElement.size() - 1)).mTime;
    this.mTimeRange = l;
    boolean bool2 = bool1;
    if (this.mLoop)
    {
      bool2 = bool1;
      if (l != 0L) {
        bool2 = true;
      }
    }
    this.mLoop = bool2;
  }
  
  private void restart(long paramLong)
  {
    synchronized (this.mLock)
    {
      this.mStartTime = (paramLong + this.mDelay);
      this.mStopped = false;
      this.mLastUpdateTime = 0L;
      this.mNextUpdateInterval = 0L;
      requestUpdate();
      return;
    }
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!isVisible()) {
      return;
    }
    super.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    restart(paramLong1 - paramLong2);
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    restart(paramLong);
  }
  
  public void setAnim(String[] paramArrayOfString)
  {
    show(ScreenElement.isTagEnable(paramArrayOfString, this.mTag));
  }
  
  public long updateFramerate(long paramLong)
  {
    updateVisibility();
    boolean bool = isVisible();
    long l1 = 9223372036854775807L;
    if (!bool) {
      return 9223372036854775807L;
    }
    synchronized (this.mLock)
    {
      if (this.mStopped) {
        return 9223372036854775807L;
      }
      long l2 = this.mLastUpdateTime;
      long l3 = 0L;
      if (l2 > 0L)
      {
        l4 = paramLong - l2;
        if (l4 >= 0L)
        {
          l2 = this.mNextUpdateInterval;
          if (l4 < l2)
          {
            l2 -= l4;
            this.mNextUpdateInterval = l2;
            this.mLastUpdateTime = paramLong;
            return l2;
          }
        }
      }
      long l4 = paramLong - this.mStartTime;
      l2 = l4;
      if (l4 < 0L) {
        l2 = 0L;
      }
      l4 = l2;
      if (this.mLoop) {
        l4 = l2 % (this.mTimeRange + 1L);
      }
      int i = this.mControlPoints.size() - 1;
      for (l2 = l3; i >= 0; l2 = l3)
      {
        ControlPoint localControlPoint = (ControlPoint)this.mControlPoints.get(i);
        l3 = localControlPoint.mTime;
        if (l4 >= l3)
        {
          requestFramerate(localControlPoint.mFramerate);
          if ((!this.mLoop) && (i == this.mControlPoints.size() - 1)) {
            this.mStopped = true;
          }
          this.mLastUpdateTime = paramLong;
          if (this.mStopped) {
            paramLong = l1;
          } else {
            paramLong = l2 - l4;
          }
          this.mNextUpdateInterval = paramLong;
          return paramLong;
        }
        i--;
      }
      return 9223372036854775807L;
    }
  }
  
  public static class ControlPoint
  {
    public int mFramerate;
    public long mTime;
    
    public ControlPoint(Element paramElement)
    {
      this.mTime = Utils.getAttrAsLongThrows(paramElement, "time");
      this.mFramerate = Utils.getAttrAsInt(paramElement, "frameRate", -1);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.FramerateController
 * JD-Core Version:    0.7.0.1
 */