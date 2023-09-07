package com.miui.calendar.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.miui.calendar.util.x0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/c;", "Landroid/widget/BaseAdapter;", "", "position", "Landroid/view/View;", "convertView", "Landroid/view/ViewGroup;", "parent", "b", "getCount", "Lcom/miui/calendar/view/c$b;", "a", "", "getItemId", "getViewTypeCount", "getItemViewType", "getView", "Landroid/content/Context;", "Landroid/content/Context;", "mContext", "Landroid/view/LayoutInflater;", "Landroid/view/LayoutInflater;", "mInflater", "", "c", "Ljava/util/List;", "viewEntries", "<init>", "(Landroid/content/Context;Ljava/util/List;)V", "d", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class c
  extends BaseAdapter
{
  public static final a d = new a(null);
  private Context a;
  private final LayoutInflater b;
  private List<b> c;
  
  public c(Context paramContext, List<b> paramList)
  {
    this.a = paramContext;
    paramContext = LayoutInflater.from(paramContext);
    r.e(paramContext, "from(mContext)");
    this.b = paramContext;
    this.c = paramList;
  }
  
  private final View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null) {
      localView = this.b.inflate(2131558435, paramViewGroup, false);
    }
    if (localView != null) {
      paramView = (TextView)localView.findViewById(2131363373);
    } else {
      paramView = null;
    }
    r.d(paramView, "null cannot be cast to non-null type android.widget.TextView");
    paramViewGroup = a(paramInt);
    paramInt = paramViewGroup.b();
    Context localContext;
    if (paramInt != 0)
    {
      if (paramInt != 1)
      {
        localContext = this.a;
        r.c(localContext);
        paramView.setTextColor(localContext.getColor(2131099921));
      }
      else
      {
        localContext = this.a;
        r.c(localContext);
        paramView.setTextColor(localContext.getColor(2131099835));
      }
    }
    else
    {
      localContext = this.a;
      r.c(localContext);
      paramView.setTextColor(localContext.getColor(2131099921));
    }
    paramView.setText(paramViewGroup.a());
    x0.f(paramView, String.valueOf(paramViewGroup.a()));
    return localView;
  }
  
  public b a(int paramInt)
  {
    return (b)this.c.get(paramInt);
  }
  
  public int getCount()
  {
    return this.c.size();
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    return ((b)this.c.get(paramInt)).b();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    r.f(paramViewGroup, "parent");
    return b(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/c$a;", "", "", "VIEW_TYPE_BLACK", "I", "VIEW_TYPE_COUNT", "VIEW_TYPE_RED", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/c$b;", "", "Lkotlin/u;", "c", "", "a", "I", "b", "()I", "viewType", "", "Ljava/lang/CharSequence;", "()Ljava/lang/CharSequence;", "e", "(Ljava/lang/CharSequence;)V", "title", "Lcom/miui/calendar/view/c$b$a;", "Lcom/miui/calendar/view/c$b$a;", "getMClickListener", "()Lcom/miui/calendar/view/c$b$a;", "d", "(Lcom/miui/calendar/view/c$b$a;)V", "mClickListener", "<init>", "(I)V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
  {
    private final int a;
    private CharSequence b;
    private a c;
    
    public b(int paramInt)
    {
      this.a = paramInt;
    }
    
    public final CharSequence a()
    {
      return this.b;
    }
    
    public final int b()
    {
      return this.a;
    }
    
    public final void c()
    {
      a locala = this.c;
      if (locala != null)
      {
        r.c(locala);
        locala.a();
      }
    }
    
    public final void d(a parama)
    {
      this.c = parama;
    }
    
    public final void e(CharSequence paramCharSequence)
    {
      this.b = paramCharSequence;
    }
    
    @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/c$b$a;", "", "Lkotlin/u;", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
    public static abstract interface a
    {
      public abstract void a();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.c
 * JD-Core Version:    0.7.0.1
 */