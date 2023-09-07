package com.miui.calendar.util;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutInfo.Builder;
import android.content.pm.ShortcutManager;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.AsyncTask;
import com.android.calendar.homepage.AllInOneActivity;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class o0
{
  private static void c(ShortcutManager paramShortcutManager, List<ShortcutInfo> paramList)
  {
    if ((paramShortcutManager != null) && (paramList != null) && (!paramList.isEmpty())) {
      try
      {
        paramShortcutManager.addDynamicShortcuts(paramList);
      }
      catch (Exception paramShortcutManager)
      {
        z.d("Cal:D:ShortcutUtils", "add dynamic shortcuts error", paramShortcutManager);
      }
    }
  }
  
  public static void d(Context paramContext)
  {
    ShortcutManager localShortcutManager = (ShortcutManager)paramContext.getSystemService(ShortcutManager.class);
    if (localShortcutManager == null) {
      return;
    }
    List localList = localShortcutManager.getDynamicShortcuts();
    if (!h(localList, "setup")) {
      c(localShortcutManager, Arrays.asList(new ShortcutInfo[] { g(paramContext) }));
    }
    if (!h(localList, "new_agenda")) {
      c(localShortcutManager, Arrays.asList(new ShortcutInfo[] { e(paramContext) }));
    }
    m(paramContext);
    k(paramContext);
  }
  
  public static ShortcutInfo e(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setComponent(new ComponentName(paramContext, AllInOneActivity.class));
    localIntent.setData(Uri.parse("content://calendar.miui.com/new_agenda"));
    localIntent.putExtra("from_shortcuts_new_agenda", true);
    return new ShortcutInfo.Builder(paramContext, "new_agenda").setShortLabel(paramContext.getResources().getString(2131887507)).setIcon(Icon.createWithResource(paramContext, 2131232428)).setIntent(localIntent).setRank(0).build();
  }
  
  public static ShortcutInfo f(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setComponent(new ComponentName(paramContext, AllInOneActivity.class));
    localIntent.setData(Uri.parse("content://calendar.miui.com/next_agenda"));
    localIntent.putExtra("from_shortcuts_next_agenda", true);
    return new ShortcutInfo.Builder(paramContext, "next_agenda").setShortLabel(paramContext.getResources().getString(2131887508)).setIcon(Icon.createWithResource(paramContext, 2131232429)).setIntent(localIntent).setRank(1).build();
  }
  
  public static ShortcutInfo g(Context paramContext)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setComponent(new ComponentName(paramContext, AllInOneActivity.class));
    localIntent.setData(Uri.parse("content://calendar.miui.com/setup"));
    localIntent.putExtra("from_shortcuts_setup", true);
    return new ShortcutInfo.Builder(paramContext, "setup").setShortLabel(paramContext.getResources().getString(2131887509)).setIcon(Icon.createWithResource(paramContext, 2131232430)).setIntent(localIntent).setRank(2).build();
  }
  
  private static boolean h(List<ShortcutInfo> paramList, String paramString)
  {
    if ((paramList != null) && (paramList.size() >= 1))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        paramList = (ShortcutInfo)localIterator.next();
        if ((paramList != null) && (paramList.getId().equals(paramString))) {
          return true;
        }
      }
    }
    return false;
  }
  
  public static void i(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    if ((paramIntent.hasExtra("from_shortcuts_new_agenda")) && (paramIntent.getBooleanExtra("from_shortcuts_new_agenda", false)))
    {
      g0.d("shortcut_new_agenda");
      paramIntent.removeExtra("from_shortcuts_new_agenda");
    }
    else if ((paramIntent.hasExtra("from_shortcuts_next_agenda")) && (paramIntent.getBooleanExtra("from_shortcuts_next_agenda", false)))
    {
      g0.d("shortcut_next_agenda");
      paramIntent.removeExtra("from_shortcuts_next_agenda");
    }
    else if ((paramIntent.hasExtra("from_shortcuts_setup")) && (paramIntent.getBooleanExtra("from_shortcuts_setup", false)))
    {
      g0.d("shortcut_settings");
      paramIntent.removeExtra("from_shortcuts_setup");
    }
  }
  
  public static void j(ShortcutManager paramShortcutManager)
  {
    if (paramShortcutManager != null) {
      try
      {
        ArrayList localArrayList = new java/util/ArrayList;
        localArrayList.<init>();
        localArrayList.add("next_agenda");
        paramShortcutManager.removeDynamicShortcuts(localArrayList);
      }
      catch (IllegalStateException paramShortcutManager)
      {
        z.d("Cal:D:ShortcutUtils", "removeDynamicShortcuts", paramShortcutManager);
      }
    }
  }
  
  @TargetApi(25)
  public static void k(Context paramContext)
  {
    new a(paramContext).executeOnExecutor(e.a, null);
  }
  
  public static void l(Context paramContext)
  {
    ShortcutManager localShortcutManager = (ShortcutManager)paramContext.getSystemService(ShortcutManager.class);
    if (localShortcutManager == null) {
      return;
    }
    Object localObject1 = localShortcutManager.getDynamicShortcuts();
    ArrayList localArrayList = new ArrayList();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (ShortcutInfo)((Iterator)localObject1).next();
      if (localObject2 != null)
      {
        localObject2 = ((ShortcutInfo)localObject2).getId();
        if ("new_agenda".equals(localObject2)) {
          localArrayList.add(e(paramContext));
        } else if ("next_agenda".equals(localObject2)) {
          localArrayList.add(f(paramContext));
        } else if ("setup".equals(localObject2)) {
          localArrayList.add(g(paramContext));
        }
      }
    }
    localShortcutManager.updateShortcuts(localArrayList);
  }
  
  public static void m(Context paramContext)
  {
    ShortcutManager localShortcutManager = (ShortcutManager)paramContext.getSystemService(ShortcutManager.class);
    if (localShortcutManager == null) {
      return;
    }
    Object localObject1 = localShortcutManager.getDynamicShortcuts();
    ArrayList localArrayList = new ArrayList();
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      Object localObject2 = (ShortcutInfo)((Iterator)localObject1).next();
      if (localObject2 != null)
      {
        localObject2 = ((ShortcutInfo)localObject2).getId();
        if ("new_agenda".equals(localObject2)) {
          localArrayList.add(e(paramContext));
        } else if ("setup".equals(localObject2)) {
          localArrayList.add(g(paramContext));
        }
      }
    }
    localShortcutManager.updateShortcuts(localArrayList);
  }
  
  private static class a
    extends AsyncTask<Void, Void, Void>
  {
    private WeakReference<Context> a;
    
    public a(Context paramContext)
    {
      this.a = new WeakReference(paramContext);
    }
    
    protected Void a(Void... paramVarArgs)
    {
      Context localContext = (Context)this.a.get();
      if (localContext == null) {
        return null;
      }
      ShortcutManager localShortcutManager = (ShortcutManager)localContext.getSystemService(ShortcutManager.class);
      if (localShortcutManager == null) {
        return null;
      }
      paramVarArgs = localShortcutManager.getDynamicShortcuts();
      long l = System.currentTimeMillis();
      List localList = s1.e.g(localContext.getApplicationContext(), l, 432000000L + l);
      if ((localList != null) && (localList.size() > 0))
      {
        if (!o0.a(paramVarArgs, "next_agenda")) {
          o0.b(localShortcutManager, Arrays.asList(new ShortcutInfo[] { o0.f(localContext) }));
        } else {
          localShortcutManager.updateShortcuts(Arrays.asList(new ShortcutInfo[] { o0.f(localContext) }));
        }
      }
      else {
        o0.j(localShortcutManager);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.util.o0
 * JD-Core Version:    0.7.0.1
 */