package com.bumptech.glide.load.engine;

import android.util.Log;
import f3.j;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import n2.d;

public class g<DataType, ResourceType, Transcode>
{
  private final Class<DataType> a;
  private final List<? extends n2.e<DataType, ResourceType>> b;
  private final y2.e<ResourceType, Transcode> c;
  private final androidx.core.util.e<List<Throwable>> d;
  private final String e;
  
  public g(Class<DataType> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<? extends n2.e<DataType, ResourceType>> paramList, y2.e<ResourceType, Transcode> parame, androidx.core.util.e<List<Throwable>> parame1)
  {
    this.a = paramClass;
    this.b = paramList;
    this.c = parame;
    this.d = parame1;
    paramList = new StringBuilder();
    paramList.append("Failed DecodePath{");
    paramList.append(paramClass.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass1.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass2.getSimpleName());
    paramList.append("}");
    this.e = paramList.toString();
  }
  
  private s<ResourceType> b(com.bumptech.glide.load.data.e<DataType> parame, int paramInt1, int paramInt2, d paramd)
    throws GlideException
  {
    List localList = (List)j.d(this.d.b());
    try
    {
      parame = c(parame, paramInt1, paramInt2, paramd, localList);
      return parame;
    }
    finally
    {
      this.d.a(localList);
    }
  }
  
  private s<ResourceType> c(com.bumptech.glide.load.data.e<DataType> parame, int paramInt1, int paramInt2, d paramd, List<Throwable> paramList)
    throws GlideException
  {
    int i = this.b.size();
    Object localObject1 = null;
    int j = 0;
    Object localObject3;
    for (;;)
    {
      Object localObject2 = localObject1;
      if (j >= i) {
        break;
      }
      n2.e locale = (n2.e)this.b.get(j);
      localObject2 = localObject1;
      try
      {
        if (!locale.a(parame.a(), paramd)) {
          break label161;
        }
        localObject2 = locale.b(parame.a(), paramInt1, paramInt2, paramd);
      }
      catch (OutOfMemoryError localOutOfMemoryError) {}catch (RuntimeException localRuntimeException) {}catch (IOException localIOException) {}
      if (Log.isLoggable("DecodePath", 2))
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append("Failed to decode data for ");
        localStringBuilder.append(locale);
        Log.v("DecodePath", localStringBuilder.toString(), localIOException);
      }
      paramList.add(localIOException);
      localObject3 = localObject1;
      label161:
      if (localObject3 != null) {
        break;
      }
      j++;
      localObject1 = localObject3;
    }
    if (localObject3 != null) {
      return localObject3;
    }
    throw new GlideException(this.e, new ArrayList(paramList));
  }
  
  public s<Transcode> a(com.bumptech.glide.load.data.e<DataType> parame, int paramInt1, int paramInt2, d paramd, a<ResourceType> parama)
    throws GlideException
  {
    parame = parama.a(b(parame, paramInt1, paramInt2, paramd));
    return this.c.a(parame, paramd);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("DecodePath{ dataClass=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(", decoders=");
    localStringBuilder.append(this.b);
    localStringBuilder.append(", transcoder=");
    localStringBuilder.append(this.c);
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  static abstract interface a<ResourceType>
  {
    public abstract s<ResourceType> a(s<ResourceType> params);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.g
 * JD-Core Version:    0.7.0.1
 */