package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import d.a;

public class c
  extends g
{
  final AlertController a = new AlertController(getContext(), this, getWindow());
  
  protected c(Context paramContext, int paramInt)
  {
    super(paramContext, b(paramContext, paramInt));
  }
  
  static int b(Context paramContext, int paramInt)
  {
    if ((paramInt >>> 24 & 0xFF) >= 1) {
      return paramInt;
    }
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(a.o, localTypedValue, true);
    return localTypedValue.resourceId;
  }
  
  public ListView a()
  {
    return this.a.d();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a.e();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.f(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.g(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    this.a.p(paramCharSequence);
  }
  
  public static class a
  {
    private final AlertController.b P;
    private final int mTheme;
    
    public a(Context paramContext)
    {
      this(paramContext, c.b(paramContext, 0));
    }
    
    public a(Context paramContext, int paramInt)
    {
      this.P = new AlertController.b(new ContextThemeWrapper(paramContext, c.b(paramContext, paramInt)));
      this.mTheme = paramInt;
    }
    
    public c create()
    {
      c localc = new c(this.P.a, this.mTheme);
      this.P.a(localc.a);
      localc.setCancelable(this.P.r);
      if (this.P.r) {
        localc.setCanceledOnTouchOutside(true);
      }
      localc.setOnCancelListener(this.P.s);
      localc.setOnDismissListener(this.P.t);
      DialogInterface.OnKeyListener localOnKeyListener = this.P.u;
      if (localOnKeyListener != null) {
        localc.setOnKeyListener(localOnKeyListener);
      }
      return localc;
    }
    
    public Context getContext()
    {
      return this.P.a;
    }
    
    public a setAdapter(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.w = paramListAdapter;
      localb.x = paramOnClickListener;
      return this;
    }
    
    public a setCancelable(boolean paramBoolean)
    {
      this.P.r = paramBoolean;
      return this;
    }
    
    public a setCursor(Cursor paramCursor, DialogInterface.OnClickListener paramOnClickListener, String paramString)
    {
      AlertController.b localb = this.P;
      localb.K = paramCursor;
      localb.L = paramString;
      localb.x = paramOnClickListener;
      return this;
    }
    
    public a setCustomTitle(View paramView)
    {
      this.P.g = paramView;
      return this;
    }
    
    public a setIcon(int paramInt)
    {
      this.P.c = paramInt;
      return this;
    }
    
    public a setIcon(Drawable paramDrawable)
    {
      this.P.d = paramDrawable;
      return this;
    }
    
    public a setIconAttribute(int paramInt)
    {
      TypedValue localTypedValue = new TypedValue();
      this.P.a.getTheme().resolveAttribute(paramInt, localTypedValue, true);
      this.P.c = localTypedValue.resourceId;
      return this;
    }
    
    @Deprecated
    public a setInverseBackgroundForced(boolean paramBoolean)
    {
      this.P.N = paramBoolean;
      return this;
    }
    
    public a setItems(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = localb.a.getResources().getTextArray(paramInt);
      this.P.x = paramOnClickListener;
      return this;
    }
    
    public a setItems(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = paramArrayOfCharSequence;
      localb.x = paramOnClickListener;
      return this;
    }
    
    public a setMessage(int paramInt)
    {
      AlertController.b localb = this.P;
      localb.h = localb.a.getText(paramInt);
      return this;
    }
    
    public a setMessage(CharSequence paramCharSequence)
    {
      this.P.h = paramCharSequence;
      return this;
    }
    
    public a setMultiChoiceItems(int paramInt, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = localb.a.getResources().getTextArray(paramInt);
      localb = this.P;
      localb.J = paramOnMultiChoiceClickListener;
      localb.F = paramArrayOfBoolean;
      localb.G = true;
      return this;
    }
    
    public a setMultiChoiceItems(Cursor paramCursor, String paramString1, String paramString2, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      AlertController.b localb = this.P;
      localb.K = paramCursor;
      localb.J = paramOnMultiChoiceClickListener;
      localb.M = paramString1;
      localb.L = paramString2;
      localb.G = true;
      return this;
    }
    
    public a setMultiChoiceItems(CharSequence[] paramArrayOfCharSequence, boolean[] paramArrayOfBoolean, DialogInterface.OnMultiChoiceClickListener paramOnMultiChoiceClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = paramArrayOfCharSequence;
      localb.J = paramOnMultiChoiceClickListener;
      localb.F = paramArrayOfBoolean;
      localb.G = true;
      return this;
    }
    
    public a setNegativeButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.l = localb.a.getText(paramInt);
      this.P.n = paramOnClickListener;
      return this;
    }
    
    public a setNegativeButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.l = paramCharSequence;
      localb.n = paramOnClickListener;
      return this;
    }
    
    public a setNegativeButtonIcon(Drawable paramDrawable)
    {
      this.P.m = paramDrawable;
      return this;
    }
    
    public a setNeutralButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.o = localb.a.getText(paramInt);
      this.P.q = paramOnClickListener;
      return this;
    }
    
    public a setNeutralButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.o = paramCharSequence;
      localb.q = paramOnClickListener;
      return this;
    }
    
    public a setNeutralButtonIcon(Drawable paramDrawable)
    {
      this.P.p = paramDrawable;
      return this;
    }
    
    public a setOnCancelListener(DialogInterface.OnCancelListener paramOnCancelListener)
    {
      this.P.s = paramOnCancelListener;
      return this;
    }
    
    public a setOnDismissListener(DialogInterface.OnDismissListener paramOnDismissListener)
    {
      this.P.t = paramOnDismissListener;
      return this;
    }
    
    public a setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
    {
      this.P.O = paramOnItemSelectedListener;
      return this;
    }
    
    public a setOnKeyListener(DialogInterface.OnKeyListener paramOnKeyListener)
    {
      this.P.u = paramOnKeyListener;
      return this;
    }
    
    public a setPositiveButton(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.i = localb.a.getText(paramInt);
      this.P.k = paramOnClickListener;
      return this;
    }
    
    public a setPositiveButton(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.i = paramCharSequence;
      localb.k = paramOnClickListener;
      return this;
    }
    
    public a setPositiveButtonIcon(Drawable paramDrawable)
    {
      this.P.j = paramDrawable;
      return this;
    }
    
    public a setRecycleOnMeasureEnabled(boolean paramBoolean)
    {
      this.P.Q = paramBoolean;
      return this;
    }
    
    public a setSingleChoiceItems(int paramInt1, int paramInt2, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = localb.a.getResources().getTextArray(paramInt1);
      localb = this.P;
      localb.x = paramOnClickListener;
      localb.I = paramInt2;
      localb.H = true;
      return this;
    }
    
    public a setSingleChoiceItems(Cursor paramCursor, int paramInt, String paramString, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.K = paramCursor;
      localb.x = paramOnClickListener;
      localb.I = paramInt;
      localb.L = paramString;
      localb.H = true;
      return this;
    }
    
    public a setSingleChoiceItems(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.w = paramListAdapter;
      localb.x = paramOnClickListener;
      localb.I = paramInt;
      localb.H = true;
      return this;
    }
    
    public a setSingleChoiceItems(CharSequence[] paramArrayOfCharSequence, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      AlertController.b localb = this.P;
      localb.v = paramArrayOfCharSequence;
      localb.x = paramOnClickListener;
      localb.I = paramInt;
      localb.H = true;
      return this;
    }
    
    public a setTitle(int paramInt)
    {
      AlertController.b localb = this.P;
      localb.f = localb.a.getText(paramInt);
      return this;
    }
    
    public a setTitle(CharSequence paramCharSequence)
    {
      this.P.f = paramCharSequence;
      return this;
    }
    
    public a setView(int paramInt)
    {
      AlertController.b localb = this.P;
      localb.z = null;
      localb.y = paramInt;
      localb.E = false;
      return this;
    }
    
    public a setView(View paramView)
    {
      AlertController.b localb = this.P;
      localb.z = paramView;
      localb.y = 0;
      localb.E = false;
      return this;
    }
    
    @Deprecated
    public a setView(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      AlertController.b localb = this.P;
      localb.z = paramView;
      localb.y = 0;
      localb.E = true;
      localb.A = paramInt1;
      localb.B = paramInt2;
      localb.C = paramInt3;
      localb.D = paramInt4;
      return this;
    }
    
    public c show()
    {
      c localc = create();
      localc.show();
      return localc;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.app.c
 * JD-Core Version:    0.7.0.1
 */