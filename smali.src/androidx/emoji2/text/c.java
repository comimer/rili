package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build.VERSION;
import android.util.Log;
import androidx.core.provider.e;
import androidx.core.util.h;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c
{
  public static i a(Context paramContext)
  {
    return (i)new a(null).c(paramContext);
  }
  
  public static class a
  {
    private final c.b a;
    
    public a(c.b paramb)
    {
      if (paramb == null) {
        paramb = e();
      }
      this.a = paramb;
    }
    
    private d.c a(Context paramContext, e parame)
    {
      if (parame == null) {
        return null;
      }
      return new i(paramContext, parame);
    }
    
    private List<List<byte[]>> b(Signature[] paramArrayOfSignature)
    {
      ArrayList localArrayList = new ArrayList();
      int i = paramArrayOfSignature.length;
      for (int j = 0; j < i; j++) {
        localArrayList.add(paramArrayOfSignature[j].toByteArray());
      }
      return Collections.singletonList(localArrayList);
    }
    
    private e d(ProviderInfo paramProviderInfo, PackageManager paramPackageManager)
      throws PackageManager.NameNotFoundException
    {
      String str = paramProviderInfo.authority;
      paramProviderInfo = paramProviderInfo.packageName;
      return new e(str, paramProviderInfo, "emojicompat-emoji-font", b(this.a.b(paramPackageManager, paramProviderInfo)));
    }
    
    private static c.b e()
    {
      if (Build.VERSION.SDK_INT >= 28) {
        return new c.d();
      }
      return new c.c();
    }
    
    private boolean f(ProviderInfo paramProviderInfo)
    {
      boolean bool = true;
      if (paramProviderInfo != null)
      {
        paramProviderInfo = paramProviderInfo.applicationInfo;
        if ((paramProviderInfo != null) && ((paramProviderInfo.flags & 0x1) == 1)) {}
      }
      else
      {
        bool = false;
      }
      return bool;
    }
    
    private ProviderInfo g(PackageManager paramPackageManager)
    {
      paramPackageManager = this.a.c(paramPackageManager, new Intent("androidx.content.action.LOAD_EMOJI_FONT"), 0).iterator();
      while (paramPackageManager.hasNext())
      {
        Object localObject = (ResolveInfo)paramPackageManager.next();
        localObject = this.a.a((ResolveInfo)localObject);
        if (f((ProviderInfo)localObject)) {
          return localObject;
        }
      }
      return null;
    }
    
    public d.c c(Context paramContext)
    {
      return a(paramContext, h(paramContext));
    }
    
    e h(Context paramContext)
    {
      paramContext = paramContext.getPackageManager();
      h.h(paramContext, "Package manager required to locate emoji font provider");
      ProviderInfo localProviderInfo = g(paramContext);
      if (localProviderInfo == null) {
        return null;
      }
      try
      {
        paramContext = d(localProviderInfo, paramContext);
        return paramContext;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Log.wtf("emoji2.text.DefaultEmojiConfig", paramContext);
      }
      return null;
    }
  }
  
  public static class b
  {
    public ProviderInfo a(ResolveInfo paramResolveInfo)
    {
      throw null;
    }
    
    public Signature[] b(PackageManager paramPackageManager, String paramString)
      throws PackageManager.NameNotFoundException
    {
      return paramPackageManager.getPackageInfo(paramString, 64).signatures;
    }
    
    public List<ResolveInfo> c(PackageManager paramPackageManager, Intent paramIntent, int paramInt)
    {
      throw null;
    }
  }
  
  public static class c
    extends c.b
  {
    public ProviderInfo a(ResolveInfo paramResolveInfo)
    {
      return paramResolveInfo.providerInfo;
    }
    
    public List<ResolveInfo> c(PackageManager paramPackageManager, Intent paramIntent, int paramInt)
    {
      return paramPackageManager.queryIntentContentProviders(paramIntent, paramInt);
    }
  }
  
  public static class d
    extends c.c
  {
    public Signature[] b(PackageManager paramPackageManager, String paramString)
      throws PackageManager.NameNotFoundException
    {
      return paramPackageManager.getPackageInfo(paramString, 64).signatures;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.emoji2.text.c
 * JD-Core Version:    0.7.0.1
 */