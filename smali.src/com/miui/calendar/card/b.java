package com.miui.calendar.card;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.widget.BaseAdapter;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.z;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import r3.c;

public abstract class b
{
  protected Context a;
  protected BaseAdapter b;
  protected Calendar c;
  protected List<Card> d = new ArrayList();
  protected a e;
  protected r0 f;
  protected r0 g;
  
  public b(Context paramContext, BaseAdapter paramBaseAdapter)
  {
    this.a = paramContext;
    this.b = paramBaseAdapter;
    this.c = Calendar.getInstance();
  }
  
  private void b(b paramb)
  {
    r0 localr0 = this.g;
    if (localr0 != null)
    {
      this.g = null;
      f(localr0, paramb);
    }
  }
  
  private void g(b paramb)
  {
    if (this.e == null)
    {
      paramb = new a(paramb);
      this.e = paramb;
      paramb.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null);
    }
    else
    {
      z.m("Cal:D:CardFactory", "mLoadDataAsyncTask is not null");
      this.f = null;
    }
  }
  
  public Calendar c()
  {
    return this.c;
  }
  
  protected List<s3.a> d()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.d.size(); i++)
    {
      Object localObject = (Card)this.d.get(i);
      if ((localObject instanceof s3.a))
      {
        localObject = (s3.a)localObject;
        if (((s3.a)localObject).j()) {
          localArrayList.add(localObject);
        }
      }
      else
      {
        List localList = ((c)localObject).g();
        if (localList != null) {
          for (int j = 0; j < localList.size(); j++)
          {
            localObject = (s3.a)localList.get(j);
            if (((s3.a)localObject).j()) {
              localArrayList.add(localObject);
            }
          }
        }
      }
    }
    return localArrayList;
  }
  
  protected List<s3.a> e()
  {
    return d();
  }
  
  public void f(r0 paramr0, b paramb)
  {
    if (paramr0 == null)
    {
      z.m("Cal:D:CardFactory", "loadData() desiredDay is null");
      return;
    }
    if (this.f != null)
    {
      if (r0.n(paramr0.P(true), paramr0.l()) == r0.n(this.f.P(true), this.f.l()))
      {
        paramb = new StringBuilder();
        paramb.append("loadData() ignore, desiredDay=");
        paramb.append(paramr0);
        paramb.append(",mExecutingTaskDay=");
        paramb.append(this.f);
        z.a("Cal:D:CardFactory", paramb.toString());
        return;
      }
      paramb = new r0(paramr0.s());
      this.g = paramb;
      paramb.D(paramr0.P(true));
      paramr0 = new StringBuilder();
      paramr0.append("loadData() set waiting task, mWaitingTaskDay=");
      paramr0.append(this.g);
      z.a("Cal:D:CardFactory", paramr0.toString());
      return;
    }
    Object localObject = new r0(paramr0.s());
    this.f = ((r0)localObject);
    ((r0)localObject).D(paramr0.P(true));
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("loadData() start loading card, mExecutingTaskDay=");
    ((StringBuilder)localObject).append(this.f);
    z.a("Cal:D:CardFactory", ((StringBuilder)localObject).toString());
    h(paramr0);
    g(paramb);
  }
  
  protected abstract void h(r0 paramr0);
  
  private class a
    extends AsyncTask<Void, Integer, String>
  {
    private b.b a;
    private Handler b = new Handler(Looper.getMainLooper());
    
    public a(b.b paramb)
    {
      this.a = paramb;
    }
    
    private void g(Card paramCard)
    {
      paramCard.a();
      b.b localb = this.a;
      if (localb != null) {
        localb.a();
      }
      paramCard.e(this.a);
    }
    
    protected String b(Void... paramVarArgs)
    {
      for (int i = 0; i < b.this.d.size(); i++)
      {
        ((Card)b.this.d.get(i)).b();
        if (isCancelled())
        {
          z.a("Cal:D:CardFactory", "LoadLocalDataAsyncTask doInBackground() task cancelled, break");
          break;
        }
        publishProgress(new Integer[] { Integer.valueOf(i) });
      }
      return null;
    }
    
    protected void d(String paramString)
    {
      b.this.f = null;
      z.a("Cal:D:CardFactory", "LoadLocalDataAsyncTask onCancelled() mExecutingTaskDay set null");
      b.this.e = null;
      super.onCancelled(paramString);
    }
    
    protected void e(String paramString)
    {
      b.this.f = null;
      z.a("Cal:D:CardFactory", "LoadLocalDataAsyncTask() load card completed, mExecutingTaskDay set null");
      paramString = b.this;
      paramString.e = null;
      b.a(paramString, this.a);
    }
    
    protected void f(Integer... paramVarArgs)
    {
      int i = paramVarArgs[0].intValue();
      paramVarArgs = b.this.d;
      if ((paramVarArgs != null) && (!paramVarArgs.isEmpty()) && (i < b.this.d.size()))
      {
        paramVarArgs = (Card)b.this.d.get(i);
        if (paramVarArgs.c == 81) {
          g(paramVarArgs);
        } else {
          this.b.post(new a(this, paramVarArgs));
        }
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.b
 * JD-Core Version:    0.7.0.1
 */