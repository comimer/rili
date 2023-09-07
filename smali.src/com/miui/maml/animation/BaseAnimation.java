package com.miui.maml.animation;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.CommandTriggers;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.animation.interpolater.InterpolatorHelper;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import com.miui.maml.elements.ScreenElement;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import org.w3c.dom.Element;

public abstract class BaseAnimation
{
  private static final long INFINITE_TIME = 1000000000000L;
  private static final String LOG_TAG = "BaseAnimation";
  public static final int PLAY_TO_END = -1;
  private static final String VAR_CURRENT_FRAME = "current_frame";
  private long mAnimEndTime;
  private long mAnimStartTime;
  protected String[] mAttrs;
  private double[] mCurValues;
  private IndexedVariable mCurrentFrame;
  private Expression mDelay;
  private boolean mDisable;
  private long mEndTime;
  private boolean mHasName;
  private boolean mInitPaused;
  private boolean mIsDelay;
  private boolean mIsFirstFrame;
  private boolean mIsFirstReset;
  private boolean mIsLastFrame;
  private boolean mIsLoop;
  private boolean mIsPaused;
  private boolean mIsReverse;
  private boolean mIsTimeInfinite;
  protected ArrayList<AnimationItem> mItems = new ArrayList();
  private boolean mLoop = true;
  private String mName;
  private long mPauseTime;
  private long mPlayTimeRange;
  private long mRealTimeRange;
  private long mResetTime;
  protected ScreenElement mScreenElement;
  private long mStartTime;
  private String mTag;
  private CommandTriggers mTriggers;
  
  public BaseAnimation(Element paramElement, ScreenElement paramScreenElement)
  {
    this(paramElement, null, "value", paramScreenElement);
  }
  
  public BaseAnimation(Element paramElement, String paramString, ScreenElement paramScreenElement)
  {
    this(paramElement, paramString, "value", paramScreenElement);
  }
  
  public BaseAnimation(Element paramElement, String paramString1, String paramString2, ScreenElement paramScreenElement)
  {
    this(paramElement, paramString1, new String[] { paramString2 }, paramScreenElement);
  }
  
  public BaseAnimation(Element paramElement, String paramString, String[] paramArrayOfString, ScreenElement paramScreenElement)
  {
    this.mScreenElement = paramScreenElement;
    this.mAttrs = paramArrayOfString;
    this.mCurValues = new double[paramArrayOfString.length];
    load(paramElement, paramString);
  }
  
  private float getRatio(AnimationItem paramAnimationItem, long paramLong1, long paramLong2, long paramLong3)
  {
    float f1;
    if (paramLong3 == 0L) {
      f1 = 1.0F;
    } else {
      f1 = (float)(paramLong1 - paramLong2) / (float)paramLong3;
    }
    float f2 = f1;
    if (paramAnimationItem != null)
    {
      paramAnimationItem = paramAnimationItem.mInterpolator;
      f2 = f1;
      if (paramAnimationItem != null) {
        f2 = paramAnimationItem.get(f1);
      }
    }
    return f2;
  }
  
  private void load(Element paramElement, String paramString)
  {
    Object localObject = paramElement.getAttribute("name");
    this.mName = ((String)localObject);
    this.mHasName = (TextUtils.isEmpty((CharSequence)localObject) ^ true);
    Variables localVariables = getVariables();
    if (this.mHasName)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(this.mName);
      ((StringBuilder)localObject).append(".");
      ((StringBuilder)localObject).append("current_frame");
      this.mCurrentFrame = new IndexedVariable(((StringBuilder)localObject).toString(), localVariables, true);
    }
    this.mDelay = Expression.build(localVariables, paramElement.getAttribute("delay"));
    this.mInitPaused = Boolean.parseBoolean(paramElement.getAttribute("initPause"));
    this.mLoop = ("false".equalsIgnoreCase(paramElement.getAttribute("loop")) ^ true);
    this.mTag = paramElement.getAttribute("tag");
    boolean bool = false;
    localObject = new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        BaseAnimation localBaseAnimation = BaseAnimation.this;
        localBaseAnimation.mItems.add(localBaseAnimation.onCreateItem(localBaseAnimation, paramAnonymousElement));
      }
    };
    Utils.traverseXmlElementChildrenTags(paramElement, new String[] { paramString, "Item" }, (Utils.XmlTraverseListener)localObject);
    if (this.mItems.size() <= 0)
    {
      Log.e("BaseAnimation", "empty items");
      return;
    }
    paramString = this.mItems;
    if (((AnimationItem)paramString.get(paramString.size() - 1)).mTime >= 1000000000000L) {
      bool = true;
    }
    this.mIsTimeInfinite = bool;
    if ((this.mItems.size() > 1) && (this.mIsTimeInfinite))
    {
      paramString = this.mItems;
      this.mRealTimeRange = ((AnimationItem)paramString.get(paramString.size() - 2)).mTime;
    }
    else
    {
      paramString = this.mItems;
      this.mRealTimeRange = ((AnimationItem)paramString.get(paramString.size() - 1)).mTime;
    }
    paramElement = Utils.getChild(paramElement, "Triggers");
    if (paramElement != null) {
      this.mTriggers = new CommandTriggers(paramElement, this.mScreenElement);
    }
  }
  
  private void reevaluate()
  {
    int i = this.mItems.size();
    boolean bool = false;
    int j = 0;
    long l3;
    for (long l1 = 0L; j < i; l1 = l3)
    {
      AnimationItem localAnimationItem = (AnimationItem)this.mItems.get(j);
      Expression localExpression = localAnimationItem.mDeltaTimeExp;
      long l2;
      if (localExpression != null)
      {
        l2 = localExpression.evaluate();
        l3 = l2;
        if (l2 < 0L) {
          l3 = 0L;
        }
        l3 = l1 + l3;
        localAnimationItem.mTime = l3;
      }
      else
      {
        l2 = localAnimationItem.mTime;
        l3 = l1;
        if (l2 >= l1) {
          l3 = l2;
        }
      }
      j++;
    }
    if (l1 >= 1000000000000L) {
      bool = true;
    }
    this.mIsTimeInfinite = bool;
    if ((i > 1) && (bool)) {
      this.mRealTimeRange = ((AnimationItem)this.mItems.get(i - 2)).mTime;
    } else {
      this.mRealTimeRange = l1;
    }
  }
  
  private void resetTime()
  {
    boolean bool = this.mIsFirstReset;
    int i = 0;
    if (bool) {
      this.mIsFirstReset = false;
    }
    this.mIsLastFrame = false;
    int j = this.mItems.size();
    while (i < j)
    {
      ((AnimationItem)this.mItems.get(i)).reset();
      i++;
    }
    reevaluate();
    this.mAnimStartTime = transToAnimTime(this.mStartTime);
    long l = transToAnimTime(this.mEndTime);
    this.mAnimEndTime = l;
    this.mPlayTimeRange = Math.abs(l - this.mAnimStartTime);
  }
  
  private long transToAnimTime(long paramLong)
  {
    if ((paramLong != -1L) && (paramLong <= this.mRealTimeRange)) {
      return paramLong;
    }
    return this.mRealTimeRange;
  }
  
  public void finish()
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if (localCommandTriggers != null) {
      localCommandTriggers.finish();
    }
    int i = this.mItems.size();
    int j = 0;
    for (int k = 0; k < i; k++) {
      ((AnimationItem)this.mItems.get(k)).reset();
    }
    i = this.mCurValues.length;
    for (k = j; k < i; k++) {
      this.mCurValues[k] = 0.0D;
    }
  }
  
  public String[] getAttrs()
  {
    return this.mAttrs;
  }
  
  public double getCurValue(int paramInt)
  {
    return this.mCurValues[paramInt];
  }
  
  protected double getDefaultValue()
  {
    return 0.0D;
  }
  
  protected double getDelayValue(int paramInt)
  {
    AnimationItem localAnimationItem = getItem(0);
    double d;
    if (localAnimationItem != null) {
      d = localAnimationItem.get(paramInt);
    } else {
      d = 0.0D;
    }
    return d;
  }
  
  protected AnimationItem getItem(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.mItems.size())) {
      return (AnimationItem)this.mItems.get(paramInt);
    }
    return null;
  }
  
  public String getTag()
  {
    return this.mTag;
  }
  
  protected final Variables getVariables()
  {
    return this.mScreenElement.getVariables();
  }
  
  public void init()
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if (localCommandTriggers != null) {
      localCommandTriggers.init();
    }
  }
  
  public void onAction(String paramString)
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if (localCommandTriggers != null) {
      localCommandTriggers.onAction(paramString);
    }
  }
  
  protected AnimationItem onCreateItem(BaseAnimation paramBaseAnimation, Element paramElement)
  {
    return new AnimationItem(paramBaseAnimation, paramElement);
  }
  
  protected void onTick(AnimationItem paramAnimationItem1, AnimationItem paramAnimationItem2, float paramFloat)
  {
    if ((paramAnimationItem1 == null) && (paramAnimationItem2 == null)) {
      return;
    }
    double d1 = getDefaultValue();
    int i = this.mAttrs.length;
    for (int j = 0; j < i; j++)
    {
      double d2;
      if (paramAnimationItem1 == null) {
        d2 = d1;
      } else {
        d2 = paramAnimationItem1.get(j);
      }
      this.mCurValues[j] = (d2 + (paramAnimationItem2.get(j) - d2) * paramFloat);
    }
  }
  
  public void pause()
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if (localCommandTriggers != null) {
      localCommandTriggers.pause();
    }
  }
  
  public void pauseAnim(long paramLong)
  {
    if (this.mDisable) {
      return;
    }
    if (!this.mIsPaused)
    {
      this.mIsPaused = true;
      this.mPauseTime = paramLong;
    }
  }
  
  public void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.mDisable) {
      return;
    }
    this.mResetTime = paramLong1;
    long l = paramLong2;
    if (paramLong2 < 0L) {
      if (paramLong2 == -1L) {
        l = paramLong2;
      } else {
        l = 0L;
      }
    }
    this.mStartTime = l;
    this.mAnimStartTime = l;
    paramLong2 = paramLong3;
    if (paramLong3 < 0L) {
      if (paramLong3 == -1L) {
        paramLong2 = paramLong3;
      } else {
        paramLong2 = 0L;
      }
    }
    this.mEndTime = paramLong2;
    this.mAnimEndTime = paramLong2;
    this.mIsLoop = paramBoolean1;
    this.mIsDelay = paramBoolean2;
    if ((l != -1L) && ((l < paramLong2) || (paramLong2 < 0L))) {
      paramBoolean1 = false;
    } else {
      paramBoolean1 = true;
    }
    this.mIsReverse = paramBoolean1;
    if (l == paramLong2) {
      this.mIsLoop = false;
    }
    if (paramBoolean2)
    {
      Expression localExpression = this.mDelay;
      if (localExpression != null) {
        this.mResetTime = ((paramLong1 + localExpression.evaluate()));
      }
    }
    this.mIsFirstFrame = true;
    this.mIsLastFrame = false;
    this.mIsPaused = false;
    this.mIsFirstReset = true;
    this.mPlayTimeRange = 0L;
  }
  
  public void reset(long paramLong)
  {
    if (this.mDisable) {
      return;
    }
    int i = this.mAttrs.length;
    for (int j = 0; j < i; j++) {
      this.mCurValues[j] = getDelayValue(j);
    }
    if (this.mInitPaused) {
      playAnim(paramLong, 0L, 0L, false, false);
    } else {
      playAnim(paramLong, 0L, -1L, true, true);
    }
    if (this.mHasName) {
      this.mCurrentFrame.set(0.0D);
    }
    onAction("init");
  }
  
  public void resume()
  {
    CommandTriggers localCommandTriggers = this.mTriggers;
    if (localCommandTriggers != null) {
      localCommandTriggers.resume();
    }
  }
  
  public void resumeAnim(long paramLong)
  {
    if (this.mDisable) {
      return;
    }
    if (this.mIsPaused == true)
    {
      this.mIsPaused = false;
      this.mResetTime += paramLong - this.mPauseTime;
    }
  }
  
  public void setCurValue(int paramInt, double paramDouble)
  {
    this.mCurValues[paramInt] = paramDouble;
  }
  
  public void setDisable(boolean paramBoolean)
  {
    this.mDisable = paramBoolean;
  }
  
  public final void tick(long paramLong)
  {
    if ((!this.mIsPaused) && (!this.mDisable))
    {
      long l1 = paramLong - this.mResetTime;
      int i = 0;
      long l2 = l1;
      if (l1 < 0L) {
        if (this.mIsFirstFrame)
        {
          this.mIsFirstFrame = false;
          l2 = 0L;
        }
        else
        {
          onTick(null, null, 0.0F);
          return;
        }
      }
      if ((this.mIsFirstReset) || ((this.mIsLastFrame) && (!this.mIsTimeInfinite) && (this.mLoop) && (this.mIsLoop))) {
        resetTime();
      }
      if (((this.mIsTimeInfinite) || (!this.mLoop) || (!this.mIsLoop)) && (this.mIsLastFrame))
      {
        this.mIsPaused = true;
        this.mPauseTime = (this.mResetTime + this.mPlayTimeRange);
        if (this.mHasName) {
          this.mCurrentFrame.set(this.mEndTime);
        }
        onAction("end");
        return;
      }
      long l3 = this.mPlayTimeRange;
      l1 = l2;
      if (l2 >= l3)
      {
        this.mResetTime = (paramLong - l2 % (l3 + 1L));
        this.mIsLastFrame = true;
        l1 = l3;
      }
      if (this.mIsReverse) {
        paramLong = this.mAnimStartTime - l1;
      } else {
        paramLong = this.mAnimStartTime + l1;
      }
      l3 = paramLong % (this.mRealTimeRange + 1L);
      int j = this.mItems.size();
      AnimationItem localAnimationItem;
      for (Object localObject = null; i < j; localObject = localAnimationItem)
      {
        localAnimationItem = (AnimationItem)this.mItems.get(i);
        paramLong = localAnimationItem.mTime;
        if (l3 < paramLong)
        {
          if (i == 0)
          {
            l1 = 0L;
            localObject = null;
            l2 = paramLong;
          }
          else
          {
            localObject = (AnimationItem)this.mItems.get(i - 1);
            l1 = localAnimationItem.mTime;
            l2 = ((AnimationItem)localObject).mTime;
            paramLong = l2;
            l2 = l1 - l2;
            l1 = paramLong;
          }
          onTick((AnimationItem)localObject, localAnimationItem, getRatio((AnimationItem)localObject, l3, l1, l2));
          return;
        }
        i++;
      }
      onTick(null, (AnimationItem)localObject, 1.0F);
    }
  }
  
  public static class AnimationItem
  {
    private BaseAnimation mAni;
    private double[] mAttrsValue;
    public Expression mDeltaTimeExp;
    public Expression[] mExps;
    public long mInitTime;
    public InterpolatorHelper mInterpolator;
    private String mName;
    private boolean mNeedEvaluate = true;
    public long mTime;
    
    public AnimationItem(BaseAnimation paramBaseAnimation, Element paramElement)
    {
      this.mAni = paramBaseAnimation;
      load(paramElement);
    }
    
    private void load(Element paramElement)
    {
      Variables localVariables = this.mAni.getVariables();
      Object localObject = paramElement.getAttribute("name");
      this.mName = ((String)localObject);
      if (!TextUtils.isEmpty((CharSequence)localObject)) {
        this.mAni.mScreenElement.getRoot().addAnimationItem(this.mName, this);
      }
      this.mInterpolator = InterpolatorHelper.create(localVariables, paramElement);
      localObject = paramElement.getAttribute("time");
      if (!TextUtils.isEmpty((CharSequence)localObject)) {}
      try
      {
        this.mTime = Long.parseLong((String)localObject);
        label80:
        this.mDeltaTimeExp = Expression.build(localVariables, paramElement.getAttribute("dtime"));
        String[] arrayOfString = this.mAni.getAttrs();
        if (arrayOfString != null)
        {
          this.mAttrsValue = new double[arrayOfString.length];
          this.mExps = new Expression[arrayOfString.length];
          int i = arrayOfString.length;
          int j = 0;
          for (int k = 0; j < i; k++)
          {
            String str = arrayOfString[j];
            Expression localExpression = Expression.build(localVariables, paramElement.getAttribute(str));
            localObject = localExpression;
            if (localExpression == null)
            {
              localObject = localExpression;
              if (k == 0)
              {
                localObject = localExpression;
                if (!"value".equals(str)) {
                  localObject = Expression.build(localVariables, paramElement.getAttribute("value"));
                }
              }
            }
            this.mExps[k] = localObject;
            j++;
          }
        }
        this.mInitTime = this.mTime;
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        break label80;
      }
    }
    
    private void reevaluate()
    {
      Expression[] arrayOfExpression = this.mExps;
      if (arrayOfExpression == null) {
        return;
      }
      int i = arrayOfExpression.length;
      int j = 0;
      for (int k = 0; j < i; k++)
      {
        Expression localExpression = arrayOfExpression[j];
        double[] arrayOfDouble = this.mAttrsValue;
        double d;
        if (localExpression == null) {
          d = 0.0D;
        } else {
          d = localExpression.evaluate();
        }
        arrayOfDouble[k] = d;
        j++;
      }
    }
    
    public boolean attrExists(int paramInt)
    {
      Expression[] arrayOfExpression = this.mExps;
      boolean bool1 = false;
      boolean bool2 = bool1;
      if (arrayOfExpression != null)
      {
        bool2 = bool1;
        if (paramInt >= 0) {
          if (paramInt >= arrayOfExpression.length)
          {
            bool2 = bool1;
          }
          else
          {
            bool2 = bool1;
            if (arrayOfExpression[paramInt] != null) {
              bool2 = true;
            }
          }
        }
      }
      return bool2;
    }
    
    public void changeInterpolator(String paramString1, String paramString2, String paramString3)
    {
      this.mInterpolator = new InterpolatorHelper(this.mAni.getVariables(), paramString1, paramString3, paramString2);
    }
    
    public double get(int paramInt)
    {
      Object localObject = this.mAttrsValue;
      if ((localObject != null) && (paramInt >= 0) && (paramInt < localObject.length))
      {
        if (this.mNeedEvaluate)
        {
          reevaluate();
          this.mNeedEvaluate = false;
        }
        return this.mAttrsValue[paramInt];
      }
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("fail to get number in AnimationItem:");
      ((StringBuilder)localObject).append(paramInt);
      Log.e("BaseAnimation", ((StringBuilder)localObject).toString());
      return 0.0D;
    }
    
    public void reset()
    {
      this.mNeedEvaluate = true;
      this.mTime = this.mInitTime;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.animation.BaseAnimation
 * JD-Core Version:    0.7.0.1
 */