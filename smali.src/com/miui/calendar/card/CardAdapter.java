package com.miui.calendar.card;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.miui.calendar.util.e0;
import com.miui.calendar.util.g0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import s3.a.a;

public class CardAdapter
  extends BaseAdapter
{
  private Context a;
  private ListView b;
  private b c;
  private List<s3.a> d;
  private Map<String, View> e = new HashMap();
  private boolean f;
  private boolean g;
  private DisplayMode h;
  
  public CardAdapter(Context paramContext, ListView paramListView, DisplayMode paramDisplayMode)
  {
    this(paramContext, paramListView, false, paramDisplayMode);
  }
  
  private CardAdapter(Context paramContext, ListView paramListView, boolean paramBoolean, DisplayMode paramDisplayMode)
  {
    this.a = paramContext;
    this.b = paramListView;
    this.g = paramBoolean;
    this.h = paramDisplayMode;
  }
  
  private String c(s3.a parama)
  {
    return String.format(Locale.ENGLISH, "%s_%d", new Object[] { parama.f, Integer.valueOf(parama.c) });
  }
  
  private View e(int paramInt)
  {
    View localView = LayoutInflater.from(this.a).inflate(paramInt, null);
    ViewGroup localViewGroup = (ViewGroup)LayoutInflater.from(this.a).inflate(2131558498, null);
    localViewGroup.addView(localView, 1);
    return localViewGroup;
  }
  
  public void b(b paramb)
  {
    this.c = paramb;
  }
  
  public DisplayMode d()
  {
    return this.h;
  }
  
  public int getCount()
  {
    List localList = this.d;
    if (localList == null) {
      return 0;
    }
    return localList.size();
  }
  
  public Object getItem(int paramInt)
  {
    return this.d.get(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    if (paramInt >= this.d.size()) {
      return 80;
    }
    return ((s3.a)this.d.get(paramInt)).c;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt >= this.d.size())
    {
      paramView = new StringBuilder();
      paramView.append("getView():position is larger than mCardList size ");
      paramView.append(paramInt);
      paramView.append(" ");
      paramView.append(this.d.size());
      z.m("Cal:D:CardAdapter", paramView.toString());
      return new FrameLayout(this.a);
    }
    s3.a locala = (s3.a)this.d.get(paramInt);
    paramViewGroup = c(locala);
    if (this.e.containsKey(paramViewGroup))
    {
      paramViewGroup = (View)this.e.get(paramViewGroup);
      paramView = paramViewGroup;
      if (paramViewGroup != null)
      {
        paramViewGroup.setVisibility(0);
        paramView = paramViewGroup;
      }
    }
    else
    {
      paramView = new StringBuilder();
      paramView.append("getView() miss match cache, key=");
      paramView.append(paramViewGroup);
      z.a("Cal:D:CardAdapter", paramView.toString());
      paramView = e(locala.i());
      this.e.put(paramViewGroup, paramView);
    }
    if (paramView.getTag() == null)
    {
      paramViewGroup = locala.h(paramView);
      paramView.setTag(paramViewGroup);
    }
    else
    {
      paramViewGroup = (a.a)paramView.getTag();
    }
    if (((paramInt == 0) && (!this.g)) || (locala.h != null)) {
      paramViewGroup.a.setVisibility(8);
    } else {
      paramViewGroup.a.setVisibility(0);
    }
    if ((paramViewGroup.b != null) && (paramViewGroup.c != null)) {
      if ((!TextUtils.isEmpty(locala.j)) && (locala.h == null))
      {
        paramViewGroup.b.setVisibility(0);
        paramViewGroup.c.setText(locala.j);
      }
      else
      {
        paramViewGroup.b.setVisibility(8);
      }
    }
    paramView.post(new q3.a(locala, paramViewGroup, paramInt));
    return paramView;
  }
  
  public int getViewTypeCount()
  {
    return 81;
  }
  
  public void notifyDataSetChanged()
  {
    List localList = this.c.e();
    if ((localList != null) && (localList.size() > this.e.size()))
    {
      z.a("Cal:D:CardAdapter", "start preload");
      for (int i = 0; i < localList.size(); i++)
      {
        Object localObject = (s3.a)localList.get(i);
        String str = c((s3.a)localObject);
        if (!this.e.containsKey(str))
        {
          this.e.put(str, e(((s3.a)localObject).i()));
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append("preload xml of card:");
          ((StringBuilder)localObject).append(str);
          z.a("Cal:D:CardAdapter", ((StringBuilder)localObject).toString());
        }
      }
    }
    if ((!this.f) && (e0.v(Calendar.getInstance(), this.c.c())))
    {
      g0.h("native_card_count", localList.size());
      this.f = true;
    }
    this.d = localList;
    super.notifyDataSetChanged();
  }
  
  public static enum DisplayMode
  {
    static
    {
      DisplayMode localDisplayMode1 = new DisplayMode("DEFAULT", 0);
      DEFAULT = localDisplayMode1;
      DisplayMode localDisplayMode2 = new DisplayMode("PREVIEW_IN_DETAIL", 1);
      PREVIEW_IN_DETAIL = localDisplayMode2;
      $VALUES = new DisplayMode[] { localDisplayMode1, localDisplayMode2 };
    }
    
    private DisplayMode() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.card.CardAdapter
 * JD-Core Version:    0.7.0.1
 */