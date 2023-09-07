package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.j;
import kotlin.reflect.j.a;
import kotlin.reflect.n;
import kotlin.reflect.n.a;

public abstract class MutablePropertyReference1
  extends MutablePropertyReference
  implements j
{
  public MutablePropertyReference1() {}
  
  public MutablePropertyReference1(Object paramObject)
  {
    super(paramObject);
  }
  
  public MutablePropertyReference1(Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramObject, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.f(this);
  }
  
  public Object getDelegate(Object paramObject)
  {
    return ((j)getReflected()).getDelegate(paramObject);
  }
  
  public n.a getGetter()
  {
    return ((j)getReflected()).getGetter();
  }
  
  public j.a getSetter()
  {
    return ((j)getReflected()).getSetter();
  }
  
  public Object invoke(Object paramObject)
  {
    return get(paramObject);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.MutablePropertyReference1
 * JD-Core Version:    0.7.0.1
 */