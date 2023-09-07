package com.airbnb.lottie.model.content;

import b1.u;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.model.layer.a;
import f1.b;

public class ShapeTrimPath
  implements g1.c
{
  private final String a;
  private final Type b;
  private final b c;
  private final b d;
  private final b e;
  private final boolean f;
  
  public ShapeTrimPath(String paramString, Type paramType, b paramb1, b paramb2, b paramb3, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramType;
    this.c = paramb1;
    this.d = paramb2;
    this.e = paramb3;
    this.f = paramBoolean;
  }
  
  public b1.c a(LottieDrawable paramLottieDrawable, a parama)
  {
    return new u(parama, this);
  }
  
  public b b()
  {
    return this.d;
  }
  
  public String c()
  {
    return this.a;
  }
  
  public b d()
  {
    return this.e;
  }
  
  public b e()
  {
    return this.c;
  }
  
  public Type f()
  {
    return this.b;
  }
  
  public boolean g()
  {
    return this.f;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Trim Path: {start: ");
    localStringBuilder.append(this.c);
    localStringBuilder.append(", end: ");
    localStringBuilder.append(this.d);
    localStringBuilder.append(", offset: ");
    localStringBuilder.append(this.e);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public static enum Type
  {
    static
    {
      Type localType1 = new Type("SIMULTANEOUSLY", 0);
      SIMULTANEOUSLY = localType1;
      Type localType2 = new Type("INDIVIDUALLY", 1);
      INDIVIDUALLY = localType2;
      $VALUES = new Type[] { localType1, localType2 };
    }
    
    private Type() {}
    
    public static Type forId(int paramInt)
    {
      if (paramInt != 1)
      {
        if (paramInt == 2) {
          return INDIVIDUALLY;
        }
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Unknown trim path type ");
        localStringBuilder.append(paramInt);
        throw new IllegalArgumentException(localStringBuilder.toString());
      }
      return SIMULTANEOUSLY;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.airbnb.lottie.model.content.ShapeTrimPath
 * JD-Core Version:    0.7.0.1
 */