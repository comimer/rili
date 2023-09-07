package com.miui.maml.elements;

import android.graphics.Canvas;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.folme.AnimatedProperty;
import com.miui.maml.folme.ConfigValue;
import com.miui.maml.folme.MamlTransitionListener;
import com.miui.maml.folme.TransitionListenerWrapper;
import d9.a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.w3c.dom.Element;

public abstract class ConfigElement
  extends ScreenElement
{
  protected static final String ATTR_DELAY = "delay";
  protected static final String ATTR_EASE = "ease";
  protected static final String ATTR_FROM_SPEED = "fromSpeed";
  protected static final String ATTR_ON_BEGIN = "onBegin";
  protected static final String ATTR_ON_COMPLETE = "onComplete";
  protected static final String ATTR_ON_UPDATE = "onUpdate";
  protected static final String ATTR_PROPERTY = "property";
  protected ArrayList<a> mTempAnimConfigs = new ArrayList();
  protected ArrayList<ConfigValue> mTempValueList = new ArrayList();
  
  public ConfigElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
  }
  
  private void setupCallbacks(Collection<FunctionElement> paramCollection, n.b<String> paramb)
  {
    paramCollection.clear();
    paramb = paramb.iterator();
    while (paramb.hasNext())
    {
      Object localObject = (String)paramb.next();
      localObject = getRoot().findElement((String)localObject);
      if ((localObject instanceof FunctionElement)) {
        paramCollection.add((FunctionElement)localObject);
      }
    }
  }
  
  protected void doRender(Canvas paramCanvas) {}
  
  protected abstract void evaluateConfigValue();
  
  public a getAnimConfig(TransitionListenerWrapper paramTransitionListenerWrapper)
  {
    MamlTransitionListener localMamlTransitionListener = paramTransitionListenerWrapper.getListener();
    if (localMamlTransitionListener == null) {
      return new a();
    }
    evaluateConfigValue();
    a locala = new a();
    Iterator localIterator1 = this.mTempValueList.iterator();
    while (localIterator1.hasNext())
    {
      ConfigValue localConfigValue = (ConfigValue)localIterator1.next();
      Object localObject = localConfigValue.mRelatedProperty;
      ArrayList localArrayList;
      Iterator localIterator2;
      if ((localObject != null) && (!((n.b)localObject).isEmpty()))
      {
        localArrayList = new ArrayList();
        localIterator2 = localConfigValue.mRelatedProperty.iterator();
      }
      while (localIterator2.hasNext())
      {
        localObject = AnimatedProperty.getPropertyByName((String)localIterator2.next());
        if (localObject != null) {
          localArrayList.add(localObject);
        }
        if (localConfigValue.mHasFromSpeed)
        {
          locala.q((miuix.animation.property.b)localObject, localConfigValue.mEase, localConfigValue.mDelay, new float[] { localConfigValue.mFromSpeed });
        }
        else
        {
          locala.q((miuix.animation.property.b)localObject, localConfigValue.mEase, localConfigValue.mDelay, new float[0]);
          continue;
          if (localConfigValue.mHasFromSpeed) {
            locala.m(localConfigValue.mFromSpeed);
          }
          locala.l(localConfigValue.mEase);
          locala.j(localConfigValue.mDelay);
        }
      }
      setupCallbacks(localMamlTransitionListener.mBeginCallback, localConfigValue.mOnBeginCallback);
      setupCallbacks(localMamlTransitionListener.mUpdateCallback, localConfigValue.mOnUpdateCallback);
      setupCallbacks(localMamlTransitionListener.mCompleteCallback, localConfigValue.mOnCompleteCallback);
    }
    locala.a(new g9.b[] { paramTransitionListenerWrapper });
    return locala;
  }
  
  public boolean isVisible()
  {
    return false;
  }
  
  public void tick(long paramLong) {}
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ConfigElement
 * JD-Core Version:    0.7.0.1
 */