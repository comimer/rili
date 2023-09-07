package com.miui.calendar.view;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.android.calendar.common.Utils;
import com.miui.calendar.ad.AdSchema;
import com.miui.calendar.ad.a;
import com.miui.calendar.ad.a.b;
import com.miui.calendar.ad.c;
import org.apache.commons.lang3.e;

public class AdProgressTextView
  extends z
  implements View.OnClickListener
{
  private AdSchema p;
  private Context q;
  private a r;
  
  public AdProgressTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AdProgressTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOnClickListener(this);
    this.q = paramContext.getApplicationContext();
  }
  
  private boolean a()
  {
    boolean bool;
    if (this.p != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void setProgrossButtonStatus(int paramInt)
  {
    if (3 == paramInt)
    {
      setBackground(this.o);
      setTextColor(this.j);
    }
    else
    {
      setBackground(this.n);
      setTextColor(this.i);
    }
  }
  
  public void b(AdSchema paramAdSchema, Context paramContext)
  {
    this.p = paramAdSchema;
    if (!a()) {
      return;
    }
    if (Utils.i0(this.q, this.p.packageName))
    {
      setProgrossButtonStatus(4);
      setProgress(0);
      if (this.h)
      {
        setTextSize(2, 15.27F);
        setPadding(203, 0, 47, 0);
      }
      setText(2131886164);
      setEnabled(true);
    }
    else
    {
      int i = c.a(this.q).d(this.p.packageName);
      if (i != -1)
      {
        if (i != 5)
        {
          if (i != 1)
          {
            if (i == 2) {
              break label282;
            }
            if (i != 3)
            {
              setProgrossButtonStatus(-100);
              if (this.h)
              {
                setTextSize(2, 15.27F);
                setPadding(203, 0, 47, 0);
              }
              paramAdSchema = this.g;
              if ((paramAdSchema != null) && (!TextUtils.isEmpty(paramAdSchema)))
              {
                paramAdSchema = this.p;
                if ((paramAdSchema != null) && (e.h(paramAdSchema.buttonText))) {
                  setText(this.p.buttonText);
                } else {
                  setText(this.g);
                }
              }
              else
              {
                setText(2131886168);
              }
              setProgress(0);
              setEnabled(true);
              return;
            }
          }
          setProgrossButtonStatus(3);
          if (this.h)
          {
            setTextSize(2, 13.82F);
            setPadding(0, 0, 33, 0);
          }
          setText(2131886162);
          setProgress(0);
          setEnabled(false);
          return;
        }
        label282:
        setProgrossButtonStatus(5);
        i = c.a(this.q).b(this.p.packageName);
        if (i != -1)
        {
          if (this.h)
          {
            setTextSize(2, 13.82F);
            setTypeface(Typeface.MONOSPACE);
            if (i < 100) {
              setPadding(0, 0, 56, 0);
            } else {
              setPadding(0, 0, 40, 0);
            }
          }
          paramAdSchema = new StringBuilder();
          paramAdSchema.append(i);
          paramAdSchema.append("%");
          setText(paramAdSchema.toString());
          setProgress(i);
        }
        else
        {
          if (this.h)
          {
            setTextSize(2, 13.82F);
            setPadding(0, 0, 33, 0);
          }
          setProgress(0);
        }
        if (c.a(this.q).c(this.p.packageName) == -3)
        {
          if (this.h)
          {
            setTextSize(2, 15.27F);
            setPadding(203, 0, 47, 0);
          }
          setText(2131886165);
        }
        setEnabled(true);
      }
      else if (this.h)
      {
        setTextSize(2, 15.27F);
        setPadding(203, 0, 47, 0);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    if (!a()) {
      return;
    }
    paramView = new a.b("BUTTON", this.p);
    a.a(this.q, paramView);
    if (Utils.i0(this.q, this.p.packageName))
    {
      paramView = new StringBuilder();
      paramView.append("onClick() open app:");
      paramView.append(this.p.packageName);
      com.miui.calendar.util.z.a("Cal:D:AdProgressTextView", paramView.toString());
      AdSchema.onDownloadAdItemClicked(this.q, this.p);
      paramView = this.r;
      if (paramView != null) {
        paramView.a(this.p);
      }
      return;
    }
    if (c.a(this.q).d(this.p.packageName) == 5)
    {
      if (c.a(this.q).c(this.p.packageName) == -3)
      {
        paramView = new StringBuilder();
        paramView.append("onClick() resume app:");
        paramView.append(this.p.packageName);
        com.miui.calendar.util.z.a("Cal:D:AdProgressTextView", paramView.toString());
        if (AdSchema.onResumeByFloat(this.q, this.p))
        {
          paramView = this.r;
          if (paramView != null) {
            paramView.b(this.p);
          }
        }
        else
        {
          com.miui.calendar.util.z.c("Cal:D:AdProgressTextView", "onClick() resume app error");
        }
      }
      else
      {
        paramView = new StringBuilder();
        paramView.append("onClick() pause app:");
        paramView.append(this.p.packageName);
        com.miui.calendar.util.z.a("Cal:D:AdProgressTextView", paramView.toString());
        if (AdSchema.onPauseByFloat(this.q, this.p))
        {
          paramView = this.r;
          if (paramView != null) {
            paramView.d(this.p);
          }
        }
        else
        {
          com.miui.calendar.util.z.c("Cal:D:AdProgressTextView", "onClick() pause app error");
        }
      }
      return;
    }
    paramView = new StringBuilder();
    paramView.append("onClick() download app:");
    paramView.append(this.p.packageName);
    com.miui.calendar.util.z.a("Cal:D:AdProgressTextView", paramView.toString());
    if (AdSchema.onDownloadByFloat(this.q, this.p))
    {
      paramView = this.r;
      if (paramView != null) {
        paramView.c(this.p);
      }
    }
    else
    {
      com.miui.calendar.util.z.c("Cal:D:AdProgressTextView", "onClick() download app error");
    }
  }
  
  public void setListener(a parama)
  {
    this.r = parama;
  }
  
  public static abstract interface a
  {
    public abstract void a(AdSchema paramAdSchema);
    
    public abstract void b(AdSchema paramAdSchema);
    
    public abstract void c(AdSchema paramAdSchema);
    
    public abstract void d(AdSchema paramAdSchema);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.AdProgressTextView
 * JD-Core Version:    0.7.0.1
 */