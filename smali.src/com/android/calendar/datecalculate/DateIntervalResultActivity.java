package com.android.calendar.datecalculate;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import androidx.fragment.app.d;
import com.android.calendar.common.Utils;
import com.android.calendar.common.b;
import com.android.calendar.event.EditEventActivity;
import com.miui.calendar.util.s0;
import com.miui.calendar.util.z;
import java.util.Calendar;
import miuix.appcompat.app.m;

public class DateIntervalResultActivity
  extends b
  implements View.OnClickListener
{
  private Calendar b;
  private Calendar c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private Context h;
  private View i;
  
  private void Y()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("beginTime", this.c.getTimeInMillis());
    localIntent.putExtra("endTime", this.c.getTimeInMillis());
    localIntent.putExtra("allDay", true);
    localIntent.putExtra("extra_key_edit_type", 2);
    localIntent.putExtra("extra_is_new", true);
    localIntent.setClass(this.h, EditEventActivity.class);
    startActivity(localIntent);
  }
  
  private void Z()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("beginTime", this.c.getTimeInMillis());
    localIntent.putExtra("endTime", this.c.getTimeInMillis());
    localIntent.putExtra("allDay", true);
    localIntent.putExtra("extra_key_edit_type", 3);
    localIntent.putExtra("extra_is_new", true);
    localIntent.setClass(this.h, EditEventActivity.class);
    startActivity(localIntent);
  }
  
  private void a0()
  {
    Object localObject1 = this.b;
    if (localObject1 != null)
    {
      Object localObject2 = this.c;
      if (localObject2 != null)
      {
        localObject2 = s0.k(this.h, (Calendar)localObject1, (Calendar)localObject2);
        int j = s0.m(this.c) - s0.m(this.b);
        int k = j;
        if (j < 0) {
          k = -j;
        }
        localObject1 = String.valueOf(k);
        this.d.setText((CharSequence)localObject1);
        this.e.setText(((String)localObject2).substring(((String)localObject1).length()));
        long l1 = this.b.getTimeInMillis();
        long l2 = this.c.getTimeInMillis();
        k = s0.s(this.h, l1, l2);
        this.f.setText(this.h.getResources().getQuantityString(2131755100, k, new Object[] { Integer.valueOf(k) }));
        return;
      }
    }
    z.m("Cal:D:DateCalculateResultActivity", "dateCalculate(): invalidate date");
    finish();
  }
  
  private void b0()
  {
    this.h = this;
    this.b = ((Calendar)getIntent().getSerializableExtra("start_date"));
    this.c = ((Calendar)getIntent().getSerializableExtra("end_date"));
  }
  
  private void c0()
  {
    this.d = ((TextView)findViewById(2131362261));
    this.e = ((TextView)findViewById(2131362270));
    this.f = ((TextView)findViewById(2131363587));
    this.g = ((TextView)findViewById(2131361914));
    this.i = findViewById(2131362368);
    Object localObject = this.b;
    if (localObject == null)
    {
      z.m("Cal:D:DateCalculateResultActivity", "initView(): mStartDateCalculate INVALID");
      finish();
      return;
    }
    String str = Utils.Q(this.h, ((Calendar)localObject).get(1), this.b.get(2), this.b.get(5), true, false);
    localObject = str;
    if (s0.z(this.b.getTimeInMillis()))
    {
      localObject = new StringBuilder();
      ((StringBuilder)localObject).append(str);
      ((StringBuilder)localObject).append(this.h.getResources().getString(2131886423));
      localObject = ((StringBuilder)localObject).toString();
    }
    str = this.h.getResources().getString(2131886414, new Object[] { Utils.Q(this.h, this.c.get(1), this.c.get(2), this.c.get(5), true, false) });
    miuix.appcompat.app.a locala = J();
    if (locala != null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append((String)localObject);
      localStringBuilder.append(str);
      locala.z(localStringBuilder.toString());
    }
    if (s0.z(this.b.getTimeInMillis()))
    {
      if (this.b.getTimeInMillis() < this.c.getTimeInMillis()) {
        this.g.setText(this.h.getResources().getString(2131886175));
      } else {
        this.g.setText(this.h.getResources().getString(2131886173));
      }
    }
    else
    {
      this.i.setVisibility(8);
      this.g.setVisibility(8);
    }
    this.g.setOnClickListener(this);
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131361914) {
      if (this.b.getTimeInMillis() < this.c.getTimeInMillis()) {
        Z();
      } else {
        Y();
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    z.a("Cal:D:DateCalculateResultActivity", "onCreate()");
    super.onCreate(paramBundle);
    setContentView(2131558444);
    b0();
    c0();
    a0();
    X();
  }
  
  protected void onPause()
  {
    z.a("Cal:D:DateCalculateResultActivity", "onPause()");
    super.onPause();
  }
  
  protected void onResume()
  {
    z.a("Cal:D:DateCalculateResultActivity", "onResume()");
    super.onResume();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.calendar.datecalculate.DateIntervalResultActivity
 * JD-Core Version:    0.7.0.1
 */