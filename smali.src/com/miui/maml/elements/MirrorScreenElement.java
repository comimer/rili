package com.miui.maml.elements;

import android.graphics.Canvas;
import android.util.Log;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class MirrorScreenElement
  extends AnimatedScreenElement
{
  private static final String LOG_TAG = "MirrorScreenElement";
  public static final String TAG_NAME = "Mirror";
  private boolean mMirrorTranslation;
  private ScreenElement mTarget;
  private String mTargetName;
  
  public MirrorScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    this.mTargetName = paramElement.getAttribute("target");
    this.mMirrorTranslation = Boolean.parseBoolean(paramElement.getAttribute("mirrorTranslation"));
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    ScreenElement localScreenElement = this.mTarget;
    if (localScreenElement != null) {
      if ((this.mMirrorTranslation) && ((localScreenElement instanceof AnimatedScreenElement))) {
        ((AnimatedScreenElement)localScreenElement).doRenderWithTranslation(paramCanvas);
      } else {
        localScreenElement.doRender(paramCanvas);
      }
    }
  }
  
  public void init()
  {
    super.init();
    Object localObject = this.mRoot.findElement(this.mTargetName);
    this.mTarget = ((ScreenElement)localObject);
    if (localObject == null)
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append("the target does not exist: ");
      ((StringBuilder)localObject).append(this.mTargetName);
      Log.e("MirrorScreenElement", ((StringBuilder)localObject).toString());
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.MirrorScreenElement
 * JD-Core Version:    0.7.0.1
 */