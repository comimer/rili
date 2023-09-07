package com.miui.maml.folme;

import com.miui.maml.elements.AnimatedScreenElement;
import com.miui.maml.elements.FunctionElement;
import g9.c;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

public class MamlTransitionListener
  extends g9.b
{
  public CopyOnWriteArraySet<FunctionElement> mBeginCallback = new CopyOnWriteArraySet();
  public CopyOnWriteArraySet<FunctionElement> mCompleteCallback = new CopyOnWriteArraySet();
  private AnimatedScreenElement mTarget;
  public CopyOnWriteArraySet<FunctionElement> mUpdateCallback = new CopyOnWriteArraySet();
  
  public MamlTransitionListener(AnimatedScreenElement paramAnimatedScreenElement)
  {
    this.mTarget = paramAnimatedScreenElement;
  }
  
  public void onBegin(Object paramObject)
  {
    paramObject = this.mBeginCallback.iterator();
    while (paramObject.hasNext()) {
      ((FunctionElement)paramObject.next()).perform();
    }
  }
  
  public void onComplete(Object paramObject)
  {
    this.mTarget.mToProperties.clear();
    paramObject = this.mCompleteCallback.iterator();
    while (paramObject.hasNext()) {
      ((FunctionElement)paramObject.next()).perform();
    }
  }
  
  public void onUpdate(Object paramObject, Collection<c> paramCollection)
  {
    paramObject = paramCollection.iterator();
    while (paramObject.hasNext())
    {
      paramCollection = (c)paramObject.next();
      miuix.animation.property.b localb = paramCollection.a;
      if ((localb instanceof IAnimatedProperty)) {
        ((IAnimatedProperty)localb).setVelocityValue(this.mTarget, (float)paramCollection.c);
      }
      if (paramCollection.e) {
        this.mTarget.mToProperties.remove(localb);
      }
    }
    paramObject = this.mUpdateCallback.iterator();
    while (paramObject.hasNext()) {
      ((FunctionElement)paramObject.next()).perform();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.folme.MamlTransitionListener
 * JD-Core Version:    0.7.0.1
 */