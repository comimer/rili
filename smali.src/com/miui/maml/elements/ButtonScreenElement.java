package com.miui.maml.elements;

import android.graphics.Canvas;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.view.ViewConfiguration;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class ButtonScreenElement
  extends ElementGroup
{
  private static final String LOG_TAG = "ButtonScreenElement";
  public static final String TAG_NAME = "Button";
  private boolean mIsAlignChildren;
  private ButtonActionListener mListener;
  private String mListenerName;
  private ElementGroup mNormalElements;
  private ElementGroup mPressedElements;
  private float mPreviousTapPositionX;
  private float mPreviousTapPositionY;
  private long mPreviousTapUpTime;
  
  public ButtonScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    this.mIsAlignChildren = Boolean.parseBoolean(getAttr(paramElement, "alignChildren"));
    this.mListenerName = getAttr(paramElement, "listener");
    this.mTouchable = true;
  }
  
  private void showNormalElements()
  {
    ElementGroup localElementGroup = this.mNormalElements;
    if (localElementGroup != null) {
      localElementGroup.show(true);
    }
    localElementGroup = this.mPressedElements;
    if (localElementGroup != null) {
      localElementGroup.show(false);
    }
  }
  
  private void showPressedElements()
  {
    ElementGroup localElementGroup = this.mPressedElements;
    if (localElementGroup != null)
    {
      localElementGroup.show(true);
      localElementGroup = this.mNormalElements;
      if (localElementGroup != null) {
        localElementGroup.show(false);
      }
    }
    else
    {
      localElementGroup = this.mNormalElements;
      if (localElementGroup != null) {
        localElementGroup.show(true);
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    paramCanvas.save();
    if (!this.mIsAlignChildren) {
      paramCanvas.translate(-getLeft(), -getTop());
    }
    super.doRender(paramCanvas);
    paramCanvas.restore();
  }
  
  protected float getParentLeft()
  {
    boolean bool = this.mIsAlignChildren;
    float f1 = 0.0F;
    float f2;
    if (bool) {
      f2 = getLeft();
    } else {
      f2 = 0.0F;
    }
    ElementGroup localElementGroup = this.mParent;
    if (localElementGroup != null) {
      f1 = localElementGroup.getParentLeft();
    }
    return f2 + f1;
  }
  
  protected float getParentTop()
  {
    boolean bool = this.mIsAlignChildren;
    float f1 = 0.0F;
    float f2;
    if (bool) {
      f2 = getTop();
    } else {
      f2 = 0.0F;
    }
    ElementGroup localElementGroup = this.mParent;
    if (localElementGroup != null) {
      f1 = localElementGroup.getParentTop();
    }
    return f2 + f1;
  }
  
  public void init()
  {
    super.init();
    if ((this.mListener == null) && (!TextUtils.isEmpty(this.mListenerName)))
    {
      ScreenElement localScreenElement = this.mRoot.findElement(this.mListenerName);
      try
      {
        this.mListener = ((ButtonActionListener)localScreenElement);
      }
      catch (ClassCastException localClassCastException)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("button listener designated by the name is not actually a listener: ");
        localStringBuilder.append(this.mListenerName);
        Log.e("ButtonScreenElement", localStringBuilder.toString());
      }
    }
    showNormalElements();
  }
  
  protected void onActionCancel()
  {
    super.onActionCancel();
    resetState();
  }
  
  protected void onActionDown(float paramFloat1, float paramFloat2)
  {
    super.onActionDown(paramFloat1, paramFloat2);
    Object localObject = this.mListener;
    if (localObject != null) {
      ((ButtonActionListener)localObject).onButtonDown(this.mName);
    }
    if (SystemClock.uptimeMillis() - this.mPreviousTapUpTime <= ViewConfiguration.getDoubleTapTimeout())
    {
      float f1 = paramFloat1 - this.mPreviousTapPositionX;
      float f2 = paramFloat2 - this.mPreviousTapPositionY;
      int i = ViewConfiguration.get(getContext().mContext).getScaledDoubleTapSlop();
      if (f1 * f1 + f2 * f2 < i * i)
      {
        localObject = this.mListener;
        if (localObject != null) {
          ((ButtonActionListener)localObject).onButtonDoubleClick(this.mName);
        }
        performAction("double");
      }
    }
    this.mPreviousTapPositionX = paramFloat1;
    this.mPreviousTapPositionY = paramFloat2;
    showPressedElements();
    localObject = this.mPressedElements;
    if (localObject != null) {
      ((ScreenElement)localObject).reset();
    }
  }
  
  public void onActionUp()
  {
    super.onActionUp();
    ButtonActionListener localButtonActionListener = this.mListener;
    if (localButtonActionListener != null) {
      localButtonActionListener.onButtonUp(this.mName);
    }
    this.mPreviousTapUpTime = SystemClock.uptimeMillis();
    resetState();
  }
  
  protected ScreenElement onCreateChild(Element paramElement)
  {
    String str = paramElement.getTagName();
    if (str.equalsIgnoreCase("Normal"))
    {
      paramElement = new ElementGroup(paramElement, this.mRoot);
      this.mNormalElements = paramElement;
      return paramElement;
    }
    if (str.equalsIgnoreCase("Pressed"))
    {
      paramElement = new ElementGroup(paramElement, this.mRoot);
      this.mPressedElements = paramElement;
      return paramElement;
    }
    return super.onCreateChild(paramElement);
  }
  
  protected void resetState()
  {
    showNormalElements();
    ElementGroup localElementGroup = this.mNormalElements;
    if (localElementGroup != null) {
      localElementGroup.reset();
    }
  }
  
  public void setListener(ButtonActionListener paramButtonActionListener)
  {
    this.mListener = paramButtonActionListener;
  }
  
  public static abstract interface ButtonActionListener
  {
    public abstract boolean onButtonDoubleClick(String paramString);
    
    public abstract boolean onButtonDown(String paramString);
    
    public abstract boolean onButtonLongClick(String paramString);
    
    public abstract boolean onButtonUp(String paramString);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ButtonScreenElement
 * JD-Core Version:    0.7.0.1
 */