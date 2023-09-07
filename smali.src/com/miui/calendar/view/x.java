package com.miui.calendar.view;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

@Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/x;", "Lmiuix/appcompat/app/l;", "Lkotlin/u;", "y", "z", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "onStart", "onStop", "", "diff", "w", "x", "Landroid/graphics/drawable/Drawable;", "d", "F", "B", "", "indeterminate", "A", "", "message", "D", "style", "G", "Landroid/widget/ProgressBar;", "c", "Landroid/widget/ProgressBar;", "mProgress", "Landroid/widget/TextView;", "Landroid/widget/TextView;", "mMessageView", "e", "mProgressPercentView", "f", "I", "mProgressStyle", "", "g", "Ljava/lang/String;", "mProgressNumberFormat", "Ljava/text/NumberFormat;", "h", "Ljava/text/NumberFormat;", "mProgressPercentFormat", "i", "mMax", "j", "mProgressVal", "k", "mSecondaryProgressVal", "l", "mIncrementBy", "m", "mIncrementSecondaryBy", "n", "Landroid/graphics/drawable/Drawable;", "mProgressDrawable", "o", "mIndeterminateDrawable", "p", "Ljava/lang/CharSequence;", "mMessage", "q", "Z", "mIndeterminate", "r", "mHasStarted", "Landroid/os/Handler;", "v", "Landroid/os/Handler;", "mViewUpdateHandler", "value", "()I", "E", "(I)V", "progress", "secondaryProgress", "getSecondaryProgress", "H", "max", "u", "C", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "a", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
public final class x
  extends miuix.appcompat.app.l
{
  public static final a w = new a(null);
  private ProgressBar c;
  private TextView d;
  private TextView e;
  private int f;
  private String g;
  private NumberFormat h;
  private int i;
  private int j;
  private int k;
  private int l;
  private int m;
  private Drawable n;
  private Drawable o;
  private CharSequence p;
  private boolean q;
  private boolean r;
  private Handler v;
  
  public x(Context paramContext)
  {
    super(paramContext);
    y();
  }
  
  private final void y()
  {
    this.g = "%1d/%2d";
    NumberFormat localNumberFormat = NumberFormat.getPercentInstance();
    this.h = localNumberFormat;
    r.c(localNumberFormat);
    localNumberFormat.setMaximumFractionDigits(0);
  }
  
  private final void z()
  {
    if (this.f == 1)
    {
      Handler localHandler = this.v;
      if (localHandler != null)
      {
        r.c(localHandler);
        if (!localHandler.hasMessages(0))
        {
          localHandler = this.v;
          r.c(localHandler);
          localHandler.sendEmptyMessage(0);
        }
      }
    }
  }
  
  public void A(boolean paramBoolean)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.setIndeterminate(paramBoolean);
    }
    else
    {
      this.q = paramBoolean;
    }
  }
  
  public final void B(Drawable paramDrawable)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.setIndeterminateDrawable(paramDrawable);
    }
    else
    {
      this.o = paramDrawable;
    }
  }
  
  public final void C(int paramInt)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.setMax(paramInt);
      z();
    }
    else
    {
      this.i = paramInt;
    }
  }
  
  public void D(CharSequence paramCharSequence)
  {
    r.f(paramCharSequence, "message");
    if (this.c != null)
    {
      if (this.f == 1) {
        this.p = paramCharSequence;
      }
      TextView localTextView = this.d;
      r.c(localTextView);
      localTextView.setText(paramCharSequence);
    }
    else
    {
      this.p = paramCharSequence;
    }
  }
  
  public final void E(int paramInt)
  {
    if (this.r)
    {
      ProgressBar localProgressBar = this.c;
      r.c(localProgressBar);
      localProgressBar.setProgress(paramInt);
      z();
    }
    else
    {
      this.j = paramInt;
    }
  }
  
  public final void F(Drawable paramDrawable)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.setProgressDrawable(paramDrawable);
    }
    else
    {
      this.n = paramDrawable;
    }
  }
  
  public final void G(int paramInt)
  {
    this.f = paramInt;
  }
  
  public final void H(int paramInt)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.setSecondaryProgress(paramInt);
      z();
    }
    else
    {
      this.k = paramInt;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    Object localObject = LayoutInflater.from(getContext());
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, k9.l.M, 16842845, 0);
    r.e(localTypedArray, "context.obtainStyledAttr…attr.alertDialogStyle, 0)");
    if (this.f == 1)
    {
      this.v = new b(this);
      localObject = ((LayoutInflater)localObject).inflate(2131558642, null);
      r.e(localObject, "inflater.inflate(com.and…l_progresss_dialog, null)");
      localView = ((View)localObject).findViewById(2131362991);
      r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
      this.e = ((TextView)localView);
    }
    else
    {
      localObject = ((LayoutInflater)localObject).inflate(2131558648, null);
      r.e(localObject, "inflater.inflate(com.and…ut_progress_dialog, null)");
    }
    View localView = ((View)localObject).findViewById(16908301);
    r.d(localView, "null cannot be cast to non-null type android.widget.ProgressBar");
    this.c = ((ProgressBar)localView);
    localView = ((View)localObject).findViewById(2131362766);
    r.d(localView, "null cannot be cast to non-null type android.widget.TextView");
    this.d = ((TextView)localView);
    o((View)localObject);
    localTypedArray.recycle();
    int i1 = this.i;
    if (i1 > 0) {
      C(i1);
    }
    i1 = this.j;
    if (i1 > 0) {
      E(i1);
    }
    i1 = this.k;
    if (i1 > 0) {
      H(i1);
    }
    i1 = this.l;
    if (i1 > 0) {
      w(i1);
    }
    i1 = this.m;
    if (i1 > 0) {
      x(i1);
    }
    localObject = this.n;
    if (localObject != null) {
      F((Drawable)localObject);
    }
    localObject = this.o;
    if (localObject != null) {
      B((Drawable)localObject);
    }
    localObject = this.p;
    if (localObject != null)
    {
      r.c(localObject);
      D((CharSequence)localObject);
    }
    A(this.q);
    z();
    super.onCreate(paramBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    this.r = true;
  }
  
  protected void onStop()
  {
    super.onStop();
    this.r = false;
  }
  
  public final int u()
  {
    ProgressBar localProgressBar = this.c;
    int i1;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      i1 = localProgressBar.getMax();
    }
    else
    {
      i1 = this.i;
    }
    return i1;
  }
  
  public final int v()
  {
    ProgressBar localProgressBar = this.c;
    int i1;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      i1 = localProgressBar.getProgress();
    }
    else
    {
      i1 = this.j;
    }
    return i1;
  }
  
  public final void w(int paramInt)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.incrementProgressBy(paramInt);
      z();
    }
    else
    {
      this.l += paramInt;
    }
  }
  
  public final void x(int paramInt)
  {
    ProgressBar localProgressBar = this.c;
    if (localProgressBar != null)
    {
      r.c(localProgressBar);
      localProgressBar.incrementSecondaryProgressBy(paramInt);
      z();
    }
    else
    {
      this.m += paramInt;
    }
  }
  
  @Metadata(bv={}, d1={""}, d2={"Lcom/miui/calendar/view/x$a;", "", "", "STYLE_HORIZONTAL", "I", "STYLE_SPINNER", "<init>", "()V", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class a {}
  
  @Metadata(bv={}, d1={""}, d2={"com/miui/calendar/view/x$b", "Landroid/os/Handler;", "Landroid/os/Message;", "msg", "Lkotlin/u;", "handleMessage", "app_chinaNormalRelease"}, k=1, mv={1, 7, 1})
  public static final class b
    extends Handler
  {
    b(x paramx) {}
    
    public void handleMessage(Message paramMessage)
    {
      r.f(paramMessage, "msg");
      super.handleMessage(paramMessage);
      paramMessage = x.q(this.a);
      r.c(paramMessage);
      paramMessage.setText(x.p(this.a));
      if ((x.s(this.a) != null) && (x.t(this.a) != null))
      {
        paramMessage = x.r(this.a);
        r.c(paramMessage);
        int i = paramMessage.getProgress();
        paramMessage = x.r(this.a);
        r.c(paramMessage);
        int j = paramMessage.getMax();
        double d = i / j;
        paramMessage = new SpannableStringBuilder();
        Object localObject = x.s(this.a);
        r.c(localObject);
        localObject = ((NumberFormat)localObject).format(d);
        paramMessage.append((CharSequence)localObject);
        paramMessage.setSpan(new ForegroundColorSpan(this.a.getContext().getResources().getColor(2131099846)), 0, ((String)localObject).length(), 34);
        localObject = x.t(this.a);
        r.c(localObject);
        ((TextView)localObject).setText(paramMessage);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.calendar.view.x
 * JD-Core Version:    0.7.0.1
 */