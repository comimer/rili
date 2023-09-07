package com.miui.zeus.landingpage.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

public class e
  extends BroadcastReceiver
{
  public List<DownloadListener> a = new CopyOnWriteArrayList();
  
  public void onReceive(final Context paramContext, final Intent paramIntent)
  {
    if ((paramIntent != null) && (!TextUtils.isEmpty(paramIntent.getAction())))
    {
      if (!"com.xiaomi.market.DOWNLOAD_INSTALL_RESULT".equals(paramIntent.getAction())) {
        return;
      }
      paramContext = paramIntent.getStringExtra("packageName");
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("packageName=");
      localStringBuilder.append(paramContext);
      j.a("MarketDownloadBroadcastReceiver", localStringBuilder.toString());
      k.e.execute(new a(paramIntent, paramContext));
    }
  }
  
  public class a
    implements Runnable
  {
    public a(Intent paramIntent, String paramString) {}
    
    public void run()
    {
      int i = paramIntent.getIntExtra("errorCode", -2147483648);
      int j = paramIntent.getIntExtra("progress", -2147483648);
      int k = paramIntent.getIntExtra("status", -2147483648);
      j.a("MarketDownloadBroadcastReceiver", new Object[] { "code=", Integer.valueOf(i), ",progress=", Integer.valueOf(j), ",status=", Integer.valueOf(k) });
      Object localObject1;
      String str;
      Object localObject2;
      if (i != -8)
      {
        if (i != -3)
        {
          if (i != -2)
          {
            if (i != 1)
            {
              if (i != 2)
              {
                if (i != 3)
                {
                  if (i != 4)
                  {
                    if (i == 5) {
                      if (k != -3)
                      {
                        if (k == -2)
                        {
                          localObject1 = e.this;
                          str = paramContext;
                          localObject1.getClass();
                          localObject2 = new StringBuilder();
                          ((StringBuilder)localObject2).append("onDownloadingProgress packageName=");
                          ((StringBuilder)localObject2).append(str);
                          ((StringBuilder)localObject2).append(",progress=");
                          ((StringBuilder)localObject2).append(j);
                          j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject2).toString());
                          localObject1 = ((e)localObject1).a.iterator();
                          while (((Iterator)localObject1).hasNext()) {
                            ((DownloadListener)((Iterator)localObject1).next()).onDownloadProgressUpdated(str, j);
                          }
                          localObject1 = (b)c.a().d.get(str);
                          if (localObject1 == null)
                          {
                            c.a().d.put(str, new b(3, j));
                          }
                          else
                          {
                            ((b)localObject1).c = 3;
                            ((b)localObject1).a = j;
                          }
                        }
                      }
                      else
                      {
                        localObject1 = e.this;
                        str = paramContext;
                        localObject1.getClass();
                        localObject2 = new StringBuilder();
                        ((StringBuilder)localObject2).append("onDownloadPause packageName=");
                        ((StringBuilder)localObject2).append(str);
                        j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject2).toString());
                        localObject1 = ((e)localObject1).a.iterator();
                        while (((Iterator)localObject1).hasNext()) {
                          ((DownloadListener)((Iterator)localObject1).next()).onDownloadPaused(str);
                        }
                        localObject1 = (b)c.a().d.get(str);
                        if (localObject1 == null)
                        {
                          c.a().d.put(str, new b(2, j));
                        }
                        else
                        {
                          ((b)localObject1).c = 2;
                          ((b)localObject1).a = j;
                        }
                      }
                    }
                  }
                  else
                  {
                    localObject1 = e.this;
                    str = paramContext;
                    localObject1.getClass();
                    localObject2 = new StringBuilder();
                    ((StringBuilder)localObject2).append("onInstallSuccess packageName=");
                    ((StringBuilder)localObject2).append(str);
                    j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject2).toString());
                    localObject1 = ((e)localObject1).a.iterator();
                    while (((Iterator)localObject1).hasNext()) {
                      ((DownloadListener)((Iterator)localObject1).next()).onInstallSuccess(str);
                    }
                    c.a().getClass();
                    c.e.remove(str);
                  }
                }
                else
                {
                  localObject2 = e.this;
                  str = paramContext;
                  localObject2.getClass();
                  localObject1 = new StringBuilder();
                  ((StringBuilder)localObject1).append("onInstallStart packageName=");
                  ((StringBuilder)localObject1).append(str);
                  j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
                  localObject1 = ((e)localObject2).a.iterator();
                  while (((Iterator)localObject1).hasNext()) {
                    ((DownloadListener)((Iterator)localObject1).next()).onInstallStart(str);
                  }
                }
              }
              else
              {
                localObject2 = e.this;
                str = paramContext;
                localObject2.getClass();
                localObject1 = new StringBuilder();
                ((StringBuilder)localObject1).append("onDownloadSuccess packageName=");
                ((StringBuilder)localObject1).append(str);
                j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
                localObject1 = ((e)localObject2).a.iterator();
                while (((Iterator)localObject1).hasNext()) {
                  ((DownloadListener)((Iterator)localObject1).next()).onDownloadFinished(str);
                }
              }
            }
            else
            {
              localObject2 = e.this;
              str = paramContext;
              localObject2.getClass();
              localObject1 = new StringBuilder();
              ((StringBuilder)localObject1).append("onDownloadStart packageName=");
              ((StringBuilder)localObject1).append(str);
              j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
              localObject1 = ((e)localObject2).a.iterator();
              while (((Iterator)localObject1).hasNext()) {
                ((DownloadListener)((Iterator)localObject1).next()).onDownloadStarted(str);
              }
              localObject1 = (b)c.a().d.get(str);
              if (localObject1 == null)
              {
                c.a().d.put(str, new b(1, 0));
              }
              else
              {
                ((b)localObject1).c = 1;
                ((b)localObject1).a = 0;
              }
            }
          }
          else
          {
            localObject2 = e.this;
            str = paramContext;
            localObject2.getClass();
            localObject1 = new StringBuilder();
            ((StringBuilder)localObject1).append("onDownloadFail packageName=");
            ((StringBuilder)localObject1).append(str);
            ((StringBuilder)localObject1).append(",statusCode=");
            ((StringBuilder)localObject1).append(k);
            j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
            localObject1 = ((e)localObject2).a.iterator();
            while (((Iterator)localObject1).hasNext()) {
              ((DownloadListener)((Iterator)localObject1).next()).onDownloadFailed(str, k);
            }
            c.a().d.remove(paramContext);
          }
        }
        else
        {
          localObject2 = e.this;
          str = paramContext;
          localObject2.getClass();
          localObject1 = new StringBuilder();
          ((StringBuilder)localObject1).append("onInstallFail packageName=");
          ((StringBuilder)localObject1).append(str);
          ((StringBuilder)localObject1).append(",statusCode=");
          ((StringBuilder)localObject1).append(k);
          j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
          localObject1 = ((e)localObject2).a.iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((DownloadListener)((Iterator)localObject1).next()).onInstallFailed(str, k);
          }
        }
      }
      else
      {
        localObject2 = e.this;
        str = paramContext;
        localObject2.getClass();
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("onCancelDownload packageName=");
        ((StringBuilder)localObject1).append(str);
        j.a("MarketDownloadBroadcastReceiver", ((StringBuilder)localObject1).toString());
        localObject1 = ((e)localObject2).a.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((DownloadListener)((Iterator)localObject1).next()).onCancelDownload(str);
        }
        localObject1 = (b)c.a().d.get(str);
        if (localObject1 == null)
        {
          c.a().d.put(str, new b(5, j));
        }
        else
        {
          ((b)localObject1).c = 5;
          ((b)localObject1).a = j;
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.zeus.landingpage.sdk.e
 * JD-Core Version:    0.7.0.1
 */