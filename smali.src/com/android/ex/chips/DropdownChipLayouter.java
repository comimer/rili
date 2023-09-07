package com.android.ex.chips;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.util.Rfc822Token;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.view.h;

public class DropdownChipLayouter
{
  private final LayoutInflater a;
  private final Context b;
  private d c;
  private e d;
  private h.c e;
  private int f;
  
  public DropdownChipLayouter(LayoutInflater paramLayoutInflater, Context paramContext)
  {
    this.a = paramLayoutInflater;
    this.b = paramContext;
    this.f = paramContext.getResources().getDimensionPixelOffset(j.f);
  }
  
  private static boolean x(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return true;
    }
    for (int i = 0; i < paramString.length(); i++) {
      if (!Character.isWhitespace(paramString.charAt(i))) {
        return false;
      }
    }
    return true;
  }
  
  public void A(d paramd)
  {
    this.c = paramd;
  }
  
  public void B(e parame)
  {
    this.d = parame;
  }
  
  public void C(h.c paramc)
  {
    this.e = paramc;
  }
  
  protected void D(View paramView, int paramInt)
  {
    if (paramView != null) {
      paramView.setVisibility(paramInt);
    }
  }
  
  protected void c(final StateListDrawable paramStateListDrawable, String paramString, ImageView paramImageView)
  {
    if (paramImageView == null) {
      return;
    }
    if (paramStateListDrawable == null)
    {
      paramImageView.setVisibility(8);
    }
    else
    {
      Resources localResources = this.b.getResources();
      paramImageView.setImageDrawable(paramStateListDrawable);
      paramImageView.setContentDescription(localResources.getString(o.e, new Object[] { paramString }));
      if (this.c != null) {
        paramImageView.setOnClickListener(new a(paramStateListDrawable));
      }
    }
  }
  
  protected void d(boolean paramBoolean, r paramr, ImageView paramImageView, AdapterType paramAdapterType)
  {
    if (paramImageView == null) {
      return;
    }
    if (paramBoolean)
    {
      int i = c.a[paramAdapterType.ordinal()];
      if (i != 1)
      {
        if (i == 2)
        {
          paramr = paramr.t();
          if (paramr != null) {
            paramImageView.setImageURI(paramr);
          } else {
            paramImageView.setImageResource(k());
          }
        }
      }
      else
      {
        paramr = paramr.s();
        if ((paramr != null) && (paramr.length > 0)) {
          paramImageView.setImageBitmap(BitmapFactory.decodeByteArray(paramr, 0, paramr.length));
        } else {
          paramImageView.setImageResource(k());
        }
      }
      paramImageView.setVisibility(0);
    }
    else
    {
      paramImageView.setVisibility(8);
    }
  }
  
  protected void e(int paramInt, String paramString, TextView paramTextView)
  {
    if (paramTextView != null) {
      if ((paramString == null) && (paramInt == 0))
      {
        paramTextView.setVisibility(8);
      }
      else
      {
        paramTextView.setText(paramString);
        paramTextView.setVisibility(0);
        if (paramInt != 0)
        {
          paramString = this.b.getResources().getDrawable(paramInt).mutate();
          paramString.setColorFilter(-1, PorterDuff.Mode.SRC_IN);
        }
        else
        {
          paramString = null;
        }
        paramTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(paramString, null, null, null);
      }
    }
  }
  
  protected void f(ImageView paramImageView)
  {
    if (paramImageView == null) {
      return;
    }
    paramImageView.setOnClickListener(new b());
  }
  
  protected void g(CharSequence paramCharSequence, TextView paramTextView)
  {
    if (paramTextView == null) {
      return;
    }
    if (paramCharSequence != null)
    {
      paramTextView.setText(paramCharSequence);
      paramTextView.setVisibility(0);
    }
    else
    {
      paramTextView.setVisibility(8);
    }
  }
  
  public View h(View paramView, ViewGroup paramViewGroup, r paramr, int paramInt, AdapterType paramAdapterType, String paramString)
  {
    return i(paramView, paramViewGroup, paramr, paramInt, paramAdapterType, paramString, null);
  }
  
  public View i(View paramView, ViewGroup paramViewGroup, r paramr, int paramInt, AdapterType paramAdapterType, String paramString, StateListDrawable paramStateListDrawable)
  {
    paramString = v(paramString, paramr);
    Object localObject = paramString[0];
    paramString = paramString[1];
    CharSequence localCharSequence1 = n(paramr);
    View localView1 = z(paramView, paramViewGroup, paramAdapterType);
    f localf = new f(localView1);
    int i = c.a[paramAdapterType.ordinal()];
    boolean bool1;
    CharSequence localCharSequence2;
    if (i != 1)
    {
      if (i != 2)
      {
        if (i == 3)
        {
          if (!f.a(paramr.i())) {
            paramString = android.text.util.Rfc822Tokenizer.tokenize(paramr.i())[0].getAddress();
          }
          bool1 = true;
          localCharSequence2 = null;
          paramView = (View)localObject;
          localObject = paramString;
          break label326;
        }
      }
      else if (paramInt != 0)
      {
        bool1 = false;
        paramView = null;
        localCharSequence2 = localCharSequence1;
        localObject = paramString;
        break label326;
      }
      bool1 = true;
      paramView = (View)localObject;
      localCharSequence2 = localCharSequence1;
      localObject = paramString;
    }
    else
    {
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        paramView = (View)localObject;
        paramViewGroup = paramString;
        if (!TextUtils.equals((CharSequence)localObject, paramString)) {}
      }
      else if (paramr.v())
      {
        paramView = paramString;
        paramViewGroup = null;
      }
      else
      {
        paramView = paramString;
        paramViewGroup = paramString;
      }
      boolean bool2 = paramr.v();
      paramString = paramView;
      if (!bool2) {
        paramString = null;
      }
      paramView = localf.h;
      if (paramView != null)
      {
        if (paramInt == 0) {
          paramInt = 0;
        } else {
          paramInt = 8;
        }
        paramView.setVisibility(paramInt);
        h.d((ViewGroup.MarginLayoutParams)localf.h.getLayoutParams(), this.f);
      }
      View localView2 = localf.i;
      paramView = paramString;
      localCharSequence2 = localCharSequence1;
      bool1 = bool2;
      localObject = paramViewGroup;
      if (localView2 != null)
      {
        h.d((ViewGroup.MarginLayoutParams)localView2.getLayoutParams(), this.f);
        localObject = paramViewGroup;
        bool1 = bool2;
        localCharSequence2 = localCharSequence1;
        paramView = paramString;
      }
    }
    label326:
    g(paramView, localf.b);
    g((CharSequence)localObject, localf.c);
    g(localCharSequence2, localf.d);
    d(bool1, paramr, localf.f, paramAdapterType);
    c(paramStateListDrawable, paramr.m(), localf.g);
    e(paramr.o(), paramr.p(), localf.e);
    f(localf.l);
    paramInt = paramr.n();
    if (paramInt == 0)
    {
      D(localf.a, 0);
      D(localf.k, 8);
      D(localf.j, 8);
    }
    else if (paramInt == 1)
    {
      D(localf.a, 8);
      D(localf.k, 0);
      D(localf.j, 0);
    }
    return localView1;
  }
  
  protected int j(AdapterType paramAdapterType)
  {
    int i = c.a[paramAdapterType.ordinal()];
    if (i != 1)
    {
      if (i != 2) {
        return n.b;
      }
      return n.b;
    }
    return n.a;
  }
  
  protected int k()
  {
    return k.b;
  }
  
  protected int l()
  {
    return 16908295;
  }
  
  protected int m()
  {
    return 16908308;
  }
  
  protected CharSequence n(r paramr)
  {
    return this.e.d(this.b.getResources(), paramr.k(), paramr.j()).toString().toUpperCase();
  }
  
  protected int o()
  {
    return 16908309;
  }
  
  protected int p()
  {
    return 16908310;
  }
  
  protected int q(AdapterType paramAdapterType)
  {
    int i = c.a[paramAdapterType.ordinal()];
    if (i != 1)
    {
      if (i != 2) {
        return n.b;
      }
      return n.b;
    }
    return n.a;
  }
  
  protected int r()
  {
    return l.e;
  }
  
  protected int s()
  {
    return 16908296;
  }
  
  protected int t()
  {
    return l.f;
  }
  
  protected int u()
  {
    return 16908294;
  }
  
  protected CharSequence[] v(String paramString, r paramr)
  {
    return w(paramString, new String[] { paramr.m(), paramr.i() });
  }
  
  protected CharSequence[] w(String paramString, String... paramVarArgs)
  {
    if (x(paramString)) {
      return paramVarArgs;
    }
    CharSequence[] arrayOfCharSequence = new CharSequence[paramVarArgs.length];
    int i = 0;
    int j = 0;
    while (i < paramVarArgs.length)
    {
      Object localObject = paramVarArgs[i];
      if (localObject != null)
      {
        if (j == 0)
        {
          int k = ((String)localObject).toLowerCase().indexOf(paramString.toLowerCase());
          if (k != -1)
          {
            localObject = SpannableStringBuilder.valueOf((CharSequence)localObject);
            ((SpannableStringBuilder)localObject).setSpan(new ForegroundColorSpan(this.b.getResources().getColor(i.c)), k, paramString.length() + k, 33);
            arrayOfCharSequence[i] = localObject;
            j = 1;
            break label128;
          }
        }
        arrayOfCharSequence[i] = localObject;
      }
      label128:
      i++;
    }
    return arrayOfCharSequence;
  }
  
  public View y(AdapterType paramAdapterType)
  {
    return this.a.inflate(q(paramAdapterType), null);
  }
  
  protected View z(View paramView, ViewGroup paramViewGroup, AdapterType paramAdapterType)
  {
    int i = q(paramAdapterType);
    if (c.a[paramAdapterType.ordinal()] == 3) {
      i = j(paramAdapterType);
    }
    if (paramView == null) {
      paramView = this.a.inflate(i, paramViewGroup, false);
    }
    return paramView;
  }
  
  public static enum AdapterType
  {
    static
    {
      AdapterType localAdapterType1 = new AdapterType("BASE_RECIPIENT", 0);
      BASE_RECIPIENT = localAdapterType1;
      AdapterType localAdapterType2 = new AdapterType("RECIPIENT_ALTERNATES", 1);
      RECIPIENT_ALTERNATES = localAdapterType2;
      AdapterType localAdapterType3 = new AdapterType("SINGLE_RECIPIENT", 2);
      SINGLE_RECIPIENT = localAdapterType3;
      $VALUES = new AdapterType[] { localAdapterType1, localAdapterType2, localAdapterType3 };
    }
    
    private AdapterType() {}
  }
  
  class a
    implements View.OnClickListener
  {
    a(StateListDrawable paramStateListDrawable) {}
    
    public void onClick(View paramView)
    {
      if (paramStateListDrawable.getCurrent() != null) {
        DropdownChipLayouter.a(DropdownChipLayouter.this).c();
      }
    }
  }
  
  class b
    implements View.OnClickListener
  {
    b() {}
    
    public void onClick(View paramView)
    {
      if (DropdownChipLayouter.b(DropdownChipLayouter.this) != null) {
        DropdownChipLayouter.b(DropdownChipLayouter.this).a();
      }
    }
  }
  
  public static abstract interface d
  {
    public abstract void c();
  }
  
  public static abstract interface e
  {
    public abstract void a();
  }
  
  protected class f
  {
    public final ViewGroup a;
    public final TextView b;
    public final TextView c;
    public final TextView d;
    public final TextView e;
    public final ImageView f;
    public final ImageView g;
    public final View h;
    public final View i;
    public final View j;
    public final ViewGroup k;
    public final ImageView l;
    
    public f(View paramView)
    {
      this.a = ((ViewGroup)paramView.findViewById(DropdownChipLayouter.this.t()));
      this.b = ((TextView)paramView.findViewById(DropdownChipLayouter.this.p()));
      this.c = ((TextView)paramView.findViewById(DropdownChipLayouter.this.m()));
      this.d = ((TextView)paramView.findViewById(DropdownChipLayouter.this.o()));
      this.f = ((ImageView)paramView.findViewById(DropdownChipLayouter.this.u()));
      this.g = ((ImageView)paramView.findViewById(DropdownChipLayouter.this.l()));
      this.h = paramView.findViewById(l.b);
      this.i = paramView.findViewById(l.a);
      this.j = paramView.findViewById(l.d);
      this.e = ((TextView)paramView.findViewById(l.c));
      this.k = ((ViewGroup)paramView.findViewById(DropdownChipLayouter.this.r()));
      this.l = ((ImageView)paramView.findViewById(DropdownChipLayouter.this.s()));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.android.ex.chips.DropdownChipLayouter
 * JD-Core Version:    0.7.0.1
 */