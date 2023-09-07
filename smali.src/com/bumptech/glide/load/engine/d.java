package com.bumptech.glide.load.engine;

import java.io.File;
import n2.a;
import p2.a.b;

class d<DataType>
  implements a.b
{
  private final a<DataType> a;
  private final DataType b;
  private final n2.d c;
  
  d(a<DataType> parama, DataType paramDataType, n2.d paramd)
  {
    this.a = parama;
    this.b = paramDataType;
    this.c = paramd;
  }
  
  public boolean a(File paramFile)
  {
    return this.a.b(this.b, paramFile, this.c);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.d
 * JD-Core Version:    0.7.0.1
 */