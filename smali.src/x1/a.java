package x1;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.g;
import miuix.androidbasewidget.widget.StateEditText;

public abstract class a
  extends ViewDataBinding
{
  public final TextView a;
  public final TextView b;
  public final StateEditText c;
  public final StateEditText d;
  public final StateEditText e;
  protected n4.a f;
  
  protected a(Object paramObject, View paramView, int paramInt, TextView paramTextView1, TextView paramTextView2, StateEditText paramStateEditText1, StateEditText paramStateEditText2, StateEditText paramStateEditText3)
  {
    super(paramObject, paramView, paramInt);
    this.a = paramTextView1;
    this.b = paramTextView2;
    this.c = paramStateEditText1;
    this.d = paramStateEditText2;
    this.e = paramStateEditText3;
  }
  
  public static a a(LayoutInflater paramLayoutInflater)
  {
    return b(paramLayoutInflater, g.d());
  }
  
  @Deprecated
  public static a b(LayoutInflater paramLayoutInflater, Object paramObject)
  {
    return (a)ViewDataBinding.inflateInternal(paramLayoutInflater, 2131558440, null, false, paramObject);
  }
  
  public abstract void c(n4.a parama);
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     x1.a
 * JD-Core Version:    0.7.0.1
 */