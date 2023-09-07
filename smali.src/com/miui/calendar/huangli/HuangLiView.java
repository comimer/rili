package com.miui.calendar.huangli;

import a4.d;
import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.calendar.application.CalendarApplication;
import com.miui.calendar.util.HuangliPatch;
import com.miui.calendar.util.HuangliPatchItem;
import com.miui.calendar.util.a0.a;
import com.miui.calendar.util.j0;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import com.miui.calendar.view.VerticalTextView;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

public class HuangLiView
  extends FrameLayout
{
  private Context a;
  private TextView b;
  private TextView c;
  private TextView d;
  private TextView e;
  private VerticalTextView f;
  private VerticalTextView g;
  private TextView h;
  private TextView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView[] p;
  
  public HuangLiView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public HuangLiView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public HuangLiView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.a = paramContext;
    b();
  }
  
  private void b()
  {
    LayoutInflater.from(this.a).inflate(2131558618, this);
    this.b = ((TextView)findViewById(2131362247));
    this.c = ((TextView)findViewById(2131362731));
    this.d = ((TextView)findViewById(2131363185));
    this.e = ((TextView)findViewById(2131362005));
    Object localObject = (VerticalTextView)findViewById(2131363605);
    this.f = ((VerticalTextView)localObject);
    ((VerticalTextView)localObject).setTextColor(getResources().getColor(2131099999));
    this.f.setTextSize(getResources().getDimensionPixelSize(2131166265));
    localObject = (VerticalTextView)findViewById(2131362651);
    this.g = ((VerticalTextView)localObject);
    ((VerticalTextView)localObject).setTextColor(getResources().getColor(2131100014));
    this.g.setTextSize(getResources().getDimensionPixelSize(2131166265));
    this.h = ((TextView)findViewById(2131363324));
    this.i = ((TextView)findViewById(2131363595));
    this.j = ((TextView)findViewById(2131362954));
    this.k = ((TextView)findViewById(2131362955));
    this.l = ((TextView)findViewById(2131362956));
    this.m = ((TextView)findViewById(2131362957));
    this.n = ((TextView)findViewById(2131363592));
    this.o = ((TextView)findViewById(2131362161));
    localObject = new TextView[12];
    this.p = ((TextView[])localObject);
    localObject[0] = ((TextView)findViewById(2131362652));
    this.p[1] = ((TextView)findViewById(2131362656));
    this.p[2] = ((TextView)findViewById(2131362657));
    this.p[3] = ((TextView)findViewById(2131362658));
    this.p[4] = ((TextView)findViewById(2131362659));
    this.p[5] = ((TextView)findViewById(2131362660));
    this.p[6] = ((TextView)findViewById(2131362661));
    this.p[7] = ((TextView)findViewById(2131362662));
    this.p[8] = ((TextView)findViewById(2131362663));
    this.p[9] = ((TextView)findViewById(2131362653));
    this.p[10] = ((TextView)findViewById(2131362654));
    this.p[11] = ((TextView)findViewById(2131362655));
  }
  
  private void c(long paramLong)
  {
    Object localObject1 = Calendar.getInstance();
    ((Calendar)localObject1).setTimeInMillis(paramLong);
    this.b.setText(String.valueOf(((Calendar)localObject1).get(5)));
    this.c.setText(d.g((Calendar)localObject1));
    x0.f(this.d, d.l(CalendarApplication.e(), (Calendar)localObject1));
    this.e.setText(d.a((Calendar)localObject1));
    try
    {
      long l1 = ((Calendar)localObject1).getTimeInMillis();
      i1 = j0.f(this.a);
      Object localObject2;
      if (i1 > 0)
      {
        localObject2 = j0.d(this.a);
        if ((localObject2 != null) && (((HuangliPatch)localObject2).getHuangli() != null) && (((HuangliPatch)localObject2).getHuangli().size() > 0))
        {
          int i2 = ((Calendar)localObject1).get(1);
          int i3 = ((Calendar)localObject1).get(2);
          int i4 = ((Calendar)localObject1).get(5);
          localObject4 = ((HuangliPatch)localObject2).getHuangli().iterator();
          i1 = 0;
          for (;;)
          {
            i5 = i1;
            if (!((Iterator)localObject4).hasNext()) {
              break;
            }
            localObject5 = (HuangliPatchItem)((Iterator)localObject4).next();
            if (localObject5 != null)
            {
              i5 = i1;
              if (i2 == ((HuangliPatchItem)localObject5).getYear())
              {
                i5 = i1;
                if ((i3 + 1) * 100 + i4 == ((HuangliPatchItem)localObject5).getDay())
                {
                  if (TextUtils.isEmpty(((HuangliPatchItem)localObject5).getYi())) {
                    localObject2 = "";
                  } else {
                    localObject2 = ((HuangliPatchItem)localObject5).getYi();
                  }
                  if (TextUtils.isEmpty(((HuangliPatchItem)localObject5).getJi())) {
                    localObject5 = "";
                  } else {
                    localObject5 = ((HuangliPatchItem)localObject5).getJi();
                  }
                  this.f.setText((String)localObject2);
                  this.g.setText((String)localObject5);
                  this.f.setContentDescription((CharSequence)localObject2);
                  this.g.setContentDescription((CharSequence)localObject5);
                  i5 = 1;
                }
              }
              i1 = i5;
            }
          }
        }
      }
      int i5 = 0;
      if (i5 == 0)
      {
        localObject2 = d.f(l1);
        if ((localObject2 != null) && (localObject2.length == 2))
        {
          if ((paramLong >= 1569859200000L) && (paramLong < 1569945600000L)) {
            localObject2[0] = localObject2[0].replace(" 诸事不宜", "");
          }
          this.f.setText(localObject2[0]);
          this.g.setText(localObject2[1]);
          this.f.setContentDescription(localObject2[0]);
          this.g.setContentDescription(localObject2[1]);
        }
      }
    }
    catch (Exception localException)
    {
      z.d("Cal:D:HuangLiView", "updateView()", localException);
    }
    int i1 = a0.a.b(getResources(), (Calendar)localObject1).a();
    this.h.setText(d.n(i1));
    this.i.setText(d.p((Calendar)localObject1));
    Object localObject3 = d.i(i1).split(" ");
    if ((localObject3 != null) && (localObject3.length == 2))
    {
      this.j.setText(localObject3[0].substring(0, 4));
      this.k.setText(localObject3[0].substring(4));
      this.l.setText(localObject3[1].substring(0, 4));
      this.m.setText(localObject3[1].substring(4));
    }
    this.n.setText(d.o(((Calendar)localObject1).get(2) + 1, i1));
    Object localObject5 = this.o;
    localObject3 = new StringBuilder();
    ((StringBuilder)localObject3).append(d.c(i1));
    ((StringBuilder)localObject3).append(d.j(i1));
    ((TextView)localObject5).setText(((StringBuilder)localObject3).toString());
    Object localObject4 = d.k(i1);
    if ((!TextUtils.isEmpty((CharSequence)localObject4)) && (((String)localObject4).length() >= 12)) {
      for (i1 = 0; i1 < 12; i1++)
      {
        char c1 = "子丑寅卯辰巳午未申酉戌亥".charAt(i1);
        localObject1 = String.valueOf(((String)localObject4).charAt(i1));
        localObject3 = this.p[i1];
        localObject5 = new StringBuilder();
        ((StringBuilder)localObject5).append(String.valueOf(c1));
        ((StringBuilder)localObject5).append("\n");
        ((StringBuilder)localObject5).append((String)localObject1);
        ((TextView)localObject3).setText(((StringBuilder)localObject5).toString());
        if (TextUtils.equals((CharSequence)localObject1, "凶")) {
          this.p[i1].setTextColor(getResources().getColor(2131100014));
        } else {
          this.p[i1].setTextColor(getResources().getColor(2131099999));
        }
      }
    }
  }
  
  public void a(long paramLong)
  {
    c(paramLong);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.huangli.HuangLiView
 * JD-Core Version:    0.7.0.1
 */