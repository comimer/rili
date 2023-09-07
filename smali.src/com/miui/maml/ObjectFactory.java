package com.miui.maml;

import com.miui.maml.elements.BitmapProvider;
import com.miui.maml.elements.ScreenElement;
import org.w3c.dom.Element;

public abstract class ObjectFactory
{
  public abstract String getName();
  
  public abstract ObjectFactory getOld();
  
  public abstract void setOld(ObjectFactory paramObjectFactory);
  
  public static abstract class ActionCommandFactory
    extends ObjectFactory.ObjectFactoryBase<ActionCommandFactory>
  {
    public static final String NAME = "ActionCommand";
    
    protected ActionCommandFactory()
    {
      super();
    }
    
    public final ActionCommand create(ScreenElement paramScreenElement, Element paramElement)
    {
      Object localObject = doCreate(paramScreenElement, paramElement);
      if (localObject != null) {
        return localObject;
      }
      localObject = this.mOld;
      if (localObject == null) {
        paramScreenElement = null;
      } else {
        paramScreenElement = ((ActionCommandFactory)localObject).create(paramScreenElement, paramElement);
      }
      return paramScreenElement;
    }
    
    protected abstract ActionCommand doCreate(ScreenElement paramScreenElement, Element paramElement);
  }
  
  public static abstract class BitmapProviderFactory
    extends ObjectFactory.ObjectFactoryBase<BitmapProviderFactory>
  {
    public static final String NAME = "BitmapProvider";
    
    protected BitmapProviderFactory()
    {
      super();
    }
    
    public final BitmapProvider create(ScreenElementRoot paramScreenElementRoot, String paramString)
    {
      Object localObject = doCreate(paramScreenElementRoot, paramString);
      if (localObject != null) {
        return localObject;
      }
      localObject = this.mOld;
      if (localObject == null) {
        paramScreenElementRoot = null;
      } else {
        paramScreenElementRoot = ((BitmapProviderFactory)localObject).create(paramScreenElementRoot, paramString);
      }
      return paramScreenElementRoot;
    }
    
    protected abstract BitmapProvider doCreate(ScreenElementRoot paramScreenElementRoot, String paramString);
  }
  
  public static abstract class ObjectFactoryBase<T extends ObjectFactory>
    extends ObjectFactory
  {
    private String mName;
    protected T mOld;
    
    protected ObjectFactoryBase(String paramString)
    {
      this.mName = paramString;
    }
    
    public String getName()
    {
      return this.mName;
    }
    
    public T getOld()
    {
      return this.mOld;
    }
    
    public void setOld(ObjectFactory paramObjectFactory)
    {
      this.mOld = paramObjectFactory;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.ObjectFactory
 * JD-Core Version:    0.7.0.1
 */