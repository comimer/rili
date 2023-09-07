package com.miui.maml;

import android.util.Log;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

public class MultipleRenderable
  implements RendererController.IRenderable
{
  private static final String LOG_TAG = "MultipleRenderable";
  private int mActiveCount;
  private ArrayList<RenderableInfo> mList = new ArrayList();
  
  private RenderableInfo find(RendererController.IRenderable paramIRenderable)
  {
    int i = this.mList.size();
    for (int j = 0; j < i; j++)
    {
      RenderableInfo localRenderableInfo = (RenderableInfo)this.mList.get(j);
      if (localRenderableInfo.r.get() == paramIRenderable) {
        return localRenderableInfo;
      }
    }
    return null;
  }
  
  private int setPause(RendererController.IRenderable paramIRenderable, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("setPause: ");
    localStringBuilder.append(paramBoolean);
    localStringBuilder.append(" ");
    localStringBuilder.append(paramIRenderable);
    Log.d("MultipleRenderable", localStringBuilder.toString());
    paramIRenderable = find(paramIRenderable);
    if (paramIRenderable == null) {
      return this.mActiveCount;
    }
    if (paramIRenderable.paused != paramBoolean)
    {
      paramIRenderable.paused = paramBoolean;
      int i = this.mActiveCount;
      if (paramBoolean) {
        i--;
      } else {
        i++;
      }
      this.mActiveCount = i;
    }
    return this.mActiveCount;
  }
  
  public void add(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      Object localObject = find(paramIRenderable);
      if (localObject != null) {
        return;
      }
      localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append("add: ");
      ((StringBuilder)localObject).append(paramIRenderable);
      Log.d("MultipleRenderable", ((StringBuilder)localObject).toString());
      ArrayList localArrayList = this.mList;
      localObject = new com/miui/maml/MultipleRenderable$RenderableInfo;
      ((RenderableInfo)localObject).<init>(paramIRenderable);
      localArrayList.add(localObject);
      this.mActiveCount += 1;
      return;
    }
    finally {}
  }
  
  public void doRender()
  {
    try
    {
      this.mActiveCount = 0;
      for (int i = this.mList.size() - 1; i >= 0; i--)
      {
        Object localObject1 = (RenderableInfo)this.mList.get(i);
        if (!((RenderableInfo)localObject1).paused)
        {
          localObject1 = (RendererController.IRenderable)((RenderableInfo)localObject1).r.get();
          if (localObject1 != null)
          {
            ((RendererController.IRenderable)localObject1).doRender();
            this.mActiveCount += 1;
          }
          else
          {
            this.mList.remove(i);
          }
        }
      }
      return;
    }
    finally {}
  }
  
  public int pause(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      int i = setPause(paramIRenderable, true);
      return i;
    }
    finally
    {
      paramIRenderable = finally;
      throw paramIRenderable;
    }
  }
  
  public void remove(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      int i = this.mList.size();
      if (i == 0) {
        return;
      }
      i--;
      while (i >= 0)
      {
        Object localObject = (RenderableInfo)this.mList.get(i);
        RendererController.IRenderable localIRenderable = (RendererController.IRenderable)((RenderableInfo)localObject).r.get();
        if ((localIRenderable == null) || (localIRenderable == paramIRenderable))
        {
          if (!((RenderableInfo)localObject).paused) {
            this.mActiveCount -= 1;
          }
          this.mList.remove(i);
          localObject = new java/lang/StringBuilder;
          ((StringBuilder)localObject).<init>();
          ((StringBuilder)localObject).append("remove: ");
          ((StringBuilder)localObject).append(localIRenderable);
          Log.d("MultipleRenderable", ((StringBuilder)localObject).toString());
        }
        i--;
      }
      return;
    }
    finally {}
  }
  
  public int resume(RendererController.IRenderable paramIRenderable)
  {
    try
    {
      int i = setPause(paramIRenderable, false);
      return i;
    }
    finally
    {
      paramIRenderable = finally;
      throw paramIRenderable;
    }
  }
  
  public int size()
  {
    try
    {
      int i = this.mList.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  private static class RenderableInfo
  {
    public boolean paused;
    public WeakReference<RendererController.IRenderable> r;
    
    public RenderableInfo(RendererController.IRenderable paramIRenderable)
    {
      this.r = new WeakReference(paramIRenderable);
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.MultipleRenderable
 * JD-Core Version:    0.7.0.1
 */