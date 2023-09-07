package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.m;
import kotlin.reflect.m.a;

public abstract class PropertyReference0
  extends PropertyReference
  implements m
{
  public PropertyReference0() {}
  
  public PropertyReference0(Object paramObject)
  {
    super(paramObject);
  }
  
  public PropertyReference0(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.h(this);
  }
  
  public Object getDelegate()
  {
    return ((m)getReflected()).getDelegate();
  }
  
  public m.a getGetter()
  {
    return ((m)getReflected()).getGetter();
  }
  
  public Object invoke()
  {
    return get();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference0
 * JD-Core Version:    0.7.0.1
 */