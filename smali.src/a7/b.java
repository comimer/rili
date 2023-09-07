package a7;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.xiaomi.accountsdk.account.serverpassthrougherror.data.PassThroughErrorInfo;
import com.xiaomi.accountsdk.utils.w;
import com.xiaomi.passport.ui.internal.PassportJsbWebViewActivity;
import com.xiaomi.passport.ui.internal.util.LinkSpanHelper;
import com.xiaomi.passport.ui.internal.util.LinkSpanHelper.a;
import n5.e;
import n5.f;
import n5.h;

public class b
  extends Dialog
{
  private TextView a;
  private TextView b;
  private LinearLayout c;
  private View d;
  private View e;
  private Button f;
  private Button g;
  private Button h;
  private FrameLayout i;
  private Pair<String, View.OnClickListener> j;
  private Pair<String, View.OnClickListener> k;
  private Pair<String, View.OnClickListener> l;
  private String m;
  private CharSequence n;
  private boolean o;
  private Pair<Pair<String[], Integer>, DialogInterface.OnClickListener> p;
  private View q;
  
  public b(Context paramContext)
  {
    super(paramContext, h.a);
  }
  
  public static b d(Context paramContext, PassThroughErrorInfo paramPassThroughErrorInfo)
  {
    if (TextUtils.isEmpty(paramPassThroughErrorInfo.getTips())) {
      return null;
    }
    return new b(paramContext).h(paramPassThroughErrorInfo.getTips()).l(paramPassThroughErrorInfo.getTitle()).k(paramContext.getString(17039370), null);
  }
  
  public void dismiss()
  {
    if (!isShowing()) {
      return;
    }
    super.dismiss();
  }
  
  public b e(String[] paramArrayOfString, int paramInt, final DialogInterface.OnClickListener paramOnClickListener)
  {
    this.p = new Pair(new Pair(paramArrayOfString, Integer.valueOf(paramInt)), paramOnClickListener);
    LinearLayout localLinearLayout = new LinearLayout(getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    for (final int i1 = 0; i1 < paramArrayOfString.length; i1++)
    {
      Object localObject = getContext();
      int i2;
      if (i1 == paramInt) {
        i2 = f.v;
      } else {
        i2 = f.w;
      }
      View.inflate((Context)localObject, i2, localLinearLayout);
      localObject = localLinearLayout.getChildAt(i1);
      ((View)localObject).setOnClickListener(new e(paramOnClickListener, i1));
      ((TextView)((View)localObject).findViewById(e.B0)).setText(paramArrayOfString[i1]);
    }
    m(localLinearLayout);
    return this;
  }
  
  public b f(boolean paramBoolean)
  {
    this.o = paramBoolean;
    return this;
  }
  
  public b g(CharSequence paramCharSequence)
  {
    this.n = paramCharSequence;
    return this;
  }
  
  public b h(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      this.n = LinkSpanHelper.a(getContext(), paramString, null, false, new d());
    }
    return this;
  }
  
  public b i(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.k = new Pair(paramString, paramOnClickListener);
    return this;
  }
  
  public b j(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.l = new Pair(paramString, paramOnClickListener);
    return this;
  }
  
  public b k(String paramString, View.OnClickListener paramOnClickListener)
  {
    this.j = new Pair(paramString, paramOnClickListener);
    return this;
  }
  
  public b l(String paramString)
  {
    this.m = paramString;
    return this;
  }
  
  public b m(View paramView)
  {
    this.q = paramView;
    return this;
  }
  
  public void n(int paramInt)
  {
    this.n = getContext().getString(paramInt);
    show();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(f.t);
    this.a = ((TextView)findViewById(e.D0));
    boolean bool = TextUtils.isEmpty(this.m);
    int i1 = 0;
    if (bool)
    {
      this.a.setVisibility(8);
    }
    else
    {
      this.a.setVisibility(0);
      this.a.setText(this.m);
    }
    this.b = ((TextView)findViewById(e.N));
    if (TextUtils.isEmpty(this.n))
    {
      this.b.setVisibility(8);
    }
    else
    {
      this.b.setVisibility(0);
      this.b.setMovementMethod(LinkMovementMethod.getInstance());
      this.b.setText(this.n);
    }
    this.g = ((Button)findViewById(e.O));
    paramBundle = this.k;
    if ((paramBundle != null) && (!TextUtils.isEmpty((CharSequence)paramBundle.first)))
    {
      this.g.setVisibility(0);
      this.g.setText((CharSequence)this.k.first);
      this.g.setOnClickListener(new a());
    }
    else
    {
      this.g.setVisibility(8);
    }
    this.h = ((Button)findViewById(e.Q));
    paramBundle = this.l;
    if ((paramBundle != null) && (!TextUtils.isEmpty((CharSequence)paramBundle.first)))
    {
      this.h.setVisibility(0);
      this.h.setText((CharSequence)this.l.first);
      this.h.setOnClickListener(new b());
    }
    else
    {
      this.h.setVisibility(8);
    }
    this.f = ((Button)findViewById(e.b0));
    paramBundle = this.j;
    if ((paramBundle != null) && (!TextUtils.isEmpty((CharSequence)paramBundle.first)))
    {
      this.f.setVisibility(0);
      this.f.setText((CharSequence)this.j.first);
      this.f.setOnClickListener(new c());
    }
    else
    {
      this.f.setVisibility(8);
    }
    this.c = ((LinearLayout)findViewById(e.g));
    this.d = findViewById(e.x0);
    this.e = findViewById(e.y0);
    int i2;
    if ((this.g.getVisibility() == 0) && (this.h.getVisibility() == 0) && (this.f.getVisibility() == 0)) {
      i2 = 1;
    } else {
      i2 = 0;
    }
    if (i2 == 0)
    {
      this.c.setOrientation(i2);
      if ((this.g.getVisibility() == 0) || (this.h.getVisibility() == 0) || (this.f.getVisibility() == 0))
      {
        paramBundle = this.c;
        paramBundle.setPadding(paramBundle.getPaddingLeft(), (int)w.b(32.0F, getContext()), this.c.getPaddingRight(), this.c.getPaddingBottom());
      }
      int i3;
      if ((this.g.getVisibility() == 0) && (this.h.getVisibility() == 8) && (this.f.getVisibility() == 0))
      {
        i2 = 0;
        i3 = i2;
      }
      else
      {
        if ((this.g.getVisibility() != 8) && (this.h.getVisibility() != 8)) {
          i2 = 0;
        } else {
          i2 = 8;
        }
        if ((this.h.getVisibility() != 8) && (this.f.getVisibility() != 8)) {
          i3 = 0;
        } else {
          i3 = 8;
        }
      }
      this.d.setVisibility(i2);
      this.e.setVisibility(i3);
    }
    FrameLayout localFrameLayout = (FrameLayout)findViewById(e.o);
    this.i = localFrameLayout;
    paramBundle = this.q;
    if (paramBundle != null)
    {
      localFrameLayout.addView(paramBundle);
      this.b.setVisibility(8);
    }
    else
    {
      this.b.setVisibility(0);
    }
    paramBundle = findViewById(e.j0);
    if (this.o) {
      i2 = i1;
    } else {
      i2 = 8;
    }
    paramBundle.setVisibility(i2);
  }
  
  public void setTitle(int paramInt)
  {
    l(getContext().getString(paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    l(paramCharSequence.toString());
  }
  
  public void show()
  {
    super.show();
    getWindow().setLayout(-1, -2);
  }
  
  class a
    implements View.OnClickListener
  {
    a() {}
    
    public void onClick(View paramView)
    {
      if (b.a(b.this).second != null) {
        ((View.OnClickListener)b.a(b.this).second).onClick(paramView);
      }
      b.this.dismiss();
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      if (b.b(b.this).second != null) {
        ((View.OnClickListener)b.b(b.this).second).onClick(paramView);
      }
      b.this.dismiss();
    }
  }
  
  class c
    implements View.OnClickListener
  {
    c() {}
    
    public void onClick(View paramView)
    {
      if (b.c(b.this).second != null) {
        ((View.OnClickListener)b.c(b.this).second).onClick(paramView);
      }
      b.this.dismiss();
    }
  }
  
  class d
    implements LinkSpanHelper.a
  {
    d() {}
    
    public void a(View paramView, String paramString)
    {
      b.this.getContext().startActivity(PassportJsbWebViewActivity.G(b.this.getContext(), paramString));
    }
  }
  
  class e
    implements View.OnClickListener
  {
    e(DialogInterface.OnClickListener paramOnClickListener, int paramInt) {}
    
    public void onClick(View paramView)
    {
      paramOnClickListener.onClick(b.this, i1);
      b.this.dismiss();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     a7.b
 * JD-Core Version:    0.7.0.1
 */