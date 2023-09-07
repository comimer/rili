package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.i;
import kotlin.reflect.i.a;
import kotlin.reflect.m;
import kotlin.reflect.m.a;

public abstract class MutablePropertyReference0
  extends MutablePropertyReference
  implements i
{
  public MutablePropertyReference0() {}
  
  public MutablePropertyReference0(Object paramObject)
  {
    super(paramObject);
  }
  
  public MutablePropertyReference0(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.e(this);
  }
  
  public Object getDelegate()
  {
    return ((i)getReflected()).getDelegate();
  }
  
  public m.a getGetter()
  {
    return ((i)getReflected()).getGetter();
  }
  
  public i.a getSetter()
  {
    return ((i)getReflected()).getSetter();
  }
  
  public Object invoke()
  {
    return get();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.MutablePropertyReference0
 * JD-Core Version:    0.7.0.1
 */