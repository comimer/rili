package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.o;
import kotlin.reflect.o.a;

public abstract class PropertyReference2
  extends PropertyReference
  implements o
{
  public PropertyReference2() {}
  
  public PropertyReference2(Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(CallableReference.NO_RECEIVER, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.j(this);
  }
  
  public Object getDelegate(Object paramObject1, Object paramObject2)
  {
    return ((o)getReflected()).getDelegate(paramObject1, paramObject2);
  }
  
  public o.a getGetter()
  {
    return ((o)getReflected()).getGetter();
  }
  
  public Object invoke(Object paramObject1, Object paramObject2)
  {
    return get(paramObject1, paramObject2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.PropertyReference2
 * JD-Core Version:    0.7.0.1
 */