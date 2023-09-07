package com.bumptech.glide.load.engine;

import f3.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import n2.d;

public class q<Data, ResourceType, Transcode>
{
  private final Class<Data> a;
  private final androidx.core.util.e<List<Throwable>> b;
  private final List<? extends g<Data, ResourceType, Transcode>> c;
  private final String d;
  
  public q(Class<Data> paramClass, Class<ResourceType> paramClass1, Class<Transcode> paramClass2, List<g<Data, ResourceType, Transcode>> paramList, androidx.core.util.e<List<Throwable>> parame)
  {
    this.a = paramClass;
    this.b = parame;
    this.c = ((List)j.c(paramList));
    paramList = new StringBuilder();
    paramList.append("Failed LoadPath{");
    paramList.append(paramClass.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass1.getSimpleName());
    paramList.append("->");
    paramList.append(paramClass2.getSimpleName());
    paramList.append("}");
    this.d = paramList.toString();
  }
  
  private s<Transcode> b(com.bumptech.glide.load.data.e<Data> parame, d paramd, int paramInt1, int paramInt2, g.a<ResourceType> parama, List<Throwable> paramList)
    throws GlideException
  {
    int i = this.c.size();
    int j = 0;
    Object localObject1 = null;
    Object localObject3;
    for (;;)
    {
      Object localObject2 = localObject1;
      if (j >= i) {
        break;
      }
      localObject2 = (g)this.c.get(j);
      try
      {
        localObject2 = ((g)localObject2).a(parame, paramInt1, paramInt2, paramd, parama);
        localObject1 = localObject2;
      }
      catch (GlideException localGlideException)
      {
        paramList.add(localGlideException);
      }
      if (localObject1 != null)
      {
        localObject3 = localObject1;
        break;
      }
      j++;
    }
    if (localObject3 != null) {
      return localObject3;
    }
    throw new GlideException(this.d, new ArrayList(paramList));
  }
  
  public s<Transcode> a(com.bumptech.glide.load.data.e<Data> parame, d paramd, int paramInt1, int paramInt2, g.a<ResourceType> parama)
    throws GlideException
  {
    List localList = (List)j.d(this.b.b());
    try
    {
      parame = b(parame, paramd, paramInt1, paramInt2, parama, localList);
      return parame;
    }
    finally
    {
      this.b.a(localList);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("LoadPath{decodePaths=");
    localStringBuilder.append(Arrays.toString(this.c.toArray()));
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.q
 * JD-Core Version:    0.7.0.1
 */