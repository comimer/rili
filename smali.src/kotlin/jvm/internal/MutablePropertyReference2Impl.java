package kotlin.jvm.internal;

import kotlin.reflect.c;
import kotlin.reflect.d;
import kotlin.reflect.f;

public class MutablePropertyReference2Impl
  extends MutablePropertyReference2
{
  public MutablePropertyReference2Impl(Class paramClass, String paramString1, String paramString2, int paramInt)
  {
    super(paramClass, paramString1, paramString2, paramInt);
  }
  
  public MutablePropertyReference2Impl(f paramf, String paramString1, String paramString2)
  {
    super(((l)paramf).d(), paramString1, paramString2, paramf instanceof d ^ true);
  }
  
  public Object get(Object paramObject1, Object paramObject2)
  {
    return getGetter().call(new Object[] { paramObject1, paramObject2 });
  }
  
  public void set(Object paramObject1, Object paramObject2, Object paramObject3)
  {
    getSetter().call(new Object[] { paramObject1, paramObject2, paramObject3 });
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.MutablePropertyReference2Impl
 * JD-Core Version:    0.7.0.1
 */