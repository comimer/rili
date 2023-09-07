package com.miui.calendar.view;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.ad.a;
import com.miui.calendar.ad.a.b;
import com.miui.calendar.ad.c;
import com.miui.calendar.util.w;
import com.miui.calendar.util.x0;
import com.miui.calendar.util.z;
import org.apache.commons.lang3.e;

public class AdProgressLinearLayout
  extends y
  implements View.OnClickListener
{
  private AdSchema o;
  private Context p;
  public TextView q;
  private AdProgressTextView.a r;
  
  public AdProgressLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AdProgressLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TextView(paramContext);
    this.q = paramAttributeSet;
    paramAttributeSet.setText(2131886161);
    this.i = this.q.getText().toString();
    this.q.setTypeface(w.c());
    this.q.setTextSize(2, paramContext.getResources().getDimension(2131165696));
    this.q.setTextColor(getResources().getColor(2131099693));
    paramAttributeSet = new LinearLayout.LayoutParams(-1, -1);
    paramAttributeSet.gravity = 17;
    setLayoutParams(paramAttributeSet);
    addView(this.q);
    setOnClickListener(this);
    this.p = paramContext.getApplicationContext();
  }
  
  private boolean a()
  {
    boolean bool;
    if (this.o != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setProgressButtonStatus(int paramInt)
  {
    if (3 == paramInt)
    {
      setBackground(this.n);
      this.q.setTextColor(this.p.getResources().getColor(2131099691));
    }
    else
    {
      setBackground(this.m);
      this.q.setTextColor(this.p.getResources().getColor(2131099693));
    }
  }
  
  public void b(AdSchema paramAdSchema, Context paramContext)
  {
    this.o = paramAdSchema;
    if (!a()) {
      return;
    }
    boolean bool = Utils.i0(this.p, this.o.packageName);
    int i = 0;
    if (bool)
    {
      setProgressButtonStatus(4);
      setProgress(0);
      this.q.setText(2131886164);
      this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      setEnabled(true);
      return;
    }
    int j = c.a(this.p).d(this.o.packageName);
    if (j != -1)
    {
      if (j != 5)
      {
        if (j == 1) {
          break label395;
        }
        if (j != 2)
        {
          if (j == 3) {
            break label395;
          }
          setProgressButtonStatus(-100);
          setProgress(0);
          setEnabled(true);
          this.q.setText(this.i);
          this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, paramContext.getResources().getDrawable(2131231072), null);
          this.q.setCompoundDrawablePadding(20);
          paramAdSchema = this.i;
          if ((paramAdSchema != null) && (!TextUtils.isEmpty(paramAdSchema)))
          {
            paramAdSchema = this.o;
            if ((paramAdSchema == null) || (!e.h(paramAdSchema.buttonText))) {
              return;
            }
            this.q.setText(this.o.buttonText);
            this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
            return;
          }
          this.q.setText(2131886168);
          this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
          return;
        }
      }
      setProgressButtonStatus(5);
      j = c.a(this.p).b(this.o.packageName);
      if (j != -1)
      {
        paramAdSchema = this.q;
        paramContext = new StringBuilder();
        paramContext.append(j);
        paramContext.append("%");
        x0.f(paramAdSchema, paramContext.toString());
      }
      if (j != -1) {
        i = j;
      }
      setProgress(i);
      if (c.a(this.p).c(this.o.packageName) == -3) {
        this.q.setText(2131886165);
      }
      this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      setEnabled(true);
      return;
    }
    label395:
    setProgressButtonStatus(3);
    this.q.setText(2131886162);
    this.q.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
    setProgress(0);
    setEnabled(false);
  }
  
  public void onClick(View paramView)
  {
    if (!a()) {
      return;
    }
    paramView = new a.b("BUTTON", this.o);
    a.a(this.p, paramView);
    if (Utils.i0(this.p, this.o.packageName))
    {
      paramView = new StringBuilder();
      paramView.append("onClick() open app:");
      paramView.append(this.o.packageName);
      z.a("Cal:D:AdProgressLinearLayout", paramView.toString());
      AdSchema.onDownloadAdItemClicked(this.p, this.o);
      paramView = this.r;
      if (paramView != null) {
        paramView.a(this.o);
      }
      return;
    }
    if (c.a(this.p).d(this.o.packageName) == 5)
    {
      if (c.a(this.p).c(this.o.packageName) == -3)
      {
        paramView = new StringBuilder();
        paramView.append("onClick() resume app:");
        paramView.append(this.o.packageName);
        z.a("Cal:D:AdProgressLinearLayout", paramView.toString());
        if (!AdSchema.onResumeByFloat(this.p, this.o))
        {
          z.c("Cal:D:AdProgressLinearLayout", "onClick() resume app error");
        }
        else
        {
          paramView = this.r;
          if (paramView != null) {
            paramView.b(this.o);
          }
        }
        return;
      }
      paramView = new StringBuilder();
      paramView.append("onClick() pause app:");
      paramView.append(this.o.packageName);
      z.a("Cal:D:AdProgressLinearLayout", paramView.toString());
      if (!AdSchema.onPauseByFloat(this.p, this.o))
      {
        z.c("Cal:D:AdProgressLinearLayout", "onClick() pause app error");
      }
      else
      {
        paramView = this.r;
        if (paramView != null) {
          paramView.d(this.o);
        }
      }
      return;
    }
    paramView = new StringBuilder();
    paramView.append("onClick() download app:");
    paramView.append(this.o.packageName);
    z.a("Cal:D:AdProgressLinearLayout", paramView.toString());
    if (!AdSchema.onDownloadByFloat(this.p, this.o))
    {
      z.c("Cal:D:AdProgressLinearLayout", "onClick() download app error");
    }
    else
    {
      paramView = this.r;
      if (paramView != null) {
        paramView.c(this.o);
      }
    }
  }
  
  public void setListener(AdProgressTextView.a parama)
  {
    this.r = parama;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.AdProgressLinearLayout
 * JD-Core Version:    0.7.0.1
 */