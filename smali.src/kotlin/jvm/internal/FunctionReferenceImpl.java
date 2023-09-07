package kotlin.jvm.internal;

import kotlin.reflect.d;
import kotlin.reflect.f;

public class FunctionReferenceImpl
  extends FunctionReference
{
  public FunctionReferenceImpl(int paramInt1, Class paramClass, String paramString1, String paramString2, int paramInt2)
  {
    super(paramInt1, CallableReference.NO_RECEIVER, paramClass, paramString1, paramString2, paramInt2);
  }
  
  public FunctionReferenceImpl(int paramInt1, Object paramObject, Class paramClass, String paramString1, String paramString2, int paramInt2)
  {
    super(paramInt1, paramObject, paramClass, paramString1, paramString2, paramInt2);
  }
  
  public FunctionReferenceImpl(int paramInt, f paramf, String paramString1, String paramString2)
  {
    super(paramInt, CallableReference.NO_RECEIVER, ((l)paramf).d(), paramString1, paramString2, paramf instanceof d ^ true);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     kotlin.jvm.internal.FunctionReferenceImpl
 * JD-Core Version:    0.7.0.1
 */