package com.android.calendar.alerts;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.alerts.entities.BaseAlert;
import com.miui.calendar.util.r0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import n1.d;

public class b
  extends androidx.viewpager.widget.b
{
  private Context c;
  private View[] d;
  private b e;
  
  public b(Context paramContext)
  {
    this.c = paramContext;
  }
  
  private void u(View paramView, final BaseAlert paramBaseAlert)
  {
    paramView.setOnClickListener(new a(paramBaseAlert));
    c localc = new c(paramView);
    paramView = this.c.getResources();
    int i = d.a(paramBaseAlert.getEventType());
    if (i == -1)
    {
      localc.a.setVisibility(0);
      localc.a.setImageBitmap(x0.n(paramView, paramBaseAlert.getColor(), paramView.getDimensionPixelOffset(2131165463)));
      localc.b.setVisibility(8);
    }
    else
    {
      localc.a.setVisibility(8);
      localc.b.setImageResource(i);
      localc.b.setVisibility(0);
    }
    if (TextUtils.isEmpty(paramBaseAlert.getEventTitle())) {
      paramBaseAlert.setEventTitle(paramView.getString(2131887044));
    }
    localc.c.setText(paramBaseAlert.getEventTitle());
    paramView = Utils.U(this.c);
    if (paramBaseAlert.isAllDay())
    {
      i = 8210;
      paramView = "UTC";
    }
    else
    {
      i = 17;
    }
    int j = i;
    if (DateFormat.is24HourFormat(this.c)) {
      j = i | 0x80;
    }
    Object localObject = new r0(paramView);
    ((r0)localObject).D(paramBaseAlert.getBeginAt());
    boolean bool;
    if (((r0)localObject).k() != 0) {
      bool = true;
    } else {
      bool = false;
    }
    localObject = new StringBuilder(Utils.p(this.c, paramBaseAlert.getBeginAt(), paramBaseAlert.getEndAt(), j));
    if ((!paramBaseAlert.isAllDay()) && (!TextUtils.equals(paramView, r0.j())))
    {
      ((StringBuilder)localObject).append(" ");
      ((StringBuilder)localObject).append(TimeZone.getTimeZone(paramView).getDisplayName(bool, 0, Locale.getDefault()));
    }
    paramView = ((StringBuilder)localObject).toString();
    localc.d.setText(paramView);
    if (TextUtils.isEmpty(paramBaseAlert.getEventLocation()))
    {
      localc.e.setVisibility(8);
      localc.f.setVisibility(8);
    }
    else
    {
      localc.e.setVisibility(0);
      localc.f.setText(paramBaseAlert.getEventLocation());
      localc.f.setVisibility(0);
    }
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int d()
  {
    Object localObject = new StringBuilder();
    ((StringBuilder)localObject).append("getCount(): ");
    View[] arrayOfView = this.d;
    int i = 0;
    int j;
    if (arrayOfView == null) {
      j = 0;
    } else {
      j = arrayOfView.length;
    }
    ((StringBuilder)localObject).append(j);
    z.a("Cal:D:AlertListAdapter", ((StringBuilder)localObject).toString());
    localObject = this.d;
    if (localObject == null) {
      j = i;
    } else {
      j = localObject.length;
    }
    return j;
  }
  
  public int e(Object paramObject)
  {
    return -2;
  }
  
  public Object h(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = this.d[paramInt];
    paramViewGroup.addView(localView);
    return localView;
  }
  
  public boolean i(View paramView, Object paramObject)
  {
    boolean bool;
    if (paramView == paramObject) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public void v(List<BaseAlert> paramList)
  {
    this.d = new View[paramList.size()];
    for (int i = 0;; i++)
    {
      View[] arrayOfView = this.d;
      if (i >= arrayOfView.length) {
        break;
      }
      arrayOfView[i] = LayoutInflater.from(this.c).inflate(2131558470, null);
      u(this.d[i], (BaseAlert)paramList.get(i));
    }
    j();
  }
  
  public void w(b paramb)
  {
    this.e = paramb;
  }
  
  class a
    implements View.OnClickListener
  {
    a(BaseAlert paramBaseAlert) {}
    
    public void onClick(View paramView)
    {
      if (b.t(b.this) != null) {
        b.t(b.this).a(paramBaseAlert);
      }
    }
  }
  
  static abstract interface b
  {
    public abstract void a(BaseAlert paramBaseAlert);
  }
  
  static class c
  {
    ImageView a;
    ImageView b;
    TextView c;
    TextView d;
    TextView e;
    TextView f;
    
    c(View paramView)
    {
      this.a = ((ImageView)paramView.findViewById(2131362193));
      this.b = ((ImageView)paramView.findViewById(2131362713));
      this.c = ((TextView)paramView.findViewById(2131362430));
      this.d = ((TextView)paramView.findViewById(2131363558));
      this.e = ((TextView)paramView.findViewById(2131362368));
      this.f = ((TextView)paramView.findViewById(2131363568));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.alerts.b
 * JD-Core Version:    0.7.0.1
 */