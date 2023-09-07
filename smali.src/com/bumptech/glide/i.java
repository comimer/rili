package com.bumptech.glide;

import d3.a;
import d3.c;

public abstract class i<CHILD extends i<CHILD, TranscodeType>, TranscodeType>
  implements Cloneable
{
  private c<? super TranscodeType> a = a.b();
  
  public final CHILD a()
  {
    try
    {
      i locali = (i)super.clone();
      return locali;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
  
  final c<? super TranscodeType> b()
  {
    return this.a;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.i
 * JD-Core Version:    0.7.0.1
 */