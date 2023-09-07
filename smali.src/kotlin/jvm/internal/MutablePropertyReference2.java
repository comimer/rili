package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.k;
import kotlin.reflect.k.a;
import kotlin.reflect.o;
import kotlin.reflect.o.a;

public abstract class MutablePropertyReference2
  extends MutablePropertyReference
  implements k
{
  public MutablePropertyReference2() {}
  
  public MutablePropertyReference2(Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(CallableReference.NO_RECEIVER, paramClass, paramString1, paramString2, paramInt);
  }
  
  protected c computeReflected()
  {
    return v.g(this);
  }
  
  public Object getDelegate(Object paramObject1, Object paramObject2)
  {
    return ((k)getReflected()).getDelegate(paramObject1, paramObject2);
  }
  
  public o.a getGetter()
  {
    return ((k)getReflected()).getGetter();
  }
  
  public k.a getSetter()
  {
    return ((k)getReflected()).getSetter();
  }
  
  public Object invoke(Object paramObject1, Object paramObject2)
  {
    return get(paramObject1, paramObject2);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.MutablePropertyReference2
 * JD-Core Version:    0.7.0.1
 */