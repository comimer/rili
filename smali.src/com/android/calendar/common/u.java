package com.android.calendar.common;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView.c0;
import androidx.recyclerview.widget.RecyclerView.g;
import com.android.calendar.application.CalendarApplication;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class u
  extends RecyclerView.g<a>
{
  private PackageManager a;
  private Intent b;
  private d c;
  private Context d;
  private int e = 2131100983;
  private List<b> f = new ArrayList();
  private e g;
  private Comparator h = new t();
  private boolean i = false;
  
  public u(Context paramContext, Intent paramIntent, Resources.Theme paramTheme, boolean paramBoolean)
  {
    this.d = paramContext;
    this.a = paramContext.getPackageManager();
    this.b = paramIntent;
    this.g = new e();
    u();
    this.i = paramBoolean;
  }
  
  private void k(List<ResolveInfo> paramList1, List<ResolveInfo> paramList2)
  {
    int j = paramList2.size();
    int k = paramList1.size();
    for (int m = 0; m < j; m++)
    {
      ResolveInfo localResolveInfo = (ResolveInfo)paramList2.get(m);
      for (int n = 0; n < k; n++) {
        if (o(localResolveInfo, (ResolveInfo)paramList1.get(m)))
        {
          n = 1;
          break label81;
        }
      }
      n = 0;
      label81:
      if (n == 0) {
        paramList1.add(localResolveInfo);
      }
    }
  }
  
  private void l(List<ResolveInfo> paramList)
  {
    if (paramList == null) {
      return;
    }
    int k;
    for (int j = 0; j < paramList.size(); j = k + 1)
    {
      Object localObject = (ResolveInfo)paramList.get(j);
      if (!((ResolveInfo)localObject).activityInfo.exported) {
        paramList.remove(j);
      }
      for (;;)
      {
        k = j - 1;
        break;
        if (CalendarApplication.e().getPackageName().equals(((ResolveInfo)localObject).activityInfo.applicationInfo.packageName))
        {
          paramList.remove(j);
        }
        else
        {
          localObject = ((ResolveInfo)localObject).activityInfo.permission;
          k = j;
          if (TextUtils.isEmpty((CharSequence)localObject)) {
            break;
          }
          k = j;
          if (this.d.checkPermission((String)localObject, Process.myPid(), Process.myUid()) == 0) {
            break;
          }
          paramList.remove(j);
        }
      }
    }
  }
  
  private static ResolveInfo m()
  {
    ActivityInfo localActivityInfo = new ActivityInfo();
    localActivityInfo.name = "com.miui.gallery.ShareImgUI";
    localActivityInfo.packageName = "com.miui.gallery";
    ResolveInfo localResolveInfo = new ResolveInfo();
    localResolveInfo.activityInfo = localActivityInfo;
    return localResolveInfo;
  }
  
  private static boolean o(ResolveInfo paramResolveInfo1, ResolveInfo paramResolveInfo2)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (paramResolveInfo1 != null) {
      if (paramResolveInfo2 == null)
      {
        bool2 = bool1;
      }
      else
      {
        bool2 = bool1;
        if (TextUtils.equals(paramResolveInfo1.activityInfo.packageName, paramResolveInfo2.activityInfo.packageName))
        {
          bool2 = bool1;
          if (TextUtils.equals(paramResolveInfo1.activityInfo.name, paramResolveInfo2.activityInfo.name)) {
            bool2 = true;
          }
        }
      }
    }
    return bool2;
  }
  
  private static Drawable q(Context paramContext, b paramb)
  {
    Object localObject1 = null;
    Object localObject2;
    try
    {
      ResolveInfo localResolveInfo = paramb.b();
      localObject2 = localObject1;
      if (paramContext != null)
      {
        if (paramb.a() != 0) {
          paramContext = localResolveInfo.loadIcon(paramContext.getPackageManager());
        } else {
          paramContext = paramContext.getDrawable(2131231345);
        }
        localObject2 = paramContext;
      }
    }
    catch (Exception paramContext)
    {
      Log.e("ResolverAdapter", paramContext.toString());
      localObject2 = localObject1;
    }
    return localObject2;
  }
  
  private static CharSequence r(Context paramContext, b paramb)
  {
    if (paramb.a() != 0) {
      paramb = paramb.b();
    }
    try
    {
      Resources localResources = paramContext.getResources();
      Object localObject = new java/lang/StringBuilder;
      ((StringBuilder)localObject).<init>();
      ((StringBuilder)localObject).append(paramb.activityInfo.packageName);
      ((StringBuilder)localObject).append("_");
      ((StringBuilder)localObject).append(paramb.activityInfo.name);
      int j = localResources.getIdentifier(((StringBuilder)localObject).toString(), "string", paramContext.getPackageName());
      if (j != 0)
      {
        localObject = localResources.getString(j);
        return localObject;
      }
    }
    catch (Exception localException)
    {
      label86:
      break label86;
    }
    return paramb.loadLabel(paramContext.getPackageManager());
    return paramContext.getResources().getString(2131887403);
  }
  
  private void u()
  {
    if (this.b == null) {
      return;
    }
    this.f.clear();
    Object localObject1 = this.a.queryIntentActivities(this.b, 65536);
    l((List)localObject1);
    LinkedList localLinkedList = new LinkedList();
    if ("image/*".equals(this.b.getType())) {
      localLinkedList.add(m());
    }
    k(localLinkedList, (List)localObject1);
    int j = localLinkedList.size();
    if (j <= 0) {
      return;
    }
    Object localObject2 = (ResolveInfo)localLinkedList.get(0);
    int k = 1;
    int m;
    while (k < j)
    {
      localObject1 = (ResolveInfo)localLinkedList.get(k);
      m = j;
      int n;
      if (((ResolveInfo)localObject2).priority == ((ResolveInfo)localObject1).priority)
      {
        n = j;
        if (((ResolveInfo)localObject2).isDefault == ((ResolveInfo)localObject1).isDefault) {}
      }
      else
      {
        for (m = j;; m--)
        {
          n = m;
          if (k >= m) {
            break;
          }
          localLinkedList.remove(k);
        }
      }
      k++;
      j = n;
    }
    for (k = 0; k < j; k++)
    {
      localObject2 = ((ResolveInfo)localLinkedList.get(k)).activityInfo;
      localObject1 = ((ActivityInfo)localObject2).name;
      localObject2 = ((ActivityInfo)localObject2).packageName;
      m = 2147483647;
      if (TextUtils.equals((CharSequence)localObject1, "com.miui.gallery.ShareImgUI"))
      {
        localObject2 = new b(this.b, null, 0);
      }
      else
      {
        if (TextUtils.equals((CharSequence)localObject1, "com.tencent.mm.ui.tools.ShareImgUI")) {
          m = 1;
        } else if (TextUtils.equals((CharSequence)localObject1, "com.tencent.mm.ui.tools.ShareToTimeLineUI")) {
          m = 2;
        } else if (TextUtils.equals((CharSequence)localObject1, "com.tencent.mm.ui.tools.AddFavoriteUI")) {
          m = 3;
        } else if ((TextUtils.equals((CharSequence)localObject1, "com.tencent.mobileqq.activity.JumpActivity")) && (TextUtils.equals((CharSequence)localObject2, "com.tencent.mobileqq"))) {
          m = 4;
        } else if (TextUtils.equals((CharSequence)localObject2, "com.qzone")) {
          m = 5;
        } else if (TextUtils.equals((CharSequence)localObject1, "com.sina.weibo.composerinde.ComposerDispatchActivity")) {
          m = 6;
        }
        localObject2 = new b(this.b, (ResolveInfo)localLinkedList.get(k), m);
      }
      String str = r(this.d, (b)localObject2).toString();
      if (str.equals(this.d.getString(2131887469)))
      {
        localObject1 = this.d.getString(2131887464);
      }
      else if (str.equals(this.d.getString(2131887468)))
      {
        localObject1 = this.d.getString(2131887467);
      }
      else if (str.equals(this.d.getString(2131887466)))
      {
        localObject1 = this.d.getString(2131887465);
      }
      else
      {
        localObject1 = str;
        if (str.equals(this.d.getString(2131887463))) {
          localObject1 = this.d.getString(2131887462);
        }
      }
      ((b)localObject2).e((String)localObject1);
      this.f.add(localObject2);
    }
    y(this.f);
  }
  
  private void y(List<b> paramList)
  {
    Collections.sort(paramList, this.h);
  }
  
  public int getItemCount()
  {
    List localList = this.f;
    int j;
    if (localList != null) {
      j = localList.size();
    } else {
      j = 0;
    }
    return j;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt == 0) {
      return 0;
    }
    return 1;
  }
  
  public void s(a parama, int paramInt)
  {
    Object localObject = this.f;
    if ((localObject != null) && (((List)localObject).size() != 0) && (paramInt < this.f.size()))
    {
      parama.b.setTextColor(this.d.getColor(this.e));
      localObject = (b)this.f.get(paramInt);
      if (parama.a((b)localObject))
      {
        parama.c = ((b)localObject);
        this.g.c(this.d, parama.a, parama.b, (b)localObject);
      }
      else
      {
        parama.c = ((b)localObject);
      }
    }
  }
  
  public a t(ViewGroup paramViewGroup, int paramInt)
  {
    boolean bool;
    if (paramInt == 0) {
      bool = true;
    } else {
      bool = false;
    }
    return new a(paramViewGroup, bool);
  }
  
  public boolean v(Intent paramIntent)
  {
    if ((paramIntent != null) && (!paramIntent.filterEquals(this.b)))
    {
      this.b = paramIntent;
      u();
      notifyDataSetChanged();
      return true;
    }
    return false;
  }
  
  public void w(d paramd)
  {
    this.c = paramd;
  }
  
  public void x(boolean paramBoolean)
  {
    int j;
    if (paramBoolean) {
      j = 2131100908;
    } else {
      j = 2131100983;
    }
    this.e = j;
  }
  
  public class a
    extends RecyclerView.c0
    implements View.OnClickListener
  {
    public ImageView a;
    public TextView b;
    public u.b c;
    
    public a(ViewGroup paramViewGroup, boolean paramBoolean)
    {
      super();
      if (paramBoolean)
      {
        int i = this.itemView.getPaddingStart();
        int j = this.itemView.getPaddingEnd();
        int k = this.itemView.getPaddingTop();
        int m = this.itemView.getPaddingBottom();
        int n = u.h(u.this).getResources().getDimensionPixelSize(2131167304);
        this.itemView.setPaddingRelative(i + n, k, j, m);
      }
      this.a = ((ImageView)this.itemView.findViewById(2131362162));
      this.b = ((TextView)this.itemView.findViewById(2131362164));
      this.a.setOnClickListener(this);
    }
    
    public boolean a(u.b paramb)
    {
      boolean bool;
      if ((paramb.equals(this.c)) && (this.a.getDrawable() != null)) {
        bool = false;
      } else {
        bool = true;
      }
      return bool;
    }
    
    public void onClick(View paramView)
    {
      if (u.i(u.this) != null)
      {
        paramView = this.c;
        if (paramView != null) {
          if ((paramView.a() == 0) && ((u.i(u.this) instanceof u.c)))
          {
            ((u.c)u.i(u.this)).b();
          }
          else
          {
            paramView = new Intent(this.c.c());
            paramView.putExtra("calendar_channel", this.c.d());
            u.i(u.this).a(paramView);
          }
        }
      }
    }
  }
  
  private class b
  {
    private ResolveInfo a;
    private Intent b;
    private String c = "";
    private int d;
    
    public b(Intent paramIntent, ResolveInfo paramResolveInfo, int paramInt)
    {
      this.a = paramResolveInfo;
      this.d = paramInt;
      this$1 = new Intent(paramIntent);
      this.b = u.this;
      paramIntent = this.a;
      if (paramIntent != null)
      {
        paramIntent = paramIntent.activityInfo;
        u.this.setComponent(new ComponentName(paramIntent.applicationInfo.packageName, paramIntent.name));
      }
    }
    
    public int a()
    {
      return this.d;
    }
    
    public ResolveInfo b()
    {
      return this.a;
    }
    
    public Intent c()
    {
      return this.b;
    }
    
    public String d()
    {
      return this.c;
    }
    
    public void e(String paramString)
    {
      this.c = paramString;
    }
    
    public boolean equals(Object paramObject)
    {
      if ((paramObject != null) && ((paramObject instanceof b))) {
        return u.j(b(), ((b)paramObject).b());
      }
      return false;
    }
    
    public int hashCode()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.a.activityInfo.packageName);
      localStringBuilder.append(this.a.activityInfo.name);
      return localStringBuilder.toString().hashCode();
    }
  }
  
  public static abstract interface c
    extends u.d
  {
    public abstract void b();
  }
  
  public static abstract interface d
  {
    public abstract void a(Intent paramIntent);
  }
  
  private static class e
  {
    private Map<Integer, String> a = Collections.synchronizedMap(new HashMap());
    private Map<String, b> b = new HashMap();
    private ThreadPoolExecutor c = new ThreadPoolExecutor(1, 2, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new n("thread-pool", 10));
    
    private static String b(ResolveInfo paramResolveInfo)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (paramResolveInfo != null)
      {
        localStringBuilder.append(paramResolveInfo.activityInfo.packageName);
        localStringBuilder.append("#");
        localStringBuilder.append(paramResolveInfo.activityInfo.name);
      }
      return localStringBuilder.toString();
    }
    
    private boolean d(b paramb)
    {
      if (paramb != null)
      {
        d locald = paramb.c;
        if (locald != null)
        {
          this.b.put(b(locald.c.b()), paramb);
          return TextUtils.equals(b(paramb.c.c.b()), (CharSequence)this.a.get(Integer.valueOf(paramb.c.c())));
        }
      }
      return false;
    }
    
    private void e(b paramb)
    {
      if (d(paramb))
      {
        Object localObject = paramb.c.a();
        if (localObject != null) {
          ((ImageView)localObject).setImageDrawable(paramb.a);
        }
        localObject = paramb.c.b();
        if (localObject != null) {
          ((TextView)localObject).setText(paramb.b);
        }
        this.a.remove(b(paramb.c.c.b()));
      }
    }
    
    private void f(Context paramContext, d paramd)
    {
      new c(paramContext).executeOnExecutor(this.c, new d[] { paramd });
    }
    
    public void c(Context paramContext, ImageView paramImageView, TextView paramTextView, u.b paramb)
    {
      if (paramb == null) {
        return;
      }
      String str = b(paramb.b());
      paramImageView = new d(paramImageView, paramTextView, paramb);
      this.a.put(Integer.valueOf(paramImageView.c()), str);
      paramTextView = (b)this.b.get(str);
      if (paramTextView != null)
      {
        paramTextView.a(paramImageView);
        e(paramTextView);
        Log.d("ResolverAdapter", "load from cache");
      }
      else
      {
        Log.d("ResolverAdapter", "load from file");
        f(paramContext, paramImageView);
      }
    }
    
    private class a
    {
      final Drawable a;
      
      public a(Drawable paramDrawable)
      {
        this.a = paramDrawable;
      }
    }
    
    private static class b
    {
      final Drawable a;
      final CharSequence b;
      u.e.d c;
      
      public b(Drawable paramDrawable, CharSequence paramCharSequence)
      {
        this.a = paramDrawable;
        this.b = paramCharSequence;
      }
      
      b a(u.e.d paramd)
      {
        this.c = paramd;
        return this;
      }
    }
    
    private class c
      extends AsyncTask<u.e.d, Void, u.e.b>
    {
      private WeakReference<Context> a;
      
      c(Context paramContext)
      {
        this.a = new WeakReference(paramContext);
      }
      
      private u.e.a b(u.e.d paramd)
      {
        Object localObject = null;
        try
        {
          u.b localb = paramd.c;
          localb.b();
          Context localContext = (Context)this.a.get();
          paramd = localObject;
          if (localContext != null) {
            paramd = u.g(localContext, localb);
          }
        }
        catch (Exception paramd)
        {
          Log.e("ResolverAdapter", paramd.toString());
          paramd = localObject;
        }
        return new u.e.a(u.e.this, paramd);
      }
      
      protected u.e.b a(u.e.d... paramVarArgs)
      {
        u.e.d locald = paramVarArgs[0];
        if (locald != null)
        {
          u.e.a locala = b(locald);
          paramVarArgs = locald.c.d();
          paramVarArgs = new u.e.b(locala.a, paramVarArgs).a(locald);
        }
        else
        {
          paramVarArgs = null;
        }
        return paramVarArgs;
      }
      
      protected void c(u.e.b paramb)
      {
        u.e.a(u.e.this, paramb);
      }
    }
    
    private static class d
    {
      final WeakReference<ImageView> a;
      final WeakReference<TextView> b;
      final u.b c;
      
      public d(ImageView paramImageView, TextView paramTextView, u.b paramb)
      {
        this.a = new WeakReference(paramImageView);
        this.b = new WeakReference(paramTextView);
        this.c = paramb;
      }
      
      public ImageView a()
      {
        Object localObject = this.a;
        if (localObject != null) {
          localObject = (ImageView)((Reference)localObject).get();
        } else {
          localObject = null;
        }
        return localObject;
      }
      
      public TextView b()
      {
        Object localObject = this.b;
        if (localObject != null) {
          localObject = (TextView)((Reference)localObject).get();
        } else {
          localObject = null;
        }
        return localObject;
      }
      
      public int c()
      {
        ImageView localImageView = a();
        int i;
        if (localImageView != null) {
          i = localImageView.hashCode();
        } else {
          i = 0;
        }
        return i;
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.common.u
 * JD-Core Version:    0.7.0.1
 */